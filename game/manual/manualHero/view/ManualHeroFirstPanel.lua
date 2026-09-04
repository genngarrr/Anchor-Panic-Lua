--[[ 
-----------------------------------------------------
@filename       : ManualHeroFirstPanel
@Description    : 图鉴-战员属性
@Author         : sxt
@copyright      : (LY) 2023 雷焰网络
-----------------------------------------------------
]]
module("manual.ManualHeroFirstPanel", Class.impl(View))

UIRes = UrlManager:getUIPrefabPath("manual/ManualHeroFirstPanel.prefab")
destroyTime = -1 -- 自动销毁时间-1默认
isShow3DBg = 1

-- 构造函数
function ctor(self)
    super.ctor(self)
    self:setSize(0, 0)
    self:setTxtTitle(_TT(10000401))
end

-- 初始化数据
function initData(self)
    super.initData(self)

    self.mHeroList = {}
end

function configUI(self)
    super.configUI(self)

    self.mHeroScroll = self:getChildGO("mHeroScroll"):GetComponent(ty.LyScroller)
    self.mHeroScroll:SetItemRender(manual.ManualHeroFirstItem)
    --self.mHeroScroll = self:getChildGO("mHeroScroll"):GetComponent(ty.LyScroller)

    self.mTxtTips = self:getChildGO("mTxtTips"):GetComponent(ty.Text)
    self.mTxtAttValue = self:getChildGO("mTxtAttValue"):GetComponent(ty.Text)
    self.mTxtHPValue = self:getChildGO("mTxtHPValue"):GetComponent(ty.Text)
    self.mTxtDefValue = self:getChildGO("mTxtDefValue"):GetComponent(ty.Text)
end

function initViewText(self)
    self.mTxtTips.text = _TT(10000405)
end

-- UI事件管理(关闭界面会自动移除)
function addAllUIEvent(self)
end

function active(self,args)
    super.active(self)

    GameDispatcher:addEventListener(EventName.UPDATE_MANUALHERO_LIST, self.showPanel, self)
    
    MoneyManager:setMoneyTidList({})
    self:showPanel()
   
end

-- 反激活（销毁工作）
function deActive(self)
    super.deActive(self)
    GameDispatcher:removeEventListener(EventName.UPDATE_MANUALHERO_LIST, self.showPanel, self)
    if self.mHeroScroll then
        self.mHeroScroll:CleanAllItem()
    end
end

function showPanel(self)
    local heroConfigDic = hero.HeroManager:getHeroConfigDic()

    local heroTidList = {}
    for tid, vo in pairs(heroConfigDic) do
        local isAct = manual.ManualHeroManager:getHeroActByTid(tid)
        local isObs = hero.HeroManager:getIsObtain(tid)
        if isAct == true then
            vo.manualSort = 3
        elseif isAct == false and isObs == false then
            vo.manualSort = 2
        else
            vo.manualSort = 1
        end
        table.insert(heroTidList,vo)
    end

    table.sort(heroTidList,function (vo1,vo2)
        if vo1.manualSort ~= vo2.manualSort then
            return vo1.manualSort < vo2.manualSort
        else
            return vo1.tid > vo2.tid
        end
    end)

    for i=1,#heroTidList do
        heroTidList[i].tweenId = i * 2
    end

    local valeDic = {}
    valeDic[162] = 0
    valeDic[161] = 0
    valeDic[153] = 0
    local hasHero = hero.HeroManager:getHeroList()
    for i = 1,#hasHero do
        local isAct = manual.ManualHeroManager:getHeroActByTid(hasHero[i].tid)
        if isAct then
            valeDic[hasHero[i].m_orgConfigVo.firstActivateAttr[1]] = valeDic[hasHero[i].m_orgConfigVo.firstActivateAttr[1]] + hasHero[i].m_orgConfigVo.firstActivateAttr[2]
        end
    end

    self.mTxtAttValue.text = "+".. valeDic[162]/100 .. "%"
    self.mTxtHPValue.text = "+".. valeDic[161]/100 .. "%"
    self.mTxtDefValue.text = "+".. valeDic[153]/100 .. "%"

    --if self.mHeroScroll.Count == 0 then
        self.mHeroScroll.DataProvider = heroTidList
    --else
    --    self.mHeroScroll:ReplaceAllDataProvider(heroTidList)
    --end
    
end

return _M