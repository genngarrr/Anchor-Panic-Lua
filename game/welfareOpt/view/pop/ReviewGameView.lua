--[[
-----------------------------------------------------
    @CreateTime:2025/1/24 14:46:44
    @Author:zengweiwen
    @Copyright: (LY)2021 雷焰网络
    @Description:游戏评分跳转弹窗
]]

module("game.welfareOpt.view.pop.ReviewGameView", Class.impl(View))
UIRes = UrlManager:getUIPrefabPath("welfareOpt/pop/ReviewGameView.prefab")
destroyTime = 0 -- 自动销毁时间-1默认 0即时销毁 999不销毁
panelType = -1   -- 窗口类型 1 全屏 2 弹窗 -1无底图弹窗
escapeClose = 0 -- 是否能通过esc关闭窗口

function ctor(self)
    super.ctor(self)
end

function initData(self)
    self.starItemList = {}
end

function configUI(self)
    for i = 1, 5 do
        local itemData = {
            btn = self:getChildGO("mBtnStar" .. i),
            selectImg = self:getChildGO("mImgSelect" .. i),
        }
        table.insert(self.starItemList, itemData)
    end
end

function initViewText(self)
    super.initViewText(self)
    self:setTextLabel("mTxtTips1", 10000014)
    self:setTextLabel("mTxtTips2", 10000015)
end

function addAllUIEvent(self)
    super.addAllUIEvent(self)
    for i, itemData in ipairs(self.starItemList) do
        self:addUIEvent(itemData.btn, function (instance)
            instance:onClickStarHandler(i)
        end)
    end
end

function active(self, args)
    super.active(self)

    if self.gImgBg then
        self:removeOnClick(self.gImgBg)
    end
    self:updateStarSelect(0)
end

function deActive(self)
    super.deActive(self)
    self.starItemList = {}
end

function updateStarSelect(self, index)
    for i, itemData in ipairs(self.starItemList) do
        itemData.selectImg:SetActive(index >= i)
    end
end

function onClickStarHandler(self, index)
    self:updateStarSelect(index)
    activity.ActitvityExtraManager:sendSubscribeRequest(3)
    activity.ActitvityExtraManager:sendReceiiveSocket(3)
    if index <= 3 then
        gs.Message.Show(_TT(10000018))
    else
        sdk.SdkManager:requestAppScore()
    end
    self:onClickClose()
end

return _M
