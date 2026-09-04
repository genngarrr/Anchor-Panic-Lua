--[[ 
-----------------------------------------------------
@filename       : ManualHeroController
@Description    : 故事控制器
@date           : 2023-3-27 17:41:00
@Author         : Shuai 
@copyright      : (LY) 2023 雷焰网络
-----------------------------------------------------
]] module("manual.ManualHeroController", Class.impl(manual.ManualController))

-- 模块间事件监听
function listNotification(self)
    -- 打开战员界面
    GameDispatcher:addEventListener(EventName.REQ_MANUALHERO_READ, self.updateRead, self)

    GameDispatcher:addEventListener(EventName.OPEN_MANUALHERO_FIRST, self.openManualHeroFirstPanel, self)
    GameDispatcher:addEventListener(EventName.OPEN_MANUALHERO_COMBINATION, self.openManualHeroCombinationPanel, self)
    GameDispatcher:addEventListener(EventName.OPEN_MANUAL_HERO_SUCCESS_PANEL, self.openManualHeroSuccessonPanel, self)

    GameDispatcher:addEventListener(EventName.REQ_MANUALHERO_FIRST, self.reqManualHeroFirstHandler, self)
    GameDispatcher:addEventListener(EventName.REQ_MANUALHERO_COMBINATION, self.reqManualHeroCombinHandler, self)
   
    
    
end

function registerMsgHandler(self)
    return {
        SC_ACT_FETTER_INFO = self.onHeroActHandler,
    }
end

function reqManualHeroFirstHandler(self,args)
    manual.ManualHeroManager:setActInfo(1,args.tid)
    SOCKET_SEND(Protocol.CS_ACT_SINGLE_FETTER, {
        hero_tid = args.tid,
    },Protocol.SC_ACT_FETTER_INFO)
end

function reqManualHeroCombinHandler(self,args)
    manual.ManualHeroManager:setActInfo(2,args.id)
    SOCKET_SEND(Protocol.CS_ACT_COMB_FETTER, {
        comb_id = args.id,
    },Protocol.SC_ACT_FETTER_INFO)
end

function onHeroActHandler(self,msg)
    manual.ManualHeroManager:parseManualHeroMsg(msg)
end

function updateRead(self, camp)
    manual.ManualHeroManager:reqUpdateNew(camp)
end

function openManualHeroFirstPanel(self, args)
    if self.mManualHeroFirstPanel == nil then
        self.mManualHeroFirstPanel = manual.ManualHeroFirstPanel.new()
        self.mManualHeroFirstPanel:addEventListener(View.EVENT_VIEW_DESTROY, self.onDestoryManualHeroFirstPanel, self)
    end
    self.mManualHeroFirstPanel:open(args)
end

function onDestoryManualHeroFirstPanel(self)
    self.mManualHeroFirstPanel:removeEventListener(View.EVENT_VIEW_DESTROY, self.onDestoryManualHeroFirstPanel, self)
    self.mManualHeroFirstPanel = nil
end

function openManualHeroCombinationPanel(self, args)
    if self.mManualHeroCombinationPanel == nil then
        self.mManualHeroCombinationPanel = manual.ManualHeroCombinationPanel.new()
        self.mManualHeroCombinationPanel:addEventListener(View.EVENT_VIEW_DESTROY, self.onDestoryManualHeroCombinationPanel,
            self)
    end
    self.mManualHeroCombinationPanel:open(args)
end

function onDestoryManualHeroCombinationPanel(self)
    self.mManualHeroCombinationPanel:removeEventListener(View.EVENT_VIEW_DESTROY, self.onDestoryManualHeroCombinationPanel,
        self)
    self.mManualHeroCombinationPanel = nil
end

function openManualHeroSuccessonPanel(self,args)
    if self.mManualHeroSuccessPanel == nil then
        self.mManualHeroSuccessPanel = manual.ManualHeroSuccessPanel.new()
        self.mManualHeroSuccessPanel:addEventListener(View.EVENT_VIEW_DESTROY, self.onDestoryManualHeroSuccessPanel,
            self)
    end
    self.mManualHeroSuccessPanel:open(args)
end

function onDestoryManualHeroSuccessPanel(self)
    self.mManualHeroSuccessPanel:removeEventListener(View.EVENT_VIEW_DESTROY, self.onDestoryManualHeroSuccessPanel,
        self)
    self.mManualHeroSuccessPanel = nil
end

return _M

--[[ 替换语言包自动生成，请勿修改！
]]
