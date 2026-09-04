--[[ 
-----------------------------------------------------
@filename       : ActivityController
@Description    : 运营活动控制器
@date           : 2020-12-09 19:49:34
@Author         : Jacob
@copyright      : (LY) 2020 雷焰网络
-----------------------------------------------------
]]
module('game.activity.controller.ActivityController', Class.impl(Controller))


--构造函数
function ctor(self, cusMgr)
    super.ctor(self, cusMgr)
end

--析构函数
function dtor(self)
end

-- Override 重新登录
function reLogin(self)
    super.reLogin(self)
    if self.mMgr and next(self.mMgr) then
        for _, mgr in pairs(self.mMgr) do
            if mgr.resetData then
                mgr:resetData()
            end
        end
    end
end

--游戏开始的回调
function gameStartCallBack(self)

end

--模块间事件监听
function listNotification(self)
    GameDispatcher:addEventListener(EventName.UPDATE_ACTIVITY_RED, self.updateRed, self)
    GameDispatcher:addEventListener(EventName.ACTIVITY_OPEN_UPDATE, self.updateRed, self)
    GameDispatcher:addEventListener(EventName.ACTIVITY_CLOSE_UPDATE, self.updateRed, self)
    GameDispatcher:addEventListener(EventName.OPEN_ACTIVITY_PANEL, self.onOpenActivityPanel, self)
    GameDispatcher:addEventListener(EventName.REQ_LIMIT_SHOP_BUY, self.onReqLimitShopGiftHandler, self)
    role.RoleManager:getRoleVo():addEventListener(role.RoleVo.CHANGE_PLAYER_MONEY, self.updateRed, self)
    GameDispatcher:addEventListener(EventName.REQ_ACTIVITY_INVEST_BUY, self.onReqInvestBuyHandler, self)
    GameDispatcher:addEventListener(EventName.REQ_ACTIVITY_INVEST_GET, self.onReqInvestGetHandler, self)  
    GameDispatcher:addEventListener(EventName.OPEN_ACTIVITY_WECHAT, self.onOpenActivityWeChatHandler, self)
    GameDispatcher:addEventListener(EventName.OPEN_ACTIVITY_INVEST_BUY_VIEW, self.onOpenInvestBuyView, self)
    GameDispatcher:addEventListener(EventName.OPEN_ACTIVITY_SELECT_VIEW, self.onOpenActivitySelectView, self)
    
    GameDispatcher:addEventListener(EventName.REQ_REC_CARNIVAL_GIFT_AWARD, self.onReqCarnivalGiftAwardHandler, self)
    GameDispatcher:addEventListener(EventName.REQ_REC_CARNIVAL_GIFT_AWARD2, self.onReqCarnivalGiftAwardHandler2, self)
    GameDispatcher:addEventListener(EventName.OPEN_LIMIT_SHOP_BUY_PANEL, self.onOpenActivityLimitShopGiftHandler, self)
    GameDispatcher:addEventListener(EventName.REQ_OPEN_SOME_VIEW_UNLOCK_GIFT, self.onReqOpenSomeViewUnlockHandler, self)
    GameDispatcher:addEventListener(EventName.OPEN_ACTIVITY_SPECIAL_SUPPLY_PANEL, self.onOpenActivitySpecialSupplyPanel, self)
    GameDispatcher:addEventListener(EventName.REQ_REC_RECHARGENICE_GIFT_AWARD, self.onReqRecRechargeNiceGuftAwardHandler, self)

    GameDispatcher:addEventListener(EventName.REQ_ACTIVITY_SELECT_BUY_SAVE, self.onReqActivitySaveHandler, self)

    GameDispatcher:addEventListener(EventName.OPEN_ACTIVITY_FASHION_HIS_VIEW, self.onOpenActivityFashionHisView, self)
end

--注册server发来的数据
function registerMsgHandler(self)
    return {
        SC_ACTIVITY_OPEN_INFO = self.onActivityOpenHandler,
        SC_ACTIVITY_OVER_INFO = self.onActivityOverHandler,
        --- *s2c* 新手活动-入口开启 24250
        SC_ACTIVITY_NOVICE_START = self.onActivityNoviceStartHandler,
        -- *s2c* 关注有礼面板信息 24215
        SC_CONCERN_GIFT_PANEL = self.onActivitySubcribe_Panel_Handler,
        --- *s2c* 领取关注有礼奖励返回结果 24217
        SC_GAIN_CONCERN_GIFT = self.onActivitySubcribe_Receiove_Handler,
        --- *s2c* 限时礼包面板信息 24097
        SC_LIMITED_GIFT_PANEL = self.onLimitShopGiftHandler,
        --- *s2c* 购买直购礼包道具 24404
        SC_LIMITED_GIFT_BUY=self.onUpdateBuyLimitShopGiftHandler,
        --- *s2c* 狂欢好礼面板 24420
        SC_ACTIVITY_PAY_SIGN_PANEL = self.onUpdateRechargeNiceGiftHandler,
        --- *s2c* 狂欢好礼2面板 24420
        SC_ACTIVITY_PAY_SIGN2_PANEL = self.onUpdateRechargeNiceGiftHandler2,
        --- *s2c* 充值好礼状态 24415
        SC_ACTIVITY_PAY_PANEL = self.onRechargeNiceGiftStateHandler,        
        SC_INVEST_PANEL = self.onInvestPanelHandler,

        SC_INVEST_BUY_GEAR = self.onInvestBuyGearHandler,

        SC_GET_INVEST = self.onInvestGetHandler,
    
        SC_SELECT_GIFT_LIST_INFO = self.onSelectGiftInfoHandler,

        ---往期商品 时装回廊
        SC_ACTIVITY_EXPIRED_GOODS = self.onActivityExpiredGoodsHandler,
    }
end

function updateRed(self)
    for _, activityVo in ipairs(activity.ActivityConst:getTabList()) do
        local isFlag = activityVo.isBubble
        mainui.MainUIManager:setRedFlag(funcopen.FuncOpenConst.FUNC_ID_ACTIVITY, isFlag, activityVo.funcId)
    end
    for _, activityVo in ipairs(activity.ActivitySpecialSupplyConst:getTabList()) do
        local isFlag = activityVo.isBubble
        mainui.MainUIManager:setRedFlag(funcopen.FuncOpenConst.FUNC_ID_SPECIALSUPPLY, isFlag, activityVo.funcId)
    end
end


-- 限时商店礼包界面
function onLimitShopGiftHandler(self, msg)
    activity.ActitvityExtraManager:parsenLimitShopGiftMsg(msg)
end
-- 限时商店礼包购买
function onReqLimitShopGiftHandler(self, msg)
    SOCKET_SEND(Protocol.CS_LIMITED_GIFT_BUY, {goods_id=msg.id,num=msg.num}, Protocol.SC_LIMITED_GIFT_BUY)
end

--- *c2s* 打开某个面板解锁限时礼包 24405
function onReqOpenSomeViewUnlockHandler(self, msg)
    SOCKET_SEND(Protocol.CS_LIMITED_GIFT_OPEN_PANEL, {panel_id=msg.id}, Protocol.SC_LIMITED_GIFT_PANEL)
end

-- 狂欢好礼面板
function onUpdateRechargeNiceGiftHandler(self, msg)
    activity.ActitvityExtraManager:updateRechargeNiceGiftInfoMsg(msg)
end

-- 狂欢好礼2面板
function onUpdateRechargeNiceGiftHandler2(self, msg)
    activity.ActitvityExtraManager:updateRechargeNiceGiftInfoMsg2(msg)
end

-- 充值好礼状态
function onRechargeNiceGiftStateHandler(self, msg)
    activity.ActitvityExtraManager:updateRechargeNiceGiftStateMsg(msg)
end
-- 充值好礼领取奖励
function onReqRecRechargeNiceGuftAwardHandler(self)
    SOCKET_SEND(Protocol.CS_ACTIVITY_PAY_GAIN_AWARD, nil, Protocol.SC_ACTIVITY_PAY_PANEL)
end

function onReqActivitySaveHandler(self,args)
    SOCKET_SEND(Protocol.CS_SELECT_GIFT_SELECT, {gift_id = args.giftId,grid_select_list = args.gridSelectList}, Protocol.SC_SELECT_GIFT_LIST_INFO)
end

function onReqInvestBuyHandler(self,msg)
    SOCKET_SEND(Protocol.CS_INVEST_BUY_GEAR, {grade_id=msg.id}, Protocol.SC_INVEST_BUY_GEAR)
end

function onReqInvestGetHandler(self,msg)
    SOCKET_SEND(Protocol.CS_GET_INVEST, {type=msg.type,reward_id = msg.id}, Protocol.SC_GET_INVEST)
end

-- 狂欢好礼礼包领取
function onReqCarnivalGiftAwardHandler(self, msg)
    SOCKET_SEND(Protocol.CS_ACTIVITY_PAY_SIGN_GAIN_AWARD, {id=msg}, Protocol.SC_ACTIVITY_PAY_SIGN_PANEL)
end

-- 狂欢好礼礼包领取2
function onReqCarnivalGiftAwardHandler2(self, msg)
    SOCKET_SEND(Protocol.CS_ACTIVITY_PAY_SIGN2_GAIN_AWARD, {id=msg}, Protocol.SC_ACTIVITY_PAY_SIGN2_PANEL)
end

function onInvestPanelHandler(self,msg)
    activity.ActivityManager:parseInvestPanelMsg(msg)
end

function onInvestBuyGearHandler(self,msg)
    if msg.result == 1 then
        activity.ActivityManager:updateInvestBuy(msg)
    else
        gs.Message.Show(_TT(26332))
    end
end

function onInvestGetHandler(self,msg)
    if msg.result == 1 then
        activity.ActivityManager:updateInvestGet(msg)
    else
        gs.Message.Show(_TT(77751))
    end
end

function onSelectGiftInfoHandler(self,msg)
    activity.ActitvityExtraManager:updateSelectGiftMsgData(msg)
    local rmbBuy ,buyId = activity.ActitvityExtraManager:getIsRMBBuy()
    if rmbBuy then
        activity.ActitvityExtraManager:setIsRMBBuy(buyId,false)
        recharge.sendRecharge(recharge.RechargeType.SELECT_GIFT, nil, buyId)
    end
end


-- 限时商店礼包购买
function onUpdateBuyLimitShopGiftHandler(self, msg)
    activity.ActitvityExtraManager:updateLimitShopGiftMsg(msg)
end
-- 活动开启登录推送
function onActivityOpenHandler(self, msg)
    activity.ActivityManager:parseActivityOpenMsg(msg)
end

-- 活动关闭推送
function onActivityOverHandler(self, msg)
    activity.ActivityManager:parseActivityOverMsg(msg)
end

--- *s2c* 新手活动-入口开启 24250
function onActivityNoviceStartHandler(self, msg)
    activity.ActivityManager:parseActivityNoviceUpdateMsg(msg.end_time)
end

---  *s2c* 关注有礼面板信息 24215
function onActivitySubcribe_Panel_Handler(self, msg)
    activity.ActitvityExtraManager:parsenMsg(msg)
end

--- *s2c* 领取关注有礼奖励返回结果 24217
function onActivitySubcribe_Receiove_Handler(self, msg)
    if msg.result == 1 then
        activity.ActitvityExtraManager:updateMsg(msg)
    else
        gs.Message.Show(_TT(77751))
    end
end


function onActivityExpiredGoodsHandler(self,msg)
    activity.ActitvityExtraManager:parseFashionHisBuyMsg(msg)
    
end
----------------------------------------------------------
----------------------------------------------------------

function onOpenActivityPanel(self, args)
    if not args then
        args = {}
    end
    if not args.type then
        if activity.ActivityConst:getTabList()[1] then
            args.type = activity.ActivityConst:getTabList()[1].page
        else
            gs.Message.Show("活动尚未开启")
            return
        end
    end
    if args.type and args.type == activity.ActivityConst.ACTIVITY_GROUTHFUND and purchase.GrowthFundManager:getIsGrowthFundOver() then
        gs.Message.Show("已全部领取")
        return
    end
    if self.mActivityPanel == nil then
        self.mActivityPanel = activity.ActivityPanel.new()
        self.mActivityPanel:addEventListener(View.EVENT_VIEW_DESTROY, self.onDestroyActivityPanel, self)
    end
    self.mActivityPanel:open(args)
end

function onDestroyActivityPanel(self)
    self.mActivityPanel:removeEventListener(View.EVENT_VIEW_DESTROY, self.onDestroyActivityPanel, self)
    self.mActivityPanel = nil
end

function onOpenActivitySpecialSupplyPanel(self, args)
    if not args then
        args = {}
    end
    local tabList = activity.ActivitySpecialSupplyConst:getTabList()
    if not args.type then
        if tabList[1] then
            args.type = tabList[1].page
        else
            gs.Message.Show(_TT(95053))
            return
        end
    else
        local isHadAct = false
        for _, tabData in pairs(tabList) do
            if tabData.page == args.type then
                isHadAct = true
                break
    end
        end
        if not isHadAct then
            gs.Message.Show(_TT(95053))
            return
        end
    end
    if self.mActivitySpecialSupplyPanel == nil then
        self.mActivitySpecialSupplyPanel = activity.ActivitySpecialSupplyPanel.new()
        self.mActivitySpecialSupplyPanel:addEventListener(View.EVENT_VIEW_DESTROY, self.onDestroyActivitySpecialSupplyPanel, self)
    end
    self.mActivitySpecialSupplyPanel:open(args)
end

function onDestroyActivitySpecialSupplyPanel(self)
    self.mActivitySpecialSupplyPanel:removeEventListener(View.EVENT_VIEW_DESTROY, self.onDestroyActivitySpecialSupplyPanel, self)
    self.mActivitySpecialSupplyPanel = nil
end

-- 打开关注活动 微信界面
function onOpenActivityWeChatHandler(self, args)
    if self.mActivitySubscribe == nil then
        self.mActivitySubscribe = UI.new(activity.ActivitySubscribeWeChat)
        self.mActivitySubscribe:addEventListener(View.EVENT_VIEW_DESTROY, self.onDestroyActivityWeChatPanel, self)
    end
    self.mActivitySubscribe:open(args)
end

function onDestroyActivityWeChatPanel(self)
    self.mActivitySubscribe:removeEventListener(View.EVENT_VIEW_DESTROY, self.onDestroyActivityWeChatPanel, self)
    self.mActivitySubscribe = nil
end

-- 限时礼包
function onOpenActivityLimitShopGiftHandler(self, args)
    if not activity.ActitvityExtraManager:getLimitShopTypeDic()[args.type] then
        return
    end
    if fight.SceneManager:isInFightScene() then--策划要求非战斗界面再打开当前弹窗
        if self.waitTimeSn then
            LoopManager:removeTimerByIndex(self.waitTimeSn)
            self.waitTimeSn=nil
        end
        self.waitTimeSn = LoopManager:addTimer(1.3,1.3,self,function ()
            GameDispatcher:dispatchEvent(EventName.OPEN_LIMIT_SHOP_BUY_PANEL,{type=args.type})
        end)
        return
    end
    if self.waitTimeSn then
        LoopManager:removeTimerByIndex(self.waitTimeSn)
        self.waitTimeSn=nil
    end
    if self.mActivityLimitShopGift == nil then
        self.mActivityLimitShopGift = UI.new(activity.ActivityLimitShopGift)
        self.mActivityLimitShopGift:addEventListener(View.EVENT_VIEW_DESTROY, self.onDestroyActivityLimitShopGiftPanel, self)
    end
    self.mActivityLimitShopGift:open(args)
end

function onDestroyActivityLimitShopGiftPanel(self)
    self.mActivityLimitShopGift:removeEventListener(View.EVENT_VIEW_DESTROY, self.onDestroyActivityLimitShopGiftPanel, self)
    self.mActivityLimitShopGift = nil
end


function onOpenInvestBuyView(self,args)
    if self.mActivityInvestBuyView == nil then
        self.mActivityInvestBuyView = UI.new(activity.ActivityInvestBuyView)
        self.mActivityInvestBuyView:addEventListener(View.EVENT_VIEW_DESTROY, self.onDestroyActivityInvestBuyView, self)
    end
    self.mActivityInvestBuyView:open(args)
end

function onDestroyActivityInvestBuyView(self)
    self.mActivityInvestBuyView:removeEventListener(View.EVENT_VIEW_DESTROY, self.onDestroyActivityInvestBuyView, self)
    self.mActivityInvestBuyView = nil
end


function onOpenActivitySelectView(self,args)
    if self.mActivitySelectView == nil then
        self.mActivitySelectView = UI.new(activity.ActivitySelectView)
        self.mActivitySelectView:addEventListener(View.EVENT_VIEW_DESTROY, self.onDestroyActivitySelectView, self)
    end
    self.mActivitySelectView:open(args)
end

function onDestroyActivitySelectView(self)
    self.mActivitySelectView:removeEventListener(View.EVENT_VIEW_DESTROY, self.onDestroyActivitySelectView, self)
    self.mActivitySelectView = nil
end

function onOpenActivityFashionHisView(self,args)
    if self.mActivityFahsionHisView == nil then
        self.mActivityFahsionHisView = UI.new(activity.ActivityFashionHisView)
        self.mActivityFahsionHisView:addEventListener(View.EVENT_VIEW_DESTROY, self.onDestroyActivityFashionHisView, self)
    end
    self.mActivityFahsionHisView:open(args)
end

function onDestroyActivityFashionHisView(self)
    self.mActivityFahsionHisView:removeEventListener(View.EVENT_VIEW_DESTROY, self.onDestroyActivityFashionHisView, self)
    self.mActivityFahsionHisView = nil
end

return _M

--[[ 替换语言包自动生成，请勿修改！
]]