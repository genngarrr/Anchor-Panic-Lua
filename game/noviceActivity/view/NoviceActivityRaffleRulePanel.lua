-- @FileName:   NoviceActivityRaffleRulePanel.lua
-- @Description:   描述
-- @Author: ZDH
-- @Date:   2024-12-20 17:42:57
-- @Copyright:   (LY) 2024 锚点降临

module("game.noviceActivity.view.NoviceActivityRaffleRulePanel", Class.impl(View))

UIRes = UrlManager:getUIPrefabPath("noviceActivity/NoviceActivityRaffleRulePanel.prefab")

destroyTime = -1 -- 自动销毁时间-1默认
panelType = 2    -- 窗口类型 1 全屏 2 弹窗

-- 构造函数
function ctor(self)
    super.ctor(self)
    self:setSize(820, 519)
    self:setTxtTitle(_TT(53630))
end

function initData(self)
    self.propsList = {}
    self.itemList = {}
    self.itemGroupList = {}
end

-- 初始化
function configUI(self)
    super.configUI(self)

    self.mContent = self:getChildTrans("mContent")
    self.mItem = self:getChildGO("mItem")
    self.mGroupItem = self:getChildGO("mGroupItem")
end

-- 激活
function active(self, args)
    super.active(self, args)

    self:clearItem()
    self:createItem()
end

-- 反激活（销毁工作）
function deActive(self)
    super.deActive(self)

    self:clearItem()
end

function clearItem(self)
    self:clearTimer()
    for k, v in pairs(self.propsList) do
        v:poolRecover()
        self.propsList[k] = nil
    end
    self.propsList = {}

    for k, v in pairs(self.itemList) do
        v:poolRecover()
        self.itemList[k] = nil
    end
    self.itemList = {}

    for k, v in pairs(self.itemGroupList) do
        v:poolRecover()
        self.itemGroupList[k] = nil
    end
    self.itemGroupList = {}

    self.index = 0
end

function clearTimer(self)
    if self.m_createTimer then
        LoopManager:removeFrameByIndex(self.m_createTimer)
        self.m_createTimer = nil
    end
end

function createItem(self)
    self:clearTimer()
    self.index = self.index + 1
    local noviceStrollData = noviceActivity.NoviceActivityManager:getNoviceStrollData(self.index)
    if not noviceStrollData then
        return
    end
    local groupItem = SimpleInsItem:create(self.mGroupItem, self.mContent, "mGroupItem")
    table.insert(self.itemGroupList, groupItem)

    groupItem:getChildGO("mTxtTitle"):GetComponent(ty.Text).text = _TT(3071, self.index)

    self.smallItemIndex = 0
    self.m_createTimer = LoopManager:addFrame(1, #noviceStrollData.mStrollDic, self, self.createSmall, self.createItem)
end

function createSmall(self)
    local noviceStrollData = noviceActivity.NoviceActivityManager:getNoviceStrollData(self.index)
    self.smallItemIndex = self.smallItemIndex + 1
    local data = noviceStrollData.mStrollDic[self.smallItemIndex]
    local mItemGrid = self.itemGroupList[self.index]:getChildTrans("mItemGrid")
    local item = SimpleInsItem:create(self.mItem, mItemGrid, "mItem")
    table.insert(self.itemList, item)

    item:getChildGO("mTextProbability"):GetComponent(ty.Text).text = data.pr .. "%"
    local PropGrid = PropsGrid:createByData({
        tid = data.reward[1],
        num = data.reward[2],
        parent = item:getTrans(),
        scale = 0.8,
        showUseInTip = true
    })
    table.insert(self.propsList, PropGrid)
end

return _M
