--[[ 
-----------------------------------------------------
@filename       : ManualHeroCombinationPanel
@Description    : 图鉴-战员羁绊属性
@Author         : sxt
@copyright      : (LY) 2023 雷焰网络
-----------------------------------------------------
]]
module("manual.ManualHeroCombinationPanel", Class.impl(View))

UIRes = UrlManager:getUIPrefabPath("manual/ManualHeroCombinationPanel.prefab")
destroyTime = -1 -- 自动销毁时间-1默认
isShow3DBg = 1

-- 构造函数
function ctor(self)
    super.ctor(self)
    self:setSize(0, 0)
    self:setTxtTitle(_TT(10000402))
end

-- 初始化数据
function initData(self)
    super.initData(self)
end

function configUI(self)
    super.configUI(self)

    self.mHeroScroll = self:getChildGO("mHeroScroll"):GetComponent(ty.LyScroller)
    self.mHeroScroll:SetItemRender(manual.ManualHeroComItem)

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
    GameDispatcher:addEventListener(EventName.UPDATE_MANUALHERO_COMBINATION, self.showPanel, self)
    
    MoneyManager:setMoneyTidList({})
    self:showPanel()
end

-- 反激活（销毁工作）
function deActive(self)
    super.deActive(self)
    GameDispatcher:removeEventListener(EventName.UPDATE_MANUALHERO_COMBINATION, self.showPanel, self)

    if self.mHeroScroll then
        self.mHeroScroll:CleanAllItem()
    end
end

function showPanel(self)
    local comList = manual.ManualHeroManager:getHeroComData()
    for i = 1,#comList do
        local isAct = manual.ManualHeroManager:getHeroCombById(comList[i].id)
        local allHas = true
        for j = 1,#comList[i].heroList do
            local isObs = hero.HeroManager:getIsObtain(comList[i].heroList[j])
            allHas = allHas and isObs
        end

        if isAct== true then
            comList[i].manualSort = 3
        elseif isAct == false and allHas == false then
            comList[i].manualSort = 2
        else
            comList[i].manualSort = 1
        end
    end

    table.sort(comList,function (vo1,vo2)
        if vo1.manualSort ~= vo2.manualSort then
            return vo1.manualSort < vo2.manualSort
        else
            return vo1.id < vo2.id
        end
    end)

    for i=1,#comList do
        comList[i].tweenId = i * 2
    end

    self.mHeroScroll.DataProvider = comList

    local valeDic = {}
    valeDic[162] = 0
    valeDic[161] = 0
    valeDic[153] = 0
    for i = 1,#comList do
        local isAct = manual.ManualHeroManager:getHeroCombById(comList[i].id)
        if isAct then
            valeDic[comList[i].attr[1]] = valeDic[comList[i].attr[1]] + comList[i].attr[2]
        end
    end
    self.mTxtAttValue.text = "+".. valeDic[162]/100 .. "%"
    self.mTxtHPValue.text = "+".. valeDic[161]/100 .. "%"
    self.mTxtDefValue.text = "+".. valeDic[153]/100 .. "%"
end

return _M