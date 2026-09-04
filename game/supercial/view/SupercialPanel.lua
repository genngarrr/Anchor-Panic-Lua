-- 海底主界面
module("supercial.SupercialPanel", Class.impl(View))

-- 对应的ui文件
UIRes = UrlManager:getUIPrefabPath("supercial/SupercialPanel.prefab")

destroyTime = 0 -- 自动销毁时间-1默认 0即时销毁 999不销毁
panelType = -1 -- 窗口类型 1 全屏 2 弹窗 -1无底图弹窗

-- 构造函数
function ctor(self)
    super.ctor(self)
end

-- 初始化数据
function initData(self)
    super.initData(self)

    self.mRewardItems = {}
    self.mPropsItems = {}
end

-- 初始化
function configUI(self)
    super.configUI(self)

    self.mBtnClose = self:getChildGO("mBtnClose")

    self.mTxtTips = self:getChildGO("mTxtTips"):GetComponent(ty.Text)
    self.mTxtPower = self:getChildGO("mTxtPower"):GetComponent(ty.Text)

    self.mTxtRemTime = self:getChildGO("mTxtRemTime"):GetComponent(ty.Text)
    self.mSupercialScroll = self:getChildGO("mSupercialScroll"):GetComponent(ty.ScrollRect)

    self.mRewardItem = self:getChildGO("mRewardItem")
end

-- 激活
function active(self, args)
    super.active(self, args)
    GameDispatcher:addEventListener(EventName.UPDATE_SUPERCIAL_PANEL, self.showPanel, self)
    self:showPanel()
end

-- 反激活（销毁工作）
function deActive(self)
    super.deActive(self)
    GameDispatcher:removeEventListener(EventName.UPDATE_SUPERCIAL_PANEL, self.showPanel, self)
    self:clearPropsItems()
    self:clearRewardItems()

    if self.updateTimeSn then
        LoopManager:removeTimerByIndex(self.updateTimeSn)
        self.updateTimeSn = nil
    end
end

function initViewText(self)
    self.mTxtPower.text = _TT(138002)
    self.mTxtTips.text = _TT(138003)
end

-- UI事件管理(关闭界面会自动移除)
function addAllUIEvent(self)
    self:addUIEvent(self.mBtnClose, self.close)
end

function showPanel(self)
    local prefixVersion =
    download.ResDownLoadManager:getServerVersionValue(gs.AssetSetting.PrefixVersionKey)
    if not StorageUtil:getBool1(prefixVersion .. "supercial") then
        StorageUtil:saveBool1(prefixVersion .. "supercial", true)
        supercial.SupercialManager:updateRed()
    end


    local voList = supercial.SupercialManager:getSupercialData()

    local maxId = supercial.SupercialManager:getCurMaxId()

  

    self:clearPropsItems()
    self:clearRewardItems()

    for i = 1, #voList do
        local item = SimpleInsItem:create(self.mRewardItem, self.mSupercialScroll.content, "mSupercialItem")
        item:getChildGO("mTxtRewardTitle"):GetComponent(ty.Text).text = _TT(138004) .. i

        item:getChildGO("mImgArrow"):SetActive(i < #voList)
        item:getChildGO("mIsCur"):SetActive(i == maxId)

        local isPass = supercial.SupercialManager:getSupercialIsBuy(voList[i].id)
        item:getChildGO("mBtnGeted"):SetActive(isPass)

        local isLock = i > maxId
        item:getChildGO("mIsLock"):SetActive(isLock)

        item:getChildGO("mTxtGeted"):GetComponent(ty.Text).text = _TT(411)
        item:getChildGO("mTxtCur"):GetComponent(ty.Text).text = _TT(72101)

        local isRmb = voList[i].price > 0

        item.m_go:GetComponent(ty.AutoRefImage):SetImg(UrlManager:getPackPath("supercial/supercial_type"..voList[i].type..".png",false))

        item:getChildGO("mBtnGet"):GetComponent(ty.AutoRefImage):SetImg(isRmb and 
                                                                              UrlManager:getPackPath(
                "supercial/btn_2.png") or UrlManager:getPackPath("supercial/btn_1.png"))

        item:getChildGO("mTxtInfo"):GetComponent(ty.Text).color =
        isRmb and gs.ColorUtil.GetColor("FFFFFFFF") or gs.ColorUtil.GetColor("202226ff")

        item:getChildGO("mIsLock"):GetComponent(ty.Image).color =
            isRmb and gs.ColorUtil.GetColor("FFFFFFFF") or gs.ColorUtil.GetColor("202226ff")

        if isRmb then
            local priceStr = _TT(50011, voList[i].price / 100)
            priceStr = sdk.ChannelData:checkChannelText(priceStr)
            item:getChildGO("mTxtInfo"):GetComponent(ty.Text).text = priceStr
        else
            item:getChildGO("mTxtInfo"):GetComponent(ty.Text).text = _TT(151)
        end

        local propsList = AwardPackManager:getAwardListById(voList[i].showDropid)
        if not voList[i].showDropid or not propsList or next(propsList) == nil then
            logError(string.format("防呆：检查下掉落包, id: %s, 掉落包配的%s", i, tostring(voList[i].showDropid)))
        end
        if #propsList < 2 then
            for k, v in pairs(propsList) do
                local propsGrid = PropsGrid:createByData({
                    tid = v.tid,
                    num = v.num,
                    parent = item:getChildTrans("mPropContent"),
                    scale = 0.85,
                    showUseInTip = true
                })
                table.insert(self.mPropsItems, propsGrid)
            end
        else
            for i = 1, #propsList do
                local propsGrid = PropsGrid:createByData({
                    tid = propsList[i].tid,
                    num = propsList[i].num,
                    parent = item:getChildTrans("pos" .. i),
                    scale = 0.85,
                    showUseInTip = true
                })
                table.insert(self.mPropsItems, propsGrid)
            end
        end

        item:addUIEvent("mBtnGet", function()
            if maxId < voList[i].id then
                gs.Message.Show( _TT(138005))
                return
            end

            if voList[i].price > 0 then
                recharge.sendRecharge(recharge.RechargeType.SUPERCIAL, nil, voList[i].id)
            else
                GameDispatcher:dispatchEvent(EventName.REQ_GET_SUPERCIAL_AWARD, {
                    id = voList[i].id
                })
            end
        end)

        local redTran = item:getChildTrans("mBtnGet")

        item:getChildGO("mEffGlow"):SetActive(false)
        if supercial.SupercialManager:getIdIsRed(voList[i].id) and maxId == voList[i].id then
            item:getChildGO("mEffGlow"):SetActive(true)
            RedPointManager:add(redTran, nil, 96, 14)
        else
            RedPointManager:remove(redTran, nil, 0, 0)
        end

        item:addUIEvent("mBtnGeted", function()
            gs.Message.Show(_TT(411))
        end)

        -- mTxtInfo
        table.insert(self.mRewardItems, item)
    end
    gs.LayoutRebuilder.ForceRebuildLayoutImmediate(self.mSupercialScroll.content)
    
    if (#voList - maxId) < 2 then
        gs.TransQuick:UIPosX(self.mSupercialScroll.content, - self.mSupercialScroll.content.sizeDelta.x)
    elseif maxId > 2 then
        gs.TransQuick:UIPosX(self.mSupercialScroll.content, -293 * (maxId - 2))
    else
        gs.TransQuick:UIPosX(self.mSupercialScroll.content, 0)
    end
    if self.updateTimeSn then
        LoopManager:removeTimerByIndex(self.updateTimeSn)
        self.updateTimeSn = nil
    end

    self:updateTime()
    self.updateTimeSn = LoopManager:addTimer(1,0,self,self.updateTime)
end

function updateTime(self)
    if activity.ActivityManager:getActivityVoById(activity.ActivityId.Supercial) then
        local clientTime = GameManager:getClientTime()
        local remainingTime = activity.ActivityManager:getActivityVoById(activity.ActivityId.Supercial)
        :getEndTime() - clientTime
        local timeTxt = remainingTime <= 0 and _TT(95053) or _TT(3530) ..
            HtmlUtil:colorAndSize(TimeUtil.getFormatTimeBySeconds_9(remainingTime), "FFFFFFFF", 22)
        self.mTxtRemTime.text = timeTxt

        if remainingTime <= 0 then
            LoopManager:removeTimerByIndex(self.updateTimeSn)
            self.updateTimeSn = nil
            self:close()
            return
        end
    end
end

function clearPropsItems(self)
    for i = 1, #self.mPropsItems do
        self.mPropsItems[i]:poolRecover()
    end
    self.mPropsItems = {}
end

function clearRewardItems(self)
    for i = 1, #self.mRewardItems do
        self.mRewardItems[i]:poolRecover()
    end
    self.mRewardItems = {}
end

return _M
