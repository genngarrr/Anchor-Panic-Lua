module("recruit.RecruitPanel", Class.impl(View))

UIRes = UrlManager:getUIPrefabPath("recruit/RecruitPanel.prefab")
destroyTime = 0 -- 自动销毁时间-1默认
panelType = 1 -- 窗口类型 1 全屏 2 弹窗 -1无底图弹窗 3 不应用遮罩的常驻页面(事影循回)
isScreensave = 1
isShowBlackBg = 1 --是否显示全屏纯黑防穿帮底图

--构造函数
function ctor(self)
    super.ctor(self)
    self:setSize(1280, 720)
    self:setTxtTitle(_TT(28001))

    self:setBg("", false)
    self:setUICode(LinkCode.Recruit)
end

-- 玩家点击关闭
function onClickClose(self)
    recruit.RecruitManager:setRecruitActionId(nil)

    super.onClickClose(self)
end

-- 玩家关闭所有窗口的c#回调
function onCloseAllCall(self)
    recruit.RecruitManager:SetOpenRulePanel(false)

    self:__onPlayerClose()

    super.onCloseAllCall(self)
end

-- 玩家关闭所有窗口的c#回调
function __onPlayerClose(self)
    self.m_selectId = nil
end

function openSubView(self)
    self:closeSubView()

    local instance = self:getClassInsByRecruitId(self.m_selectId, self.m_selectType)
    instance:setUICache(true)
    instance:__active(nil, self.isReshow)

    self.isReshow = false
end

function closeSubView(self)
    for recruit_id, classIns in pairs(self.m_TabClassInsDic) do
        if (not classIns:getIsCache()) then
            classIns:setUICache(false)
            classIns:__deActive()
        end
    end
end

function getClassInsByRecruitId(self, recruit_id, recruit_type)
    local instance = self.m_TabClassInsDic[recruit_id]
    if (not instance) then
        local tabDefine = recruit.getMainPanelTabDefine()[recruit_type]
        local tabClass = tabDefine.class
        local prefabsPath = self:getPrefabsPath(recruit_id, recruit_type, tabDefine.prefabsPath)
        if type(tabClass) == "table" then
            instance = tabClass.new(prefabsPath, recruit_id)
        else
            logError("请require 文件" .. tabClass)
            return
        end

        if instance.subName ~= "CustomSubView" then
            logWarn(instance._NAME .. ' 请尽量继承CustomSubView ')
        end

        instance:setParentTrans(self:getTabViewParent())

        self.m_TabClassInsDic[recruit_id] = instance
    end
    return instance
end

function getPrefabsPath(self, recruit_id, recruit_type, prefabsPath)
    if recruit_type == recruit.RecruitType.RECRUIT_ACTIVITY_1 or
        recruit_type == recruit.RecruitType.RECRUIT_ACTIVITY_2 then
        prefabsPath = string.format("%s_%s", prefabsPath, recruit_id)
    end

    return UrlManager:getUIPrefabPath(string.format("recruit/tab/%s.prefab", prefabsPath))
end

function getTabViewParent(self)
    return self.mChildPoint
end

-- 初始化数据
function initData(self)
    super.initData(self)

    self.m_MenuList = {}

    self.m_TabClassInsDic = {}
    self.m_selectId = nil

end

function configUI(self)
    super.configUI(self)
    self.mTabContent = self:getChildTrans('mTabContent')
    self.mChildPoint = self:getChildTrans("mChildPoint")
    self.mTabItem = self:getChildGO("mTabItem")
    self.mSubTabItem = self:getChildGO("mSubTabItem")
end

function active(self, args)
    super.active(self, args)
    GameView.UINode["GUIDE"]:GetComponent(ty.Canvas).sortingOrder = 1700

    self.m_selectId = self.m_selectId or args.recruitId
    if recruit.RecruitManager:isOpenRulePanel() then
        GameDispatcher:dispatchEvent(EventName.OPEN_RECRUIT_RULE_PANEL, {id = self.m_selectId})
    end

    self:updateTab()

    if not self.updateTabTimer then
        self.updateTabTimer = LoopManager:addTimer(10, -1, self, self.onTimer)
    end

    self:addEvent()

    self:updateGuide()
end

function deActive(self)
    super.deActive(self)
    GameView.UINode["GUIDE"]:GetComponent(ty.Canvas).sortingOrder = 1400

    MoneyManager:setMoneyTidList()

    if (self.tabBar) then
        self.tabBar:reset()
        self.tabBar = nil
    end

    self.m_MenuList = {}
    recruit.RecruitController.canSendRecruitHero = true

    if self.updateTabTimer then
        LoopManager:removeTimer(self, self.onTimer)
        self.updateTabTimer = nil
    end

    self:removeEvent()

    self:closeSubView()

    self.m_selectType = nil
end

function initViewText(self)

end

function addAllUIEvent(self)

end

function addEvent(self)
    GameDispatcher:addEventListener(EventName.UPDATE_RECRUIT_PANEL, self.updateTab, self)

    --背包数据更新
    bag.BagManager:addEventListener(bag.BagManager.BAG_UPDATE, self.updataRedState, self)
end

function removeEvent(self)
    GameDispatcher:removeEventListener(EventName.UPDATE_RECRUIT_PANEL, self.updateTab, self)

    bag.BagManager:removeEventListener(bag.BagManager.BAG_UPDATE, self.updataRedState, self)
end

function onTimer(self)
    self:updateTab()
end

function updateTab(self)
    local tabDataList = recruit.RecruitManager:getRecruitPanelTabList()

    --判断是不是可以刷新
    if #self.m_MenuList == #tabDataList then
        local isReturn = false
        for i, v1 in pairs(self.m_MenuList) do
            local isSame = false
            for i, v2 in pairs(tabDataList) do
                if v1.id == v2.id and v1.sign == v2.sign then
                    isSame = true
                    break
                end
            end
            if isSame == false then
                isReturn = true
                break
            end
        end
        if not isReturn then
            return
        end
    end

    self.m_MenuList = tabDataList

    table.sort(self.m_MenuList, function(a, b)
        return a.sort_id < b.sort_id
    end)
    for i = 1, #self.m_MenuList do
        table.sort(self.m_MenuList[i].subData, function(a, b)
            return a.sort_id < b.sort_id
        end)
    end

    if self.tabBar then
        self.tabBar:setData(self.m_MenuList)
    else
        self.tabBar = recruit.CustomFoldBar:create(self.mTabItem, self.mSubTabItem, self.mTabContent, self.onTabSelect, self, self.m_MenuList, "RecruitPanelTabItem", "RecruitPanelSubTabItem")
    end

    --先检查是否还有这个卡池
    local selectId = nil
    if self.m_selectId then
        for i, menuVo in pairs(self.m_MenuList) do
            for k, subData in pairs(menuVo.subData) do
                if subData.id == self.m_selectId then
                    selectId = self.m_selectId
                    break
                end
            end

            if selectId then
                break
            end
        end
    end

    if selectId == nil then
        for i, menuVo in pairs(self.m_MenuList) do
            if selectId == nil then
                selectId = menuVo.id
            end
            if menuVo.type == recruit.RecruitType.RECRUIT_NEW_PLAYER then
                selectId = menuVo.id
                break
            end
        end
    end

    self:selectTab(selectId)

    self:updataRedState()
end

--选中页签
function onTabSelect(self, menuVo)
    self.m_selectId = menuVo.id
    recruit.RecruitManager:setRecruitActionId(nil)

    local recruitConfigVo = recruit.RecruitManager:getRecruitConfigVo(menuVo.id)
    self.m_selectType = recruitConfigVo.type

    self:openSubView()

    self:updateMoneyBar(self.m_selectId)
end

function selectTab(self, recruit_id)
    if self.tabBar then
        self.tabBar:selectTab(recruit_id)
    end
end

function updateMoneyBar(self, recruit_id)
    local configVo = recruit.RecruitManager:getRecruitConfigVo(recruit_id)
    local costMoneyTid_one = configVo:getCostOneId()
    local costMoneyTid_ten = configVo:getCostTenId()
    if costMoneyTid_one ~= 0 and costMoneyTid_ten ~= 0 then
        if costMoneyTid_one ~= costMoneyTid_ten then
            MoneyManager:setMoneyTidList({costMoneyTid_one, costMoneyTid_ten, MoneyTid.ITIANIUM_TID})
        else
            MoneyManager:setMoneyTidList({costMoneyTid_one, MoneyTid.ITIANIUM_TID})
        end
    elseif costMoneyTid_one ~= 0 then
        MoneyManager:setMoneyTidList({costMoneyTid_one, MoneyTid.ITIANIUM_TID})
    elseif costMoneyTid_ten ~= 0 then
        MoneyManager:setMoneyTidList({costMoneyTid_ten, MoneyTid.ITIANIUM_TID})
    end
end

function updataRedState(self)
    if not self.tabBar then
        return
    end

    for i, menuVo in pairs(self.m_MenuList) do
        if table.empty(menuVo.subData) then
            local define = recruit.getMainPanelTabDefine()[menuVo.type]
            if define.redState then
                local redState = define.redState(menuVo.id)
                if redState then
                    self.tabBar:addBubble(menuVo.id, {x = 0, y = 0}, {x = 0, y = 0})
                else
                    self.tabBar:removeBubble(menuVo.id)
                end
            end
        else
            for k, subData in pairs(menuVo.subData) do
                local define = recruit.getMainPanelTabDefine()[subData.type]
                if define.redState then
                    local redState = define.redState(subData.id)
                    if redState then
                        self.tabBar:addBubble(subData.id, {x = 0, y = 0}, {x = 0, y = 0})
                    else
                        self.tabBar:removeBubble(subData.id)
                    end
                end
            end
        end
    end
end

function updateGuide(self)
    -- local nextStepData = guide.GuideManager:getNextStepData()
    -- if nextStepData and nextStepData.next_need_id ~= 0 then
    --     local tabType = 1
    --     for i = 1, #self.m_MenuList do
    --         if self.m_MenuList[i].id == nextStepData.next_need_id then
    --             tabType = self.m_MenuList[i].page
    --             break
    --         end
    --     end
    --     self:scrollToIndex(tabType)
    -- end

    if self.tabBar then
        local tabDic = self.tabBar:getItemDic()
        if tabDic then
            for tap_type, tabData in pairs(tabDic) do
                local tabItem = tabData.m_item
                for _, subTab in pairs(tabData.m_subTab) do
                    self:setGuideTrans("guide_recruit_subTabItem_" .. subTab.m_data.id, subTab:getTrans())
                end
                self:setGuideTrans("guide_recruit_tabItem_" .. tap_type, tabItem:getChildTrans("mClick"))
            end
        end

        self:setGuideTrans("guide_BtnCloseAll", self.gBtnCloseAll.transform)
    end
end

-- function scrollToIndex(self, tabType)
--     if self.isInit then
--         self:_scrollToIndex(tabType)
--     else
--         self:setTimeout(0.2, function ()
--             self:_scrollToIndex(tabType)
--             self.isInit = true
--         end)
--     end
-- end

-- function _scrollToIndex(self, tabType)
--     if self.mContentRect.rect.width < self.mScrollRectTran.rect.width then
--         return
--     end

--     tabType = tabType or self.m_curTabType
--     if self.tabBar then
--         local itemGO = self.tabBar.btnMap[tabType].m_go
--         if itemGO then
--             local itemRect = itemGO:GetComponent(ty.RectTransform)
--             local itemAnchoredPosition_X = itemRect.anchoredPosition.x + (itemRect.rect.width / 2) --item 的中心位置

--             local scroll_width = math.abs(self.mContentRect.anchoredPosition.x - self.mScrollRectTran.rect.width / 2) --在conten 中的Scoll的中心位置

--             local anchoredPosition_x = self.mContentRect.anchoredPosition.x + ((itemAnchoredPosition_X - scroll_width) * -1)
--             local minPosX = (self.mContentRect.rect.width - self.mScrollRectTran.rect.width) * -1
--             if anchoredPosition_x > 0 then
--                 anchoredPosition_x = 0
--             elseif anchoredPosition_x < minPosX then
--                 anchoredPosition_x = minPosX
--             end

--             --当前content的位置+ 需要移动的位置
--             self.mContentRect.anchoredPosition = gs.Vector2(anchoredPosition_x, self.mContentRect.anchoredPosition.y)
--         end
--     end
-- end

return _M

--[[ 替换语言包自动生成，请勿修改！
]]
