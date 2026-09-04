--[[
-----------------------------------------------------
@filename       : PermitPanel
@Description    : 通行证
@date           : 2023-3-28 15:59:00
@Author         : Shuai
@copyright      : (LY) 2023 雷焰网络
-----------------------------------------------------
]]
module("permit.PermitPanel", Class.impl(TabSubView))

UIRes = UrlManager:getUIPrefabPath("permit/PermitPanel.prefab")
--构造函数
function ctor(self)
    super.ctor(self)
    --self:setSize(750, 600)
    --self:setTxtTitle("通行证")--通行证
    --self:setBg("permit_bg1.jpg", true, "permit")
end
-- 初始化数据
function initData(self)
    super.initData(self)
    --阶段奖励道具列表
    self.mCurIndex = 0
    self.mPropsList = {}
    self.mIndexItemDic={}
    self.mBraceletItemDic={}
    self.mCurBraceletIndex = 1
    self.mTweenSn = nil
    self.mTimeCallSn = nil
end

function configUI(self)
    super.configUI(self)
    self.mBtnBuy = self:getChildGO("mBtnBuy")
    self.mBtnTask = self:getChildGO("mBtnTask")
    self.mImgUnlock = self:getChildGO("mImgUnlock")
    self.mBtnActive = self:getChildGO("mBtnActive")
    self.mBtnOneKey = self:getChildGO("mBtnOneKey")
    self.mIndexItem = self:getChildGO("mIndexItem")
    self.mScrollView = self:getChildGO("mScrollView")
    self.mEffectNode = self:getChildGO("mEffectNode")
    self.mIndexTrans = self:getChildTrans("mIndexTrans")
    self.mBraceletItem = self:getChildGO("mBraceletItem")
    self.mBraceletTrans = self:getChildTrans("mBraceletTrans")
    self.mBtnShowBracelet = self:getChildGO("mBtnShowBracelet")
    self.mTansStageMoney = self:getChildTrans("mTansStageMoney")
    self.mTansStageNomal = self:getChildTrans("mTansStageNomal")
    self.mTxtExUL = self:getChildGO("mTxtExUL"):GetComponent(ty.Text)
    self.mTxtTime = self:getChildGO("mTxtTime"):GetComponent(ty.Text)
    self.mTxtExDsc = self:getChildGO("mTxtExDsc"):GetComponent(ty.Text)
    self.mTxtNomal = self:getChildGO("mTxtNomal"):GetComponent(ty.Text)
    self.mTxtMoney = self:getChildGO("mTxtMoney"):GetComponent(ty.Text)
    self.mTxtShowAll = self:getChildGO("mTxtShowAll"):GetComponent(ty.Text)
    self.mTxtNextNum = self:getChildGO("mTxtNextNum"):GetComponent(ty.Text)
    self.mTxtPermitLv = self:getChildGO("mTxtPermitLv"):GetComponent(ty.Text)
    self.mProgressBar = self:getChildGO("mProgressBar"):GetComponent(ty.Image)
    self.mScrollRect = self:getChildGO("mLyScroller"):GetComponent(ty.ScrollRect)
    self.mLyScroller = self:getChildGO("mLyScroller"):GetComponent(ty.LyScroller)
    self.mTxtShowProgress = self:getChildGO("mTxtShowProgress"):GetComponent(ty.Text)
    self.mScrollEvent = self.mScrollView:GetComponent(ty.LongPressOrClickEventTrigger)
    self.mTxtBraceletDes = self:getChildTrans("mTxtBraceletDes"):GetComponent(ty.Text)
    self.mTxtBraceletName = self:getChildTrans("mTxtBraceletName"):GetComponent(ty.Text)
    self.mBraceletHorizontal = self:getChildGO("mBraceletTrans"):GetComponent(ty.HorizontalLayoutGroup)
    self.mLyScroller:SetItemRender(permit.PermitItem)
end

function active(self, args)
    super.active(self, args)
    MoneyManager:setMoneyTidList({})
    GameDispatcher:addEventListener(EventName.UPDATE_PERMIT_LV, self.updateState, self)
    GameDispatcher:addEventListener(EventName.UPDATE_PERMIT_PANEL, self.updateView, self)
    GameDispatcher:addEventListener(EventName.UPDATE_PERMIT_RECIVE, self.updateState, self)
    self:updateView()
    self:updateTime()
    self:addTimer(1, 0, self.updateTime)
    self.mLyScroller:SetItemIndex(permit.PermitManager:getPermitIndex(), 0, 0, 0.1)

    local count = #permit.PermitManager:getPermitList() / 10
    local update = function(pos)
        local posX = math.abs(self.mScrollRect.content.transform.anchoredPosition.x) + self.mScrollRect.gameObject.transform.rect.width
        local width = self.mScrollRect.content.rect.width
        local curIndex = 10
        local stageWidth = (width / count)
        for i = 0, count do
            local stageWidthL = stageWidth * i
            local stageWidthR = (i <= count - 1) and ((i + 1) * stageWidth) or width
            if posX >= stageWidthL then
                curIndex = (i <= count - 1) and ((i + 1) * 10) or (i * 10)
            end
        end
        if self.mCurIndex ~= curIndex then
            self.mCurIndex = curIndex
            local stageVo = permit.PermitManager:getPermitList()[curIndex]
            self:updateStageInfo(stageVo)
        end
    end
    self.mScrollRect.onValueChanged:AddListener(update)
    self:InitBraceletInfo()
end

function deActive(self)
    super.deActive(self)
    MoneyManager:setMoneyTidList()
    GameDispatcher:removeEventListener(EventName.UPDATE_PERMIT_LV, self.updateState, self)
    GameDispatcher:removeEventListener(EventName.UPDATE_PERMIT_PANEL, self.updateView, self)
    GameDispatcher:removeEventListener(EventName.UPDATE_PERMIT_RECIVE, self.updateState, self)
    if self.mLyScroller then
        self.mLyScroller:CleanAllItem()
    end
    self.mScrollEvent.onBeginDrag:RemoveAllListeners()
    self.mScrollEvent.onDrag:RemoveAllListeners()
    self.mScrollEvent.onEndDrag:RemoveAllListeners()
    self.mScrollRect.onValueChanged:RemoveAllListeners()
    RedPointManager:remove(self.mBtnOneKey.transform)
    self:closeAllProps()
    self:clearBraceletItem()
    self:clearAllTweenHandler()
end

--[[
    初始化界面的静态文本，图片字
    每次打开界面都会重新读取，多语言切换时可以及时更新
]]
function initViewText(self)
    self.mTxtNomal.text = _TT(10000177)--"基礎許可"
    self.mTxtMoney.text = _TT(10000178)--"高級許可"
    self.mTxtExDsc.text = _TT(1000081019)--"周经验上限"
    self:setBtnLabel(self.mBtnBuy, 98103, "购买等级")
    self:setBtnLabel(self.mBtnTask, 1000081015, "通行任务")
    self:setBtnLabel(self.mBtnOneKey, 1176, "一键领取")
    self.mTxtBraceletDes.text=_TT(1000081026)
    self.mTxtShowAll.text=_TT(1000081027)
    self:setBtnLabel(self.mBtnActive, nil, sdk.ChannelData:checkChannelText(_TT(1000081018)))
    self:getChildGO("mTxtImgCurBgNormal"):GetComponent(ty.Text).text = _TT(10000199)
    self:getChildGO("mTxtImgCurBgHigh"):GetComponent(ty.Text).text = _TT(10000200)
end
-- UI事件管理(关闭界面会自动移除)
function addAllUIEvent(self)
    self:addUIEvent(self.mBtnActive, self.onClickBuyHandler)
    self:addUIEvent(self.mBtnBuy, self.onClickTopHandler, nil, true)
    self:addUIEvent(self.mBtnTask, self.onClickTopHandler, nil, false)
    self:addUIEvent(self.mBtnOneKey, self.onClickOneKeyReciveHandler)
    self:addUIEvent(self.mBtnShowBracelet, self.onClickShowSkinHandler)
end

function onClickShowSkinHandler(self)
    local vo = props.PropsManager:getPropsConfigVo(sysParam.SysParamManager:getValue(SysParamType.SSR_OPTIONAL_BRACELET_GIFT))
    local showList=AwardPackManager:getAwardListById(vo.effectList[1])
    GameDispatcher:dispatchEvent(EventName.OPEN_PERMIT_BRACEKET_SHOW_VIEW,{list=showList})
end

function InitBraceletInfo(self)
    self:clearBraceletItem()
    local vo = props.PropsManager:getPropsConfigVo(sysParam.SysParamManager:getValue(SysParamType.SSR_OPTIONAL_BRACELET_GIFT))
    local showList=AwardPackManager:getAwardListById(vo.effectList[1])
    for i, v in ipairs(showList) do
        local propsVo=props.PropsManager:getPropsConfigVo(v.tid)
        local mIdnexItem = SimpleInsItem:create(self.mIndexItem,self.mIndexTrans,"mIndexItem")
        local mItem = SimpleInsItem:create(self.mBraceletItem,self.mBraceletTrans,"mBraceletItem")
        mItem:getChildGO("mIconBracelet"):GetComponent(ty.AutoRefImage):SetImg(UrlManager:getPropsIconUrl(v.tid),true)
        mItem:setArgs(propsVo)
        mIdnexItem:getChildGO("mImgSelect"):SetActive(false)
        self.mBraceletItemDic[i]=mItem
        self.mIndexItemDic[i]=mIdnexItem
    end
    local update=function ()
        local curShowIndex=self:updateindex()
        if self.mCurBraceletIndex~=curShowIndex then
            self.mCurBraceletIndex=curShowIndex
            self:updateIndexState()
        end
    end
    local endDrag=function ()
        self:tweenTargetByIndex(self.mCurBraceletIndex)
        self:tweenAutoHandle(#showList)
    end
    local beginDrag=function ()
        self:clearAllTweenHandler()
    end
    
    self.mScrollEvent.onBeginDrag:AddListener(beginDrag)
    self.mScrollEvent.onDrag:AddListener(update)
    self.mScrollEvent.onEndDrag:AddListener(endDrag)
    self:updateIndexState()
    self:tweenAutoHandle(#showList)
end

function tweenAutoHandle(self,length)
    if not self.mTimeCallSn then
        self.mTimeCallSn = LoopManager:addTimer(3,0,self,function ()
            self.mCurBraceletIndex = self.mCurBraceletIndex+1
            self.mCurBraceletIndex = self.mCurBraceletIndex<=length and self.mCurBraceletIndex or 1 
            self:tweenTargetByIndex(self.mCurBraceletIndex)
            self:updateIndexState()
        end)
    end
end

function clearAllTweenHandler(self)
    if (self.mTweenSn) then
        self.mTweenSn:Kill()
        self.mTweenSn = nil
    end
    if self.mTimeCallSn then
        LoopManager:removeTimerByIndex(self.mTimeCallSn)
        self.mTimeCallSn=nil
    end
end

function tweenTargetByIndex(self,curIndex)
    if not self.mTweenSn then
        if table.nums(self.mBraceletItemDic)>0 and self.mBraceletItemDic[curIndex] then
            local targetPos=(self.mBraceletItemDic[curIndex]:getTrans().rect.width+self.mBraceletHorizontal.spacing)/2-self.mBraceletItemDic[curIndex]:getTrans().anchoredPosition.x
            self.mTweenSn = TweenFactory:move2LPosX(self.mBraceletTrans, targetPos, 0.15, gs.DT.Ease.Linear, 
            function()
                if (self.mTweenSn) then
                    self.mTweenSn:Kill()
                    self.mTweenSn = nil
                end
            end)
        end
    end
end


function updateIndexState(self)
    if table.nums(self.mIndexItemDic)>0 then
        for i, item in pairs(self.mIndexItemDic) do
            item:getChildGO("mImgSelect"):SetActive(i==self.mCurBraceletIndex)
        end
    end
    if table.nums(self.mBraceletItemDic)>0 then
        self.mTxtBraceletName.text=self.mBraceletItemDic[self.mCurBraceletIndex]:getArgs().name
    end
end

function updateindex(self)
    for i, item in ipairs(self.mBraceletItemDic) do
        local curPos=math.abs(self.mBraceletTrans.anchoredPosition.x)
        local rectWidth=item:getTrans().rect.width+self.mBraceletHorizontal.spacing
        if curPos>=item:getTrans().anchoredPosition.x-(rectWidth) and curPos<=item:getTrans().anchoredPosition.x then
            return i
        end
    end
    return self.mCurBraceletIndex
end

function clearBraceletItem(self)
    if table.nums(self.mBraceletItemDic)>0 then
        for k, item in pairs(self.mBraceletItemDic) do
            item:poolRecover()
            item=nil
        end
    end
    self.mBraceletItemDic={}
    if table.nums(self.mIndexItemDic)>0 then
        for k, item in pairs(self.mIndexItemDic) do
            item:poolRecover()
            item=nil
        end
    end
    self.mIndexItemDic={}
end

function updateView(self)
    self.mBtnActive:SetActive(permit.PermitManager:getIsBuyPermit(-1)~= true)
    local list = permit.PermitManager:getPermitList()
    if self.mLyScroller.Count <= 0 then
        self.mLyScroller.DataProvider = list
    else
        self.mLyScroller:ReplaceAllDataProvider(list)
    end
    self:updateState()
end
function closeAllProps(self)
    if self.mPropsList then
        for _, item in ipairs(self.mPropsList) do
            item:poolRecover()
        end
        self.mPropsList = {}
    end
end

function onClickTopHandler(self, isBuy)
    if isBuy then
        if permit.PermitManager:getPermitedLv() >= #permit.PermitManager:getPermitList() then
            gs.Message.Show(_TT(1000081020))
            return
        end
        GameDispatcher:dispatchEvent(EventName.OPEN_PERMIT_BUY_VIEW, {})
    else
        GameDispatcher:dispatchEvent(EventName.OPEN_LINK_UI, {linkId = LinkCode.Task})
    end
end

function onClickBuyHandler(self)
    if permit.PermitManager:getIsBuyPermit(-1) then
        gs.Message.Show(_TT(1000081021))
        return
    end
    recharge.sendRecharge(recharge.RechargeType.TONG_XING_ZHENG, nil, "1")
end

function getRechargeVo(self, detailId)
    local rechargeVo = recharge.RechargeManager:getRechargeVoByDetail(recharge.RechargeType.TONG_XING_ZHENG, nil, detailId)
    if rechargeVo then
        return rechargeVo
    end
    return _TT(1000081022)--"无对应充值数据"
end

function onClickOneKeyReciveHandler(self)
    GameDispatcher:dispatchEvent(EventName.ONE_KEY_RECIVER, {})
end

function updateState(self)
    self.mBtnBuy:GetComponent(ty.AutoRefImage):SetGray(#permit.PermitManager:getPermitList() <= permit.PermitManager:getPermitedLv())
    self.mEffectNode:SetActive(#permit.PermitManager:getPermitList() > permit.PermitManager:getPermitedLv())
    local msgVo = permit.PermitManager:getPermitedMsgVo()
    local curStageVo = permit.PermitManager:getCurPermitStageData()
    self:updateStageInfo(curStageVo)
    self.mTxtPermitLv.text = HtmlUtil:size(permit.PermitManager:getPermitedLv(), 44)
    if msgVo then
        self.mTxtExUL.text = _TT(45013, msgVo.week_exp, sysParam.SysParamManager:getValue(SysParamType.PERMIT_UP_LIMIT_EXP))
        local difValue = msgVo.exp / curStageVo.needExp
        self.mProgressBar.fillAmount = difValue
        self.mTxtShowProgress.text = _TT(45013, msgVo.exp, curStageVo.needExp)
    end
    self.mImgUnlock:SetActive((not permit.PermitManager:getIsBuyPermit(-1)))
    self.mBtnOneKey:SetActive(permit.PermitManager:getCanReciveNum() >= 1)
    if permit.PermitManager:getCanReciveNum() >= 1 then
        RedPointManager:add(self.mBtnOneKey.transform, nil, 124.5, 30)
    else
        RedPointManager:remove(self.mBtnOneKey.transform)
    end
end

function updateStageInfo(self, curStageVo)
    self:closeAllProps()
    for _, propVo in ipairs(curStageVo:getNoamlAwardList()) do
        local propGrid = PropsGrid:create(self.mTansStageNomal, {tid = propVo.tid, num = propVo.num ~= nil and propVo.num or 1}, 0.7, false)
        propGrid:setHasRec(curStageVo:getIsNomalRecived() and curStageVo:getIsUnlock())
        table.insert(self.mPropsList, propGrid)
    end
    if #curStageVo:getSeniorAwardList() > 1 then
        gs.TransQuick:Scale0(self.mTansStageMoney, 0.5)
    else
        gs.TransQuick:Scale0(self.mTansStageMoney, 0.7)
    end
    for _, propVo1 in ipairs(curStageVo:getSeniorAwardList()) do
        local propGrid1 = PropsGrid:create(self.mTansStageMoney, {tid = propVo1.tid, num = propVo1.num ~= nil and propVo1.num or 1}, 1, false)
        propGrid1:setIconGray((not curStageVo:getIsBuy()))
        propGrid1:setHasRec(curStageVo:getIsSeniorRecived() and curStageVo:getIsUnlock())
        table.insert(self.mPropsList, propGrid1)
    end
    self.mTxtNextNum.text = curStageVo.lv
end

function updateTime(self)
    if activity.ActivityManager:getActivityVoById(activity.ActivityId.Permit) then
        local clientTime = GameManager:getClientTime()
        local RemainingTime = activity.ActivityManager:getActivityVoById(activity.ActivityId.Permit):getEndTime() - clientTime
        local timeTxt = RemainingTime <= 0 and _TT(95053) or _TT(3530) .. HtmlUtil:colorAndSize(TimeUtil.getFormatTimeBySeconds_9(RemainingTime), "ffffffff", 18)
        self.mTxtTime.text = timeTxt
        if RemainingTime <= 0 then
            self:removeTimer(self.updateTime)
            return
        end
    end
end

return _M

--[[ 替换语言包自动生成，请勿修改！
]]
