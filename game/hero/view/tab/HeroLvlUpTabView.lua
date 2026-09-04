
module("hero.HeroLvlUpTabView", Class.impl(TabSubView))

UIRes = UrlManager:getUIPrefabPath("hero/tab/HeroLvlUpTab.prefab")

-- 构造函数
function ctor(self)
    super.ctor(self)
end

-- 初始化数据
function initData(self)
    super.initData(self)
    self.mTimeSn = nil
    self.mCurHeroId = nil
    self.mCurHeroVo = nil
    self.mIsReadyMilitaryUp = false
    self.mIsLongPress = false
    self.mIsQucikLvlUp = false
    self.mDelayUpdate = nil
    self.mDelayLvUpCost = nil
    self.isUpdate = false
    self.mLvlUpAttrList={}
    self.mNumChangeDic={}
end

function configUI(self)
    super.configUI(self)
    self.mGroup = self:getChildGO("mGroup")
    self.mTxtMax = self:getChildGO("mTxtMax")
    self.mBtnEle = self:getChildGO("mEleIcon")
    self.mBtnBack = self:getChildGO("mBtnBack")
    self.mBtnAuto = self:getChildGO("mBtnAuto")
    self.NameGroup = self:getChildGO("NameGroup")
    self.mBtnAward = self:getChildGO("mBtnAward")
    self.mBtnLvlUp = self:getChildGO("mBtnLvlUp")
    self.mBtnRankUp = self:getChildGO("mBtnRankUp")
    self.mBtnDetail = self:getChildGO("mBtnDetail")
    self.mGroupLvUp = self:getChildGO("mGroupLvUp")
    self.mExpendItem = self:getChildGO("mExpendItem")
    self.mItemTrans = self:getChildTrans("mItemTrans")
    self.mGroupMaxLvl = self:getChildGO("mGroupMaxLvl")
    self.mBtnLvlUpSkip = self:getChildGO("mBtnLvlUpSkip")
    self.mGroupDoLvlUp = self:getChildGO("mGroupDoLvlUp")
    self.mBtnAni = self.mBtnAward:GetComponent(ty.Animator)
    self.mLvUpAttrTrans = self:getChildTrans("mLvUpAttrTrans")
    self.mEleIcon = self.mBtnEle:GetComponent(ty.AutoRefImage)
    self.mGroupSpecialAttr = self:getChildGO("mGroupSpecialAttr")
    self.mTxtLvl = self:getChildGO("mTxtLvl"):GetComponent(ty.Text)
    self.mTxtAttr = self:getChildGO("mTxtAttr"):GetComponent(ty.Text)
    self.mTxtName = self:getChildGO("mTxtName"):GetComponent(ty.Text)
    self.mLvUpBar = self:getChildGO("mLvUpBar"):GetComponent(ty.Image)
    self.mBtnLvlUpRect = self.mBtnLvlUp:GetComponent(ty.RectTransform)
    self.mTxtAddLv = self:getChildGO("mTxtAddLv"):GetComponent(ty.Text)
    self.mTxtAddLv.gameObject:SetActive(false)
    self.mTxtFight = self:getChildGO("mTxtFight"):GetComponent(ty.Text)
    self.mTxtExpPro = self:getChildGO("mTxtExpPro"):GetComponent(ty.Text)
    self.mTxtLvLimit = self:getChildGO("mTxtLvLimit"):GetComponent(ty.Text)
    self.mTxtLvUpLvl = self:getChildGO("mTxtLvUpLvl"):GetComponent(ty.Text)
    self.mTxtEleName = self:getChildGO("mTxtEleName"):GetComponent(ty.Text)
    self.mTxtLvUpAttr = self:getChildGO("mTxtLvUpAttr"):GetComponent(ty.Text)
    self.mLvUpAddBar  = self:getChildGO("mLvUpAddBar "):GetComponent(ty.Image)
    self.mTxtMaxLvlTip = self:getChildGO("mTxtMaxLvlTip"):GetComponent(ty.Text)
    self.mTxtShowAddExp = self:getChildGO("mTxtShowAddExp"):GetComponent(ty.Text)
    self.mIconFight = self:getChildGO("mIconFight"):GetComponent(ty.AutoRefImage)
    self.mTxtLvUpExpPro = self:getChildGO("mTxtLvUpExpPro"):GetComponent(ty.Text)
    self.mTxtDefineType = self:getChildGO("mTxtDefineType"):GetComponent(ty.Text)
    self.mProgressBar = self:getChildGO('mProgressBar'):GetComponent(ty.ProgressBar)
    self.mTxtBtnLvlUpCost = self:getChildGO("mTxtBtnLvlUpCost"):GetComponent(ty.Text)
    self.mTxtLvUpExpendDes = self:getChildGO("mTxtLvUpExpendDes"):GetComponent(ty.Text)
    self.mTxtBtnLvlUpCostDes = self:getChildGO("mTxtBtnLvlUpCostDes"):GetComponent(ty.Text)
    self.mImgBtnLvlUpCost = self:getChildGO("mImgBtnLvlUpCost"):GetComponent(ty.AutoRefImage)
    self.mProgressBar:InitData(4)
    self.mStartGroup = {}
    for i=1, 6 do
        table.insert(self.mStartGroup, self:getChildGO("mStart" .. i):GetComponent(ty.Image))
    end
    self:setGuideTrans("guide_HeroLvlUp_1", self:getChildTrans("mBtnLvlUpSkip"))
    self:setGuideTrans("guide_HeroLvlUp_2", self:getChildTrans("mBtnLvlUp"))
    self:setGuideTrans("guide_HeroLvlUp_3", self:getChildTrans("mItemTrans"))
    self:setGuideTrans("guide_HeroLvlUp_4", self:getChildTrans("mBtnAuto"))

    self.mBtnResetExp = self:getChildGO("mBtnResetExp")
    self.mTxtResetExp = self:getChildGO("mTxtResetExp"):GetComponent(ty.Text)
    self.mBtnChangeName = self:getChildGO("mBtnChangeName")
end

function active(self, args)
    super.active(self, args)
    GameDispatcher:addEventListener(EventName.OPEN_HERO_LVL_UP_PANEL,self.onHideLvUpView,self)
    GameDispatcher:addEventListener(EventName.UPDATE_LVLUP_PANEL, self.onLvlUpUpdateHandler, self)
    GameDispatcher:addEventListener(EventName.HERO_DATA_UPDATE, self.onUpdateHeroDetailDataHandler, self)
    hero.HeroManager:addEventListener(hero.HeroManager.PANEL_SHOW_HERO_CHANGE, self.__onPlayUpdateAni, self)
    hero.HeroLvlTargetManager:addEventListener(hero.HeroLvlTargetManager.UPDATE_LVL_TARGET_lIST, self.onHeroLvlTargetUpdateHandler, self)
    hero.HeroManager:addEventListener(hero.HeroManager.UPDATE_FIELD_EXP, self.updateExpHandler, self)

    self.mIsLongPress = false
    self.mIsQucikLvlUp = false
    self.mIsReadyMilitaryUp = false
    local heroId = args.heroId
    self:onClickBackHandler()
    self:setData(heroId)
end

function deActive(self)
    super.deActive(self)
    GameDispatcher:removeEventListener(EventName.OPEN_HERO_LVL_UP_PANEL,self.onHideLvUpView,self)
    GameDispatcher:removeEventListener(EventName.UPDATE_LVLUP_PANEL, self.onLvlUpUpdateHandler, self)
    GameDispatcher:removeEventListener(EventName.HERO_DATA_UPDATE, self.onUpdateHeroDetailDataHandler, self)
    hero.HeroManager:removeEventListener(hero.HeroManager.PANEL_SHOW_HERO_CHANGE, self.__onPlayUpdateAni, self)
    hero.HeroLvlTargetManager:removeEventListener(hero.HeroLvlTargetManager.UPDATE_LVL_TARGET_lIST, self.onHeroLvlTargetUpdateHandler, self)
    hero.HeroManager:removeEventListener(hero.HeroManager.UPDATE_FIELD_EXP, self.updateExpHandler, self)
    RedPointManager:remove(self.mBtnLvlUpRect)
    RedPointManager:remove(self.mBtnAward.transform)
    RedPointManager:remove(self.mBtnRankUp.transform)
    self:recyAllItem()
    self:removeActionTextSn()
    self:removeAllDelay()
    self:recyLvlUpItem()
    self:recyLvlUpAttrList()
    self:resetNumHandler()
    self:onClearTime()
    hero.HeroController:stopCurPlayCVData()
    self.isUpdate = false
end

function removeAllDelay(self)
    if (self.mDelayUpdate) then
        LoopManager:removeFrameByIndex(self.mDelayUpdate)
        self.mDelayUpdate = nil
    end
    if (self.mDelayLvUpCost) then
        LoopManager:removeFrameByIndex(self.mDelayLvUpCost)
        self.mDelayLvUpCost = nil
    end
end

function initViewText(self)
    self.mTxtAttr.text = _TT(71426)
    self.mTxtLvUpAttr.text = _TT(10000349)
    self.mTxtMaxLvlTip.text = _TT(1081) -- "已达满级"
    self.mTxtLvUpExpendDes.text = _TT(93106)
    self.mTxtBtnLvlUpCostDes.text = _TT(100001450)
    self:setBtnLabel(self.mBtnLvlUp, 1106, "升级")
    self:setBtnLabel(self.mBtnAuto, 4348, "自動選擇")
    self:setBtnLabel(self.mBtnRankUp, 1057, "前往突破")
    self:setBtnLabel(self.mBtnLvlUpSkip, 1106, "升級")
    self:setBtnLabel(self.mBtnAward, 48131, "训练目标")
    self:getChildGO("mTxtTitleLv"):GetComponent(ty.Text).text = _TT(1003)  --等级
    self.mTxtResetExp.text = _TT(4238)
end

function addAllUIEvent(self)
    self:addUIEvent(self.mBtnEle, self.onOpenEleTip)
    self:addUIEvent(self.mBtnRankUp, self.onOpenRankUp)
    self:addUIEvent(self.NameGroup, self.onOpenFightTip)
    self:addUIEvent(self.mBtnBack, self.onClickBackHandler)
    self:addUIEvent(self.mBtnAuto, self.onClickAutoHandler)
    self:addUIEvent(self.mBtnLvlUp, self.onClickLvUpHandler)
    self:addUIEvent(self.mBtnAward, self.onClickAwardHandler)
    self:addUIEvent(self.mBtnDetail, self.onClickBtnDetailHandler)
    self:addUIEvent(self.mBtnLvlUpSkip, self.onClickLvUpSkipHandler)
    self:addUIEvent(self.mBtnResetExp, self.onClickBtnResetExpHandler)
    self:addUIEvent(self.mBtnChangeName, self.onClickBtnChangeNameHandler)
end

function onClickBtnChangeNameHandler(self)
    GameDispatcher:dispatchEvent(EventName.OPEN_MARRIAGE_RENAME_VIEW, { heroId = self.mCurHeroId })
end

----自動選擇道具及自動清除道具
function onClickAutoHandler(self)
    local needNumDic,costTidDic = hero.HeroLvlUpManager:getLvlUpMaxInfo(self.mCurHeroVo)
    local needCount = hero.HeroLvlUpManager:getNeedMoney(needNumDic)
    if needCount>0 then
        if self.mBtnAuto.transform:Find("Text"):GetComponent(ty.Text).text~=_TT(4348) then
            needNumDic={}
            self:setBtnLabel(self.mBtnAuto, 4348, "自動選擇")
        else
            self:setBtnLabel(self.mBtnAuto, 100001451, "全部清除")
        end
        for k, tid in pairs(costTidDic) do
            if not self.mNumChangeDic[tid]then
                self.mNumChangeDic[tid]=0
            end
            self.mNumChangeDic[tid]=needNumDic[tid] or 0
            self:updateShowInfo(tid)
        end
    else
        gs.Message.Show(_TT(76019))
        return 
    end

end
----戰員升級返回
function onClickBackHandler(self,isNotBack)
    if self.mGroupLvUp.activeSelf then
        self.mGroup:SetActive(true)
        self.mGroupLvUp:SetActive(false)
        self.mBtnAward:SetActive(true)
        self.mTxtAddLv.gameObject:SetActive(false) 
        self.mTxtShowAddExp.gameObject:SetActive(false) 
        self.mBtnLvlUpSkip:SetActive(true)
        self.mBtnLvlUp:SetActive(false)
        GameDispatcher:dispatchEvent(EventName.HIDE_HERO_LVL_UP_BTN,true)
        self:resetNumHandler()
        if not isNotBack then
            self:updateView()
        end
    end
end

function onClickLvUpSkipHandler(self)
    if not self.mGroupLvUp.activeSelf then
        self.mGroup:SetActive(false)
        self.mGroupLvUp:SetActive(true)
        self.mBtnAward:SetActive(false)
        self:setBtnLabel(self.mBtnAuto, 4348, "自動選擇")
        self.mBtnLvlUpSkip:SetActive(false)
        self.mBtnLvlUp:SetActive(true)
        GameDispatcher:dispatchEvent(EventName.HIDE_HERO_LVL_UP_BTN,false)
        return
    end
end

function onClickBtnResetExpHandler(self)
    if self.mCurHeroVo.lvl <= 1 then
        gs.Message.Show(_TT(53707))
        return
    end
    GameDispatcher:dispatchEvent(EventName.REQ_CS_RESET_HERO_LV_PRE_VIEW, {
        hero_id = self.mCurHeroVo.id
    })
end

----戰員升級
function onClickLvUpHandler(self)
    self:checkSend()
end

-- 选择快速升级
function onClickQuickLvlUpHandler(self)
    self.mIsQucikLvlUp = not self.mIsQucikLvlUp
    self.mDelayLvUpCost = LoopManager:addFrame(1, 1, self, self.updateLvlUpCost)
end

-- 打开属性详细信息
function onClickBtnDetailHandler(self)
    GameDispatcher:dispatchEvent(EventName.OPEN_HERO_ATTR_LIST_PANEL, { heroVo = self.mCurHeroVo })
end

-- 打开战员奖励
function onClickAwardHandler(self)
    GameDispatcher:dispatchEvent(EventName.OPEN_HERO_LVL_TARGET_PANEL, { heroId = self.mCurHeroId })
end

function onOpenRankUp(self)
    GameDispatcher:dispatchEvent(EventName.CHANGE_HERO_TAB, true)
    -- GameDispatcher:dispatchEvent(EventName.OPEN_HERO_LVL_TARGET_PANEL, { heroId = self.mCurHeroId })
end


function onOpenFightTip(self)
    TipsFactory:heroEleAndOccTips(1, self.NameGroup.transform)
end

function onOpenEleTip(self)
    TipsFactory:heroEleAndOccTips(2, self.mBtnEle.transform)
end

function checkSend(self)
    if (self.mCurHeroVo.lvl >= self.mCurHeroVo:getMaxMilitaryLvl()) then
        local maxMilitaryRank = hero.HeroMilitaryRankManager:getMaxMilitaryRankLvl(self.mCurHeroVo.tid)
        if (self.mCurHeroVo.militaryRank >= maxMilitaryRank) then
            -- 军阶已满，且英雄已经升级到最大级了
            gs.Message.Show(_TT(1082)) -- "英雄等级已达到最大级"
        end
    else
        local needCount=hero.HeroLvlUpManager:getNeedMoney(self.mNumChangeDic)
        local costList={}
        for tid, count in pairs(self.mNumChangeDic) do
            if count>0 then
                table.insert(costList,{ item_id =tid, num = count })
            end
        end
        local isEnough, _ = MoneyUtil.judgeNeedMoneyCountByTid(MoneyTid.GOLD_COIN_TID, needCount, nil, true)
        if (isEnough and #costList>0) then
            GameDispatcher:dispatchEvent(EventName.REQ_HERO_LVL_UP, {
                heroId = self.mCurHeroId,
                costList=costList,
            })
        elseif #costList<=0 then
            gs.Message.Show(_TT(76019))
            return
        end
    end
end

-- 英雄等级更新
function onLvlUpUpdateHandler(self, args)
    local heroId = args.heroId
    if (self.mCurHeroId == heroId) then

        self:removeActionTextSn()
        self.m_frameSnText = LoopManager:addFrame(1, 0, self, self.updateActionText)
        if self.mCurHeroVo.exp == self.mCurHeroVo.maxExp and self.mCurHeroVo.maxExp == 0 then
            self.mProgressBar:SetValue(1, 1, true, false, true, 0.3)
        else
            self.mProgressBar:SetValue(self.mCurHeroVo.exp, self.mCurHeroVo.maxExp, true, false, true, 0.3)
        end
        if (self.mCurHeroVo.exp == 0) then
            self.mEffectSn = LoopManager:addTimer(0.3, 1, self, function()
                self:addEffect("fx_ui_common_shengji", self.mProgressBar.gameObject.transform, 150, 0, nil)
            end)
        end
        self.mDelayUpdate = LoopManager:addFrame(1, 1, self, self.updateView)
    end
    self.m_isReceive = true
end

function onHideLvUpView(self)
    self:onClickBackHandler(true)
end

------更新升級數據
function updateLvlUpHandler(self)
    self:recyLvlUpAttrList()
    self:recyLvlUpItem()
    self:resetNumHandler()
    self.mTxtShowAddExp.text=""
    local curExp = self.mCurHeroVo.exp
    local list={ AttConst.HP_MAX, AttConst.ATTACK, AttConst.DEFENSE}

   for i = 1, #list do
       local attrKey = self.showAttrList[i]
       if (self.mCurHeroVo.attrDic[attrKey]) then
           local addValueVo = hero.HeroLvlUpManager:getHeroLvlUpAddAllValue(self.mCurHeroVo,self.mCurHeroVo.lvl,attrKey)
           addValueVo.value=self.mCurHeroVo.basicAttrDic[attrKey]+addValueVo.value
           local item =self.mLvlUpAttrList[attrKey] or hero.HeroLvlUpAttrItem:poolGet()
           item:setData(i, addValueVo,i, true,addValueVo)
           item:setParent(self.mLvUpAttrTrans)
           self.mLvlUpAttrList[attrKey]=item
       end
   end
    --local needNumDic,costTidDic = hero.HeroLvlUpManager:getLvlUpMaxInfo(self.mCurHeroVo)
    local costTidDic = hero.HeroLvlUpManager:getLvlUpCostDic()
    for i, tid in pairs(costTidDic) do
        if not  self.mNumChangeDic[tid] then
            self.mNumChangeDic[tid]=0  
        end
        local item=SimpleInsItem:create(self.mExpendItem, self.mItemTrans, "LvlUpExpendItem"..i)
        local propsGrid=PropsGrid:createByData({ tid = tid, num = 0, parent = item:getChildTrans("mTrans"), scale = 1, showUseInTip = true })
        table.insert(self.mLvlUpUsingItemList,propsGrid)
        item:getChildGO("mTxtNum"):GetComponent(ty.Text).text = _TT(45013,self.mNumChangeDic[tid],MoneyUtil.getMoneyCountByTid(tid))
        item:getChildGO("mBtnReduce"):SetActive(false)
        local curAddExp=hero.HeroLvlUpManager:getCurAddExp(self.mNumChangeDic)
        local _,isMax=hero.HeroLvlUpManager:getCurLvStateByExp(self.mCurHeroVo,curAddExp)
        local isCanClick = self.mNumChangeDic[tid]<MoneyUtil.getMoneyCountByTid(tid) and MoneyUtil.getMoneyCountByTid(tid)>0 and not isMax
        item:getChildGO("mBtnAdd"):SetActive(isCanClick)
        local function onLongClick()
            if not self.mTimeSn then
                self.mTimeSn = LoopManager:addTimer(0.3,0,self,function()
                    self:onClickHanlder(tid)
                end)
            end
        end
        local function onClear()
            self:onClearTime()
        end
        local event=item:getChildGO("mBtnAdd"):GetComponent(ty.LongPressOrClickEventTrigger)
        event.onLongPress:AddListener(onLongClick)
        event.onPointerUp:AddListener(onClear)
        item:addUIEvent("mBtnAdd",function ()
            self:onClickHanlder(tid)
        end)
        item:addUIEvent("mBtnReduce",function ()
            if self.mNumChangeDic[tid]>0 then
                self.mNumChangeDic[tid]=self.mNumChangeDic[tid]-1
                self:updateShowInfo(tid)
            end
        end)
        self.mLvlUpItemDic[tid]=item
    end
    self.mTxtLvUpLvl.text = _TT(102001).." "..HtmlUtil:colorAndSize(self.mCurHeroVo.lvl, "ffffffff", 28)
    self.mTxtLvUpExpPro.text = _TT(45013,curExp,self.mCurHeroVo.maxExp)
    self.mLvUpBar.fillAmount = curExp / self.mCurHeroVo.maxExp
    self.mLvUpAddBar.fillAmount = curExp / self.mCurHeroVo.maxExp
end

function onClickHanlder(self,tid)
    local curAddExp = hero.HeroLvlUpManager:getCurAddExp(self.mNumChangeDic)
    local _,isMax = hero.HeroLvlUpManager:getCurLvStateByExp(self.mCurHeroVo,curAddExp)
    if self.mNumChangeDic[tid] < MoneyUtil.getMoneyCountByTid(tid) and MoneyUtil.getMoneyCountByTid(tid)>0 and not isMax then
        self.mNumChangeDic[tid]=self.mNumChangeDic[tid]+1
        self:updateShowInfo(tid)  
    end 
end

function onClearTime(self)
    if self.mTimeSn then
        LoopManager:removeTimerByIndex(self.mTimeSn)
        self.mTimeSn=nil
    end
end

function updateShowInfo(self,tid)
    local curAddExp=hero.HeroLvlUpManager:getCurAddExp(self.mNumChangeDic)
    local curExp=self.mCurHeroVo.exp+curAddExp
    local curLv,_=hero.HeroLvlUpManager:getCurLvStateByExp(self.mCurHeroVo,curExp)
    local addlv = curLv-self.mCurHeroVo.lvl
    self.mTxtAddLv.text="+"..addlv
    self.mTxtShowAddExp.text="+"..curAddExp
    self.mTxtAddLv.gameObject:SetActive(addlv>0)
    self.mTxtShowAddExp.gameObject:SetActive(curAddExp>0)
    local curValue = self.mNumChangeDic[tid]
    self.mLvlUpItemDic[tid]:getChildGO("mTxtNum"):GetComponent(ty.Text).text = _TT(45013,curValue,MoneyUtil.getMoneyCountByTid(tid))
    self.mLvlUpItemDic[tid]:getChildGO("mBtnReduce"):SetActive(curValue>0)
    self.mLvUpAddBar.fillAmount = curExp / self.mCurHeroVo.maxExp
    self.mTxtLvUpExpPro.text = _TT(45013,curExp,self.mCurHeroVo.maxExp)
    local list={ AttConst.HP_MAX, AttConst.ATTACK, AttConst.DEFENSE}
    for i, key in ipairs(list) do
        if (self.mCurHeroVo.attrDic[key]) then
            local addValueVo = hero.HeroLvlUpManager:getHeroLvlUpAddAllValue(self.mCurHeroVo,self.mCurHeroVo.lvl+addlv,key)
            addValueVo.value=self.mCurHeroVo.basicAttrDic[key]+addValueVo.value
            local curValueVo = hero.HeroLvlUpManager:getHeroLvlUpAddAllValue(self.mCurHeroVo,self.mCurHeroVo.lvl,key)
            curValueVo.value=self.mCurHeroVo.basicAttrDic[key]+curValueVo.value
            self.mLvlUpAttrList[key]:__updateContent(curValueVo,addValueVo)
        end
    end
    local needCount=hero.HeroLvlUpManager:getNeedMoney(self.mNumChangeDic)
    if needCount<=0 then
        self:setBtnLabel(self.mBtnAuto, 4348, "自動選擇")
    else
        self:setBtnLabel(self.mBtnAuto, 100001451, "全部清除")
    end
    local isEnough, _ = MoneyUtil.judgeNeedMoneyCountByTid(MoneyTid.GOLD_COIN_TID, needCount, false, false)
    if (isEnough) then
        self.mTxtBtnLvlUpCost.color = gs.ColorUtil.GetColor("FFFFFFFF")
    else
        self.mTxtBtnLvlUpCost.color = gs.ColorUtil.GetColor("DF1E1EFF")
    end
    self.mImgBtnLvlUpCost:SetImg(UrlManager:getPropsIconUrl(MoneyTid.GOLD_COIN_TID), false)
    self.mTxtBtnLvlUpCost.text = needCount
end

function resetNumHandler(self)
    local _,costTidDic = hero.HeroLvlUpManager:getLvlUpMaxInfo(self.mCurHeroVo)
    for _, tid in pairs(costTidDic) do
        if not  self.mNumChangeDic[tid] then
            self.mNumChangeDic[tid]=0  
        end
        self.mNumChangeDic[tid]=0
    end
end

function onUpdateHeroDetailDataHandler(self, args)
    local heroId = args.heroId
    if (self.mCurHeroId == heroId) then
        self:updateNormalExpBar()
        self.mDelayUpdate = LoopManager:addFrame(1, 1, self, self.updateView)
    end
end
function onHeroLvlTargetUpdateHandler(self, args)
    local heroVo = hero.HeroManager:getHeroVo(self.mCurHeroId)
    if (not args.heroTid or args.heroTid == heroVo.tid) then
        self:updateLvlTargetBubbleView()
    end
end

function updateLvlUpBubbleView(self)
    local heroVo = hero.HeroManager:getHeroVo(self.mCurHeroId)
    local isFlag = hero.HeroFlagManager:isHeroCanMilitaryUp(heroVo)
    if (isFlag) then
        RedPointManager:add(self.mBtnRankUp.transform, nil, 129, 18)
    else
        RedPointManager:remove(self.mBtnRankUp.transform)
    end
end

function updateLvlTargetBubbleView(self)
    local heroVo = hero.HeroManager:getHeroVo(self.mCurHeroId)
    local targetFlag = hero.HeroFlagManager:isHeroCanRecLvlTarget(heroVo)
    local targetAllFlag = hero.HeroFlagManager:isHeroAllRecLvlTarget(heroVo)
    if (targetFlag) then
        RedPointManager:add(self.mBtnAward.transform, nil, 20, 30)
        self.mBtnAni:ResetTrigger("puv")
        self.mBtnAni:SetTrigger("show")
    else
        RedPointManager:remove(self.mBtnAward.transform)
        self.mBtnAni:SetTrigger("puv")
    end
end

function setData(self, cusHeroId)
    self.mCurHeroId = cusHeroId

    local heroVo = hero.HeroManager:getHeroVo(cusHeroId)
    if (heroVo.m_isPreData) then
        return
    end
    self.mCurHeroVo = heroVo
    self:updateNormalExpBar()
    self.mDelayUpdate = LoopManager:addFrame(1, 1, self, self.updateView)
    -- self:updateView()
    -- self:updateLvlUpBubbleView()
end
function recyLvlUpItem(self)
    if (self.mLvlUpItemDic) then
        for _, item in pairs(self.mLvlUpItemDic) do
            local event=item:getChildGO("mBtnAdd"):GetComponent(ty.LongPressOrClickEventTrigger)
            event.onPointerUp:RemoveAllListeners()
            event.onLongPress:RemoveAllListeners()
            item:poolRecover()
            item=nil
        end
    end
    self.mLvlUpItemDic = {}
end

function recyLvlUpAttrList(self)
    if (self.mLvlUpAttrList) then
        for k, item in pairs(self.mLvlUpAttrList) do
            item:destroy()
            item:poolRecover()
            item=nil
        end
    end
    self.mLvlUpAttrList = {}
    if self.mLvlUpUsingItemList then
        for i = 1, #self.mLvlUpUsingItemList do
            local item = self.mLvlUpUsingItemList[i]
            item:poolRecover()
            item=nil
        end
    end

    self.mLvlUpUsingItemList={}
end

function recyAllItem(self)
    if (self.mItemList) then
        for i = 1, #self.mItemList do
            local item = self.mItemList[i]
            item:poolRecover()
        end
    end
    self.mItemList = {}
end

function removeActionTextSn(self)
    if (self.m_frameSnText) then
        LoopManager:removeFrameByIndex(self.m_frameSnText)
        self.m_frameSnText = nil
    end
    if (self.mEffectSn) then
        LoopManager:removeTimerByIndex(self.mEffectSn)
        self.mEffectSn = nil
    end
end

-- 进度条文字相关
function updateActionText(self, deltaTime)
    if (self.mCurHeroVo.exp == self.mCurHeroVo.maxExp and self.mCurHeroVo.maxExp == 0) then -- 0/0
        self.mTxtExpPro.text = _TT(1081)
    else
        self.mTxtExpPro.text = self.mProgressBar.Current .. "/" .. self.mProgressBar.Total
    end
end

function updateNormalExpBar(self)
    if (self.mCurHeroVo == nil) then
        return
    end
    if self.mCurHeroVo.exp == self.mCurHeroVo.maxExp and self.mCurHeroVo.maxExp == 0 then
        self.mProgressBar:SetValue(1, 1, false, false, false, 0.3)
        self.mTxtExpPro.text = _TT(1081)
    else
        self.mProgressBar:SetValue(self.mCurHeroVo.exp, self.mCurHeroVo.maxExp, false, false, false, 0.3)
        self.mTxtExpPro.text = self.mCurHeroVo.exp .. "/" .. self.mCurHeroVo.maxExp
    end
end

function updateView(self)
    self:recyAllItem()
    if not self.showAttrList then
         self.showAttrList = { AttConst.HP_MAX, AttConst.ATTACK, AttConst.DEFENSE, AttConst.SPEED }
    end

    for i = 1, #self.showAttrList do
        local attrKey = self.showAttrList[i]
        if (self.mCurHeroVo.attrDic[attrKey]) then
            local attrVo = {
                key = attrKey,
                value = self.mCurHeroVo.attrDic[attrKey]
            }
            local item = hero.HeroLvlUpAttrItem_1:poolGet()
            item:setData(i, attrVo,i, true)
            item:setParent(self.mGroupSpecialAttr.transform)
            table.insert(self.mItemList, item)
        end
    end
    self.mTxtLvl.text = self.mCurHeroVo.lvl
    -- .. "<size=32>" .. "/" .. self.mCurHeroVo:getMaxMilitaryLvl() .. "</size>"
    self.mTxtLvLimit.text =  self.mCurHeroVo:getMaxMilitaryLvl()
    -- local curMilitaryRankVo = hero.HeroMilitaryRankManager:getMilitaryRankConfigVo(self.mCurHeroVo.tid,
    -- self.mCurHeroVo.militaryRank)
    -- self.mTxtMilitaryName.text = curMilitaryRankVo:getName()

    self.mEleIcon:SetImg(UrlManager:getHeroEleTypeIconUrl(self.mCurHeroVo.eleType), false)
    local color, txt = hero.getHeroTypeName(self.mCurHeroVo.eleType)
    self.mTxtEleName.text = txt
    self.mTxtEleName.color = gs.ColorUtil.GetColor(color)
    self.mIconFight:SetImg(UrlManager:getHeroJobSmallIconUrl(self.mCurHeroVo.professionType), false)
    self.mTxtFight.text = hero.getProfessionName(self.mCurHeroVo.professionType)
    self.mTxtDefineType.text = hero.getDefineName(self.mCurHeroVo.defineType)
    self.mTxtName.text = self.mCurHeroVo:getHeroName()
    local initialStar = self.mCurHeroVo.evolutionLvl and self.mCurHeroVo.evolutionLvl or 0
    for i = 1, 6 do
        local color = "5c697aff"
        if i <= initialStar then 
            color = "ffffffff"
        end
        self.mStartGroup[i].color = gs.ColorUtil.GetColor(color)
    end

    self.mGroupDoLvlUp:SetActive(true)
    self.mGroupMaxLvl:SetActive(false)
    -- self.mTxtLvUpTip.gameObject:SetActive(false)
    self.mTxtBtnLvlUpCost.gameObject:SetActive(true)
    self.mImgBtnLvlUpCost.gameObject:SetActive(true)
    self.mTxtMax:SetActive(false)

    self.mBtnRankUp:SetActive(false)
    self.mBtnLvlUpSkip:SetActive(true)
    self.mBtnLvlUp:SetActive(false)
    local maxMilitaryRank = hero.HeroMilitaryRankManager:getMaxMilitaryRankLvl(self.mCurHeroVo.tid)
    local isMaxMilitaryRank = self.mCurHeroVo.militaryRank >= maxMilitaryRank
    if (self.mCurHeroVo.lvl >= self.mCurHeroVo:getMaxMilitaryLvl()) then
        if (isMaxMilitaryRank) then -- 军阶已满，且英雄已经升级到最大级了
            self.mTxtMax:SetActive(true)
            self.mGroupDoLvlUp:SetActive(false)
            self.mGroupMaxLvl:SetActive(true)
            self.mBtnLvlUpSkip:SetActive(false)
        else
            self.mBtnRankUp:SetActive(true)
            self.mBtnLvlUpSkip:SetActive(false)
            self.mBtnLvlUp:SetActive(false)
        end
    else
        GameDispatcher:dispatchEvent(EventName.CHANGE_HERO_TAB, false)
        local _, needCount = hero.HeroFlagManager:getLvlUpNeedPropsCount(self.mCurHeroVo)
        if (needCount > 0) then
            self.mDelayLvUpCost = LoopManager:addFrame(1, 1, self, self.updateLvlUpCost)
        end
    end

    -- 等级目标奖励：未上阵的战斗单独还要显示红点，不影响外面
    self:updateLvlTargetBubbleView()
    self:updateGuide()

    if (self.mDelayUpdate) then
        LoopManager:removeFrameByIndex(self.mDelayUpdate)
        self.mDelayUpdate = nil
    end
    self:updateLvlUpBubbleView()
    self:updateLvlUpHandler()
    self.mBtnResetExp:SetActive(not isMaxMilitaryRank)

    self.mBtnChangeName:SetActive(self.mCurHeroVo.isPromise == 1)
end

function updateExpHandler(self)
    self:removeActionTextSn()
    self.m_frameSnText = LoopManager:addFrame(1, 0, self, self.updateActionText)
    if self.mCurHeroVo.exp == self.mCurHeroVo.maxExp and self.mCurHeroVo.maxExp == 0 then
        self.mProgressBar:SetValue(1, 1, true, false, true, 0.3)
    else
        self.mProgressBar:SetValue(self.mCurHeroVo.exp, self.mCurHeroVo.maxExp, true, false, true, 0.3)
    end
    if (self.mCurHeroVo.exp == 0) then
        self.mEffectSn = LoopManager:addTimer(0.3, 1, self, function()
            self:addEffect("fx_ui_common_shengji", self.mProgressBar.gameObject.transform, 150, 0, nil)
        end)
    end
    self.mDelayUpdate = LoopManager:addFrame(1, 1, self, function ()
        local isActive = self.mBtnLvlUp.activeSelf
        self:updateView()
        self.mBtnLvlUp:SetActive(isActive)
    end)
end

function recoverMilitaryAddAttrList(self)
    if (self.mMilitaryAddAttrList) then
        for i = 1, #self.mMilitaryAddAttrList do
            self.mMilitaryAddAttrList[i]:poolRecover()
        end
    end
    self.mMilitaryAddAttrList = {}
end

function updateLvlUpCost(self)
    local needCount = hero.HeroLvlUpManager:getCurAddExp(self.mNumChangeDic);
    local isEnough, tipStr = MoneyUtil.judgeNeedMoneyCountByTid(MoneyTid.GOLD_COIN_TID, needCount, false, false)
    if (isEnough) then
        self.mTxtBtnLvlUpCost.color = gs.ColorUtil.GetColor("FFFFFFFF")
    else
        self.mTxtBtnLvlUpCost.color = gs.ColorUtil.GetColor("DF1E1EFF")
    end
    self.mImgBtnLvlUpCost:SetImg(UrlManager:getPropsIconUrl(MoneyTid.GOLD_COIN_TID), false)
    self.mTxtBtnLvlUpCost.text = needCount
end


function updateGuide(self)
    if (self.mCurHeroVo.id == 1) then
        self:setGuideTrans("hero_lvlup_btn_lvlup_" .. self.mCurHeroVo.id, self.mBtnLvlUpRect)
    end
    self:setGuideTrans("hero_lvlup_btn_lvlup", self.mBtnLvlUpRect)
end

function __onPlayUpdateAni(self)
    if not self.m_UIObjectAni then 
        self.m_UIObjectAni = self.UIObject:GetComponent(ty.Animator)
    end
    if not gs.GoUtil.IsCompNull(self.m_UIObjectAni) then 
        self.m_UIObjectAni:SetTrigger("show")
    end
end

function __checkNeedPassStage(self)

    local curMilitaryRankVo = hero.HeroMilitaryRankManager:getMilitaryRankConfigVo(self.mCurHeroVo.tid,
    self.mCurHeroVo.militaryRank)
    if battleMap.MainMapManager:isStagePass(curMilitaryRankVo.stageId) then
        return 0
    end
    return curMilitaryRankVo.stageId
end

return _M

--[[ 替换语言包自动生成，请勿修改！
]]