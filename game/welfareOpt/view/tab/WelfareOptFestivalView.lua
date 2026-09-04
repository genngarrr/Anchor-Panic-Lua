--[[
-----------------------------------------------------
@filename       : WelfareOptFestivalView
@Description    : 节日福利
@Author         : sxt
@copyright      : (LY) 2020 雷焰网络
-----------------------------------------------------
]]
module("game.welfareOpt.view.tab.WelfareOptFestivalView", Class.impl(TabSubView))

UIRes = UrlManager:getUIPrefabPath("welfareOpt/tab/WelfareOptFestivalView.prefab")

function initData(self)
    self.mFestivalItemList = {}

    self.mFestivalPropsItemList = {}
end

function ctor(self)
    super.ctor(self)
end

-- 析构
function dtor(self)
end

function configUI(self)
    self.mFestivalScroll = self:getChildGO("mFestivaScroll"):GetComponent(ty.ScrollRect)
    self.mFestivalSingleItem = self:getChildGO("mFestivalSingleItem")
    self.mFestivaPropsItem = self:getChildGO("mFestivaPropsItem")

    self.mTxtRem = self:getChildGO("mTxtRem"):GetComponent(ty.Text)
    self.mTxtRemTime = self:getChildGO("mTxtRemTime"):GetComponent(ty.Text)
end

function active(self)
    super.active(self)
    GameDispatcher:addEventListener(EventName.UPDATE_FESTIVAL_REWARD, self.showPanel, self)
    self:showPanel(true)
end

function deActive(self)
    super.deActive(self)
    GameDispatcher:removeEventListener(EventName.UPDATE_FESTIVAL_REWARD, self.showPanel, self)
    self:clearFestivalItem()
end

function initViewText(self)
    self.mTxtRem.text = _TT(85014)
end

function addAllUIEvent(self)
end

function showPanel(self, isInit)
    self:clearFestivalItem()
    local signDay = welfareOpt.WelfareOptManager:getSignDay()
    local list = welfareOpt.WelfareOptManager:getFestivalData()

    local mainActivityVo = mainActivity.MainActivityManager:getMainActivityVoById(activity.ActivityId.Festival)
    self.mTxtRemTime.text = mainActivityVo:getRemainingTime()

    for i = 1, #list do
        local vo = list[i]
        local geted = welfareOpt.WelfareOptManager:getSignRewardGeted(i)

        local item = SimpleInsItem:create(self.mFestivalSingleItem, self.mFestivalScroll.content, "FestivalSingleItem")
        item:getGo():SetActive(false)

        if isInit == true then
            LoopManager:addFrame(4 + i * 2, 1, self, function()
                local go = item:getGo()
                if not go then
                   return 
                end
                go:SetActive(true)
                local tween = item:getGo():GetComponent(ty.UIDoTween)
                if tween then
                    tween:BeginTween()
                end
            end)
        else
            item:getGo():SetActive(true)
        end

        item:getChildGO("mTxtDay"):GetComponent(ty.Text).text = "0" .. i

        item:getChildGO("mGeted"):SetActive(geted)
        item:getChildGO("mTxtCanGet"):GetComponent(ty.Text).text = geted and _TT(48118) or _TT(vo.language)
        item:getChildGO("mImgItemBg"):GetComponent(ty.AutoRefImage):SetImg(i > signDay and UrlManager:getPackPath("holiday/holiday_02.png") or UrlManager:getPackPath("holiday/holiday_01.png"), false)

        item:getChildGO("mTxtCanGet"):GetComponent(ty.Text).color = i > signDay and gs.ColorUtil.GetColor("c7ced4ff") or gs.ColorUtil.GetColor("DEBDB1ff")

        if geted == false and i <= signDay then
            item:getChildGO("mReceive"):SetActive(true)
            item:getChildGO("mBtnClick"):SetActive(true)
            RedPointManager:add(item:getChildGO("mImgItemBg"):GetComponent(ty.RectTransform), nil, 64, 203)
        else
            item:getChildGO("mReceive"):SetActive(false)
            item:getChildGO("mBtnClick"):SetActive(false)
            RedPointManager:remove(item:getChildGO("mImgItemBg"):GetComponent(ty.RectTransform))
        end

        for j = 1, #vo.mReward do
            local itemData = vo.mReward[j]
            local propsItem = SimpleInsItem:create(self.mFestivaPropsItem, item:getChildTrans("mPropsContent"), "FestivaPropsItem")
            
            local passUrl = UrlManager:getPackPath("holiday/holiday_03.png")
            local defUrl = UrlManager:getPackPath("holiday/holiday_08.png")
            propsItem.m_go:GetComponent(ty.AutoRefImage):SetImg(i > signDay and passUrl or defUrl,false)
  
            propsItem:getChildGO("mPropsImg"):GetComponent(ty.AutoRefImage):SetImg(UrlManager:getPropsIconUrl(itemData[1]), false)
            propsItem:getChildGO("mTxtCount"):GetComponent(ty.Text).text = "x" .. itemData[2]
            propsItem:addUIEvent("mPropsImg", function()
                local propsVo = props.PropsManager:getPropsConfigVo(itemData[1])
                TipsFactory:propsTips({propsVo = propsVo, isShowUseBtn = nil}, {rectTransform = propsItem:getChildTrans("mPropsImg")})
            end)

            table.insert(self.mFestivalPropsItemList, propsItem)
        end

        item:addUIEvent("mBtnClick", function()
            if geted then
                gs.Message.Show(_TT(48118))
            elseif i > signDay then
                gs.Message.Show(_TT(list[i].language))
            else
                GameDispatcher:dispatchEvent(EventName.REQ_FESTIVAL_REWARD, {
                    day = i
                })
            end
        end)

        table.insert(self.mFestivalItemList, item)
    end
end

function clearFestivalItem(self)
    self:clearFestivalPropsItem()
    for i = 1, #self.mFestivalItemList do
        self.mFestivalItemList[i]:poolRecover()
    end
    self.mFestivalItemList = {}
end

function clearFestivalPropsItem(self)
    for i = 1, #self.mFestivalPropsItemList do
        self.mFestivalPropsItemList[i]:poolRecover()
    end
    self.mFestivalPropsItemList = {}
end

return _M
