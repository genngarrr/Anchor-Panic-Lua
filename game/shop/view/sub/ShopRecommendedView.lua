--[[ 
-----------------------------------------------------
@filename       : ShopRecommendedView
@Description    : 碎片商店内容页
@date           : 2022-02-08 11:38:16
@Author         : Jacob
@copyright      : (LY) 2022 雷焰网络
-----------------------------------------------------
]]
--
module('game.shop.view.sub.ShopRecommendedView', Class.impl(TabSubView))

UIRes = UrlManager:getUIPrefabPath("shop/ShopRecommendedView.prefab")
function ctor(self)
    super.ctor(self)
end

function initData(self)
    self.mItemList = {}
end

function configUI(self)
    super.configUI(self)
    self.mBtnPreview = self:getChildGO("mBtnPreview")
    self.mGroupGrowth = self:getChildGO("mGroupGrowth")
    self.mGroupMonthly = self:getChildGO("mGroupMonthly")
    self.mGroupFashion = self:getChildGO("mGroupFashion")
    self.mGroupStrength = self:getChildGO("mGroupStrength")
    self.mGroupFirstCharge = self:getChildGO("mGroupFirstCharge")
    self.mGroupAwardTrans = self:getChildTrans("mGroupAwardTrans")
    self.mTxtDay = self:getChildGO("mTxtDay"):GetComponent(ty.Text)
    self.mTxtGrowthTitle = self:getChildGO("mTxtGrowthTitle"):GetComponent(ty.Text)
    self.mTxtImmediately1 = self:getChildGO("mTxtImmediately1"):GetComponent(ty.Text)
    self.mTxtImmediately2 = self:getChildGO("mTxtImmediately2"):GetComponent(ty.Text)
    self.mTxtImmediately3 = self:getChildGO("mTxtImmediately3"):GetComponent(ty.Text)
    self.mTxtStrengthGrowthTitle = self:getChildGO("mTxtStrengthGrowthTitle"):GetComponent(ty.Text)
end

function active(self, args)
    super.active(self, args)
    self:updateview()
end

function deActive(self)
    super.deActive(self)
    self:removeAllItem()
end

--[[ 
    初始化界面的静态文本，图片字
    每次打开界面都会重新读取，多语言切换时可以及时更新
]]
function initViewText(self)
    self.mTxtDay.text=_TT(10000344)
    self.mTxtGrowthTitle.text=_TT(10000345)
    self.mTxtStrengthGrowthTitle.text=_TT(10000541)
    self.mTxtImmediately1.text = _TT(10000343)--"購買立得"
    self.mTxtImmediately2.text = _TT(10000343)--"購買立得*"
    self.mTxtImmediately3.text = _TT(10000343)--"購買立得:"

    local rechargeVo_MONTH_CARD = recharge.RechargeManager:getRechargeVoByDetail(recharge.RechargeType.MONTH_CARD)
    local str_MONTH_CARD = _TT(10000261, rechargeVo_MONTH_CARD.RMB)
    str_MONTH_CARD = sdk.ChannelData:checkChannelText(str_MONTH_CARD)
    self:getChildGO("mTxtMoney2s"):GetComponent(ty.Text).text = str_MONTH_CARD

    local rechargeVo_GROWTH_FUND_BUY = recharge.RechargeManager:getRechargeVoByDetail(recharge.RechargeType.GROWTH_FUND_BUY)
    local str_GROWTH_FUND_BUY = _TT(10000261, rechargeVo_GROWTH_FUND_BUY.RMB)
    str_GROWTH_FUND_BUY = sdk.ChannelData:checkChannelText(str_GROWTH_FUND_BUY)
    self:getChildGO("mTxtMoney2"):GetComponent(ty.Text).text = str_GROWTH_FUND_BUY

    local rechargeVo_STRENGTH_CARD = recharge.RechargeManager:getRechargeVoByDetail(recharge.RechargeType.STRENGTH_CARD)
    local str_STRENGTH_CARD = _TT(10000261, rechargeVo_STRENGTH_CARD.RMB)
    str_STRENGTH_CARD = sdk.ChannelData:checkChannelText(str_STRENGTH_CARD)
    self:getChildGO("mTxtStrengthMoney"):GetComponent(ty.Text).text = str_STRENGTH_CARD

    self:getChildGO("mTxtFirstChargeDesc1"):GetComponent(ty.Text).text = sdk.ChannelData:checkChannelText(_TT(10000196))
    self:getChildGO("mTxtFirstChargeDesc2"):GetComponent(ty.Text).text = sdk.ChannelData:checkChannelText(_TT(10000197))

    self:setTextLabel("mTxtImmediatelyNumStrengthGrowth", 10000540)
end

-- UI事件管理
function addAllUIEvent(self)
    self:addUIEvent(self.mBtnPreview, self.onClickLockHandler)
    self:addUIEvent(self.mGroupGrowth, self.onClickHandler, nil, LinkCode.GrowthFund)
    self:addUIEvent(self.mGroupMonthly, self.onClickBuyMonthly)
    self:addUIEvent(self.mGroupFashion, self.onClickHandler, nil, LinkCode.FashionShop)
    self:addUIEvent(self.mGroupStrength, self.onClickBuyStrength)
end
--跳转id
function onClickHandler(self, uicode)
    GameDispatcher:dispatchEvent(EventName.OPEN_LINK_UI, { linkId = uicode })
end

function onClickBuyMonthly(self)
    if (purchase.MonthCardManager:getHadBuyTimes() < sysParam.SysParamManager:getValue(SysParamType.MONTY_CARD_LIMIT_BUY_TIMES)) then
        recharge.sendRecharge(recharge.RechargeType.MONTH_CARD, nil, nil)
    else
        gs.Message.Show(_TT(50028))
    end
end

function onClickBuyStrength(self)
    if (purchase.MonthCardManager:getStrengthBuyTimes() < sysParam.SysParamManager:getValue(SysParamType.STRENGTH_BUY_MAX_COUNT)) then
        recharge.sendRecharge(recharge.RechargeType.STRENGTH_CARD, nil, nil)
    else
        gs.Message.Show(_TT(50028))
    end
end

function updateview(self)

    if not firstCharge.FirstChargeManager:getIsReCharge() then
        self.mGroupFashion:SetActive(false)
        self.mGroupFirstCharge:SetActive(true)
        
        self:removeAllItem()
        local firstChargeList = firstCharge.FirstChargeManager:getFirstChargeList()
        for _, firstChargeVo in ipairs(firstChargeList) do
            for i, awardVo in ipairs(firstChargeVo:getItemList()) do
                local propGrid = PropsGrid:createByData({ tid = awardVo[1], num = awardVo[2], parent = self.mGroupAwardTrans, scale = 0.54, showUseInTip = true })
                propGrid:setIsShowCanRec(true)
                table.insert(self.mItemList, propGrid)
            end

        end
    else
        self.mGroupFashion:SetActive(true)
        self.mGroupFirstCharge:SetActive(false)
    end


    self.mGroupGrowth:SetActive(not purchase.GrowthFundManager:getIsGrowthFundMoney())
    self.mGroupStrength:SetActive(purchase.GrowthFundManager:getIsGrowthFundMoney())
end

function removeAllItem(self)
    if #self.mItemList > 0 then
        for _, item in ipairs(self.mItemList) do
            item:poolRecover()
            item = nil
        end
        self.mItemList = {}
    end
end

--查看泠详情
function onClickLockHandler(self)
    GameDispatcher:dispatchEvent(EventName.OPEN_HERO_RECRUITINFOPANEL, { heroTid = 1004 })
end

return _M

--[[ 替换语言包自动生成，请勿修改！
	语言包: _TT(25034):	"辅助"
	语言包: _TT(25033):	"输出"
	语言包: _TT(25032):	"坦克"
	语言包: _TT(25196):	"全部"
]]