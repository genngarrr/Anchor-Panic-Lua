module('hero.HeroEquipRemoldPlanView', Class.impl(View))

UIRes = UrlManager:getUIPrefabPath('hero/HeroEquipRemoldPlanView.prefab')
destroyTime = -1 -- 自动销毁时间-1默认
isShow3DBg = 1
--构造函数
function ctor(self)
    super.ctor(self)
    self:setSize(750, 600)
    self:setTxtTitle(_TT(10000294))
    -- self:setUICode(LinkCode.PvpArenaHell)
end

-- 初始化数据
function initData(self)
    super.initData(self)
    self.mCurPos = 0
    self.mEquipVo = nil
    self.mNeedItemNum = 0
    self.mCostMoneyNum = 0
    self.mGroupItemDic = {}
    self.mCostItemTid = nil
    self.mCostMoneyTid = nil
    self.mCurEquipRemakeVo = {}
    self.mMainGroupInfoDic = {}
    self.mGroupLitleItemDic = {}
    self.mRemoldCancelKey = "RemoldCancelTip"
end

function configUI(self)
    self.mBtnGoto = self:getChildGO("mBtnGoto")
    self.mImgEmpty = self:getChildGO("mImgEmpty")
    self.mGroupItem = self:getChildGO("mGroupItem")
    self.mBtnRemold = self:getChildGO("mBtnRemold")
    self.mGroupEffect = self:getChildGO("mGroupEffect")
    self.mGroupTrans = self:getChildTrans("mGroupTrans")
    self.mBtnAllCancel = self:getChildGO("mBtnAllCancel")
    self.mGroupSelect = self:getChildTrans("mGroupSelect")
    self.mGroupEffectTrans = self:getChildTrans("mGroupEffectTrans")
    self.mTxtRole = self:getChildGO("mTxtRole"):GetComponent(ty.Text)
    self.mTxtCost = self:getChildGO("mTxtCost"):GetComponent(ty.Text)
    self.mTxtMiddleEmpty = self:getChildGO("mTxtMiddleEmpty"):GetComponent(ty.Text)
    self.mTxtTitle = self:getChildGO("mTxtTitle"):GetComponent(ty.Text)
    self.mTxtCostDes = self:getChildGO("mTxtCostDes"):GetComponent(ty.Text)
    self.mImgCost = self:getChildGO("mImgCost"):GetComponent(ty.AutoRefImage)
    self.mTxtCurEffect = self:getChildGO("mTxtCurEffect"):GetComponent(ty.Text)
    self.mCancelToggle = self:getChildGO("mCancelToggle"):GetComponent(ty.Toggle)
    self.mCancelToggleText = self:getChildGO("mCancelToggleText"):GetComponent(ty.Text)
end

function active(self, args)
    super.active(self, args)
    MoneyManager:setMoneyTidList({MoneyTid.GOLD_COIN_TID})
    bag.BagManager:addEventListener(bag.BagManager.BAG_UPDATE, self.updateShow, self)
    self.mCurPos = args.curPos
    self.mEquipVo = equipBuild.EquipStrengthenManager:getOpenEquipVo()
    self:updateShow()
    local function onToggle()
        self:toggleChange()
    end
    self.mCancelToggle.onValueChanged:AddListener(onToggle)
    self.mCancelToggle.isOn = StorageUtil:getString0(self.mRemoldCancelKey) == "1"
end

function deActive(self)
    super.deActive(self)
    MoneyManager:setMoneyTidList({})
    bag.BagManager:removeEventListener(bag.BagManager.BAG_UPDATE, self.updateShow, self)
    self:onDestoryItem()
    self.mCurEquipRemakeVo = {}
    self.mCancelToggle.onValueChanged:RemoveAllListeners()
end

function initViewText(self)
    self.mTxtRole.text = _TT(100004394)--"每次生成改造結果會隨機産生2條技能 暫存結果已滿，則需先清理原有結果才可繼續改造"
    self.mTxtTitle.text = _TT(4391)
    self.mTxtCurEffect.text = _TT(29534)
    self.mTxtMiddleEmpty.text = "-".._TT(1000071529) .. "-"--"暫無改造效果-"
    self.mTxtCostDes.text = _TT(4349)--"消耗"
    self:setBtnLabel(self.mBtnGoto, 26408, "前往獲取")
    self:setBtnLabel(self.mBtnRemold, 4008, "改造")
    self:setBtnLabel(self.mBtnAllCancel, 100004395, "全部丟棄")
    self.mCancelToggleText.text = _TT(10000151)
end

function addAllUIEvent(self)
    self:addUIEvent(self.mBtnGoto, self.onClickGotoHandler)
    self:addUIEvent(self.mBtnRemold, self.onClickRemoldHandler)
    self:addUIEvent(self.mBtnAllCancel, self.onClickAllCancelHandler)
end

-- 多倍挑战选择
function toggleChange(self)
    StorageUtil:saveString0(self.mRemoldCancelKey, (self.mCancelToggle.isOn and "1" or "0"))
end

-- 移除
function destroy(self, isAuto)
    super.destroy(self, isAuto)
end

--前往获取
function onClickGotoHandler(self)
    GameDispatcher:dispatchEvent(EventName.OPEN_BAG_BREAK_VIEW, {tabType = 2, suitId = nil})
end

--改造
function onClickRemoldHandler(self)
    local dataVo = bag.BagManager:getPropsVoById(equipBuild.EquipStrengthenManager:getOpenEquipVo().id)
    local slotInfo = equipBuild.EquipRemakeManager:getEmpowerSlotInfoByPos(dataVo, self.mCurPos)
    if slotInfo and #slotInfo.temp_empower_list >= 4 then
        gs.Message.Show(_TT(10000163))
        return
    end
    local isEnough, _ = MoneyUtil.judgeNeedMoneyCountByTid(self.mCostMoneyTid, self.mCostMoneyNum, false, true)
    if not isEnough then
        return
    elseif (bag.BagManager:getPropsCountByTid(self.mCostItemTid) < self.mNeedItemNum) then
        gs.Message.Show(_TT(76019))
        return
    end
    GameDispatcher:dispatchEvent(EventName.REQ_EQUIP_REMAKE_ADD, {equipId = self.mEquipVo.id, slotId = self.mCurPos})
end

-- 全部丢弃
function onClickAllCancelHandler(self)
    local dataVo = bag.BagManager:getPropsVoById(equipBuild.EquipStrengthenManager:getOpenEquipVo().id)
    local slotInfo = equipBuild.EquipRemakeManager:getEmpowerSlotInfoByPos(dataVo, self.mCurPos)
    if slotInfo and #slotInfo.temp_empower_list <= 0 then
        gs.Message.Show(_TT(10000162))
        return
    end
    if not self.mCancelToggle.isOn then
        UIFactory:alertMessge(_TT(1000071531), true, function()
            GameDispatcher:dispatchEvent(EventName.REQ_EQUIP_DEL_EMPOWER, {equipId = self.mEquipVo.id, slotId = self.mCurPos, nth = 0})
        end, _TT(1), nil, true, nil, _TT(2), _TT(5), nil)
    else
        GameDispatcher:dispatchEvent(EventName.REQ_EQUIP_DEL_EMPOWER, {equipId = self.mEquipVo.id, slotId = self.mCurPos, nth = 0})
    end
end

function updateMainInfoShow(self, curData)
    if self.mCurEquipRemakeVo and self.mCurEquipRemakeVo == curData then
        return
    end
    self:onDestoryMainGroupInfoDic()
    self.mCurEquipRemakeVo = curData
    self.mImgEmpty:SetActive(curData == nil)
    local heroVo = hero.HeroManager:getHeroVo(self.mEquipVo.heroId)
    local activeList = equipBuild.EquipRemakeManager:getAlikeRemoldList(self.mEquipVo, heroVo)
    if curData then
        for i = 1, 2 do
            if not self.mMainGroupInfoDic[i] then
                self.mMainGroupInfoDic[i] = SimpleInsItem:create(self.mGroupEffect, self.mGroupEffectTrans, "EquipRemoldMainInfoItem"..i)
            end
            local item = self.mMainGroupInfoDic[i]
            local dataVo = hero.HeroEquipManager:getHeroEquipRemoldById(curData[i].key)
            local num = self:getCurLvByKey(activeList, curData[i].key)
            local curShowLv = num > dataVo:getMaxLv() and HtmlUtil:color(num, "fa3d2bff") or num
            item:getChildGO("mItemShow"):SetActive(true)
            item:getChildGO("mItemEmpty"):SetActive(false)
            item:getChildGO("mTxtCurLv"):GetComponent(ty.Text).text = _TT(4392, curShowLv, HtmlUtil:color("/"..dataVo:getMaxLv(), "404548ff"))
            item:getChildGO("mTxtDes"):GetComponent(ty.Text).text = string.replaceRichTextColor(dataVo:getDes(), "038008")
            item:getChildGO("mTxtEeffct"):GetComponent(ty.Text).text = dataVo:getName()
            item:getChildGO("mIconEffect"):GetComponent(ty.AutoRefImage):SetImg(dataVo:getIcon(), false)
        end
    end

    local curRemakeVo = equipBuild.EquipRemakeManager:getEquipRemakeVo(self.mEquipVo.tid)
    for index, value in ipairs(curRemakeVo:getCostList()) do
        self.mCostItemTid = value[1]
        self.mNeedItemNum = value[2]
        local hasCount = bag.BagManager:getPropsCountByTid(value[1])
        local grid = PropsGrid:createByData({tid = self.mCostItemTid, self.mNeedItemNum, parent = self.mGroupTrans, scale = 1})
        grid:setShowNum(hasCount, self.mNeedItemNum)
        self.mMainGroupInfoDic[index + 2] = grid
    end
    self.mCostMoneyTid = curRemakeVo:getPayId()
    self.mCostMoneyNum = curRemakeVo:getPayNum()
    local isEnough, _ = MoneyUtil.judgeNeedMoneyCountByTid(self.mCostMoneyTid, self.mCostMoneyNum, false, false)
    self.mTxtCost.color = isEnough and gs.ColorUtil.GetColor("FFFFFFFF") or gs.ColorUtil.GetColor("DF1E1EFF")
    self.mTxtCost.text = self.mCostMoneyNum
    self.mImgCost:SetImg(MoneyUtil.getMoneyIconUrlByTid(self.mCostMoneyTid), true)
end

function getCurLvByKey(self, list, key)
    for _, vo in ipairs(list) do
        if vo.key == key then
            return vo.num
        end
    end
    return 1
end

function updateShow(self)
    self:onDestoryLitleItem()
    local dataVo = bag.BagManager:getPropsVoById(equipBuild.EquipStrengthenManager:getOpenEquipVo().id)
    local slotInfo = equipBuild.EquipRemakeManager:getEmpowerSlotInfoByPos(dataVo, self.mCurPos)
    local attrData = slotInfo and slotInfo.active_list or nil
    self:updateMainInfoShow(attrData)
    for i = 1, 4 do
        if not self.mGroupItemDic[i] then
            self.mGroupItemDic[i] = SimpleInsItem:create(self.mGroupItem, self.mGroupSelect, "EquipRemoldItem"..i)
        end
        local item = self.mGroupItemDic[i]
        local curVo = slotInfo and slotInfo.temp_empower_list[i] or nil
        item:getChildGO("mGroupEffSelect"):SetActive(curVo ~= nil)
        item:getChildGO("mGroupEffEmpty"):SetActive(curVo == nil)
        item:getChildGO("mTxtEmpty"):GetComponent(ty.Text).text = "-".._TT(1000071529) .. "-"
        if curVo ~= nil then
            local heroVo = hero.HeroManager:getHeroVo(self.mEquipVo.heroId)
            local activeList = equipBuild.EquipRemakeManager:getAlikeRemoldList(self.mEquipVo, heroVo)
            local mBtnUsing = item:getChildGO("mBtnUsing")
            local mBtnRemove = item:getChildGO("mBtnRemove")
            item:setBtnLabel("mBtnUsing", 10000366)
            item:setBtnLabel("mBtnRemove", 10000367)
            item:addOnClick(mBtnRemove, function()
                if self.mCancelToggle.isOn then
                    GameDispatcher:dispatchEvent(EventName.REQ_EQUIP_DEL_EMPOWER, {equipId = self.mEquipVo.id, slotId = self.mCurPos, nth = curVo.index})
                else
                    local lastVo = hero.HeroEquipManager:getHeroEquipRemoldById(curVo.attr_list[1].key)
                    local nextVo = hero.HeroEquipManager:getHeroEquipRemoldById(curVo.attr_list[2].key)
                    local showTxt = _TT(100004393, lastVo:getLv(), lastVo:getName(), nextVo:getLv(), nextVo:getName())
                    UIFactory:alertMessge(showTxt, true, function()
                        GameDispatcher:dispatchEvent(EventName.REQ_EQUIP_DEL_EMPOWER, {equipId = self.mEquipVo.id, slotId = self.mCurPos, nth = curVo.index})
                    end, _TT(1), nil, true, nil, _TT(2), _TT(5), nil)
                end
            end)
            item:addOnClick(mBtnUsing, function()
                local lastVo = hero.HeroEquipManager:getHeroEquipRemoldById(curVo.attr_list[1].key)
                local nextVo = hero.HeroEquipManager:getHeroEquipRemoldById(curVo.attr_list[2].key)
                local showTxt = _TT(1000071532, lastVo:getLv(), lastVo:getName(), nextVo:getLv(), nextVo:getName())
                UIFactory:alertMessge(showTxt, true, function()
                    GameDispatcher:dispatchEvent(EventName.REQ_EQUIP_ACT_EMPOWER, {equipId = self.mEquipVo.id, slotId = self.mCurPos, nth = curVo.index})
                end, _TT(1), nil, true, nil, _TT(2), _TT(5), nil)
            end)

            for index, value in pairs(curVo.attr_list) do
                if not self.mGroupLitleItemDic[i] then
                    self.mGroupLitleItemDic[i] = {}
                end
                if not self.mGroupLitleItemDic[i][index] then
                    self.mGroupLitleItemDic[i][index] = SimpleInsItem:create(self.mGroupEffect, item:getChildTrans("mGroupEffSelectTrans"), "EquipRemoldInfoItem"..i..index)
                end
                local liItem = self.mGroupLitleItemDic[i][index]
                local liDataVo = hero.HeroEquipManager:getHeroEquipRemoldById(value.key)
                local curLv = self:getCurLvByKey(activeList, value.key)
                local curShowLv = curLv > liDataVo:getMaxLv() and HtmlUtil:color(curLv, "fa3d2bff") or curLv
                liItem:getChildGO("mIconEffect"):GetComponent(ty.AutoRefImage):SetImg(liDataVo:getIcon(), false)
                liItem:getChildGO("mTxtEeffct"):GetComponent(ty.Text).text = liDataVo:getName()
                liItem:getChildGO("mTxtCurLv"):GetComponent(ty.Text).text = _TT(4392, curShowLv, HtmlUtil:color("/"..liDataVo:getMaxLv(), "404548ff"))
                liItem:getChildGO("mTxtDes"):GetComponent(ty.Text).text = string.replaceRichTextColor(liDataVo:getDes(), "038008")
            end
        end
    end
end

function onDestoryItem(self)
    if self.mGroupItemDic then
        for _, item in pairs(self.mGroupItemDic) do
            item:poolRecover()
        end
        self.mGroupItemDic = {}
    end
    self:onDestoryLitleItem()
    self:onDestoryMainGroupInfoDic()
end

function onDestoryLitleItem(self)
    if self.mGroupLitleItemDic then
        for index, item1 in pairs(self.mGroupLitleItemDic) do
            for _, item in pairs(item1) do
                item:poolRecover()
            end
            item1 = {}
        end
        self.mGroupLitleItemDic = {}
    end
end

function onDestoryMainGroupInfoDic(self)
    if table.nums(self.mMainGroupInfoDic) > 0 then
        for index, item1 in pairs(self.mMainGroupInfoDic) do
            item1:poolRecover()
            item1 = nil
        end
    end
    self.mMainGroupInfoDic = {}
end

return _M

