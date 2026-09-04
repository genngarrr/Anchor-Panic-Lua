module("manual.ManualHeroComItem", Class.impl("lib.component.BaseItemRender"))

function onInit(self, go)
    super.onInit(self, go)
    self.heroCardList = {}
    self.mHeroRoot = self:getChildTrans("heroRoot")
    self.mBtnAct = self:getChildGO("mBtnAct")
    self.mTxtName = self:getChildGO("mTxtName"):GetComponent(ty.Text)
    self.mImgAttr = self:getChildGO("mImgAttr"):GetComponent(ty.AutoRefImage)
    self.mImgIcon = self:getChildGO("mImgIcon"):GetComponent(ty.AutoRefImage)
    self.mTxtValue = self:getChildGO("mTxtValue"):GetComponent(ty.Text)
    self.mTxtAct = self:getChildGO("mTxtAct"):GetComponent(ty.Text)

    self:addOnClick(self.mBtnAct, self.onClickActHandler)
end

function deActive(self)
    super.deActive(self)
end

function setData(self, data)
    super.setData(self, data)
    self.data = data

    self:clearCards()
    self.mTxtAct.text=_TT(10000415)
    local allHas = true
    local obtCount = 0
    for i = 1, #data.heroList do
        local heroCard = hero.ManualHeroComCard:poolGet()
        local heroVo = hero.HeroManager:getHeroConfigVo(data.heroList[i])
        heroCard:setData(heroVo)
        heroCard:setParent(self.mHeroRoot)
        local isObtain = hero.HeroManager:getIsObtain(data.heroList[i])
        allHas = allHas and isObtain
        if isObtain then
            obtCount = obtCount + 1
        end
        table.insert(self.heroCardList, heroCard)
    end

    local isAct = manual.ManualHeroManager:getHeroCombById(self.data.id)
    self.mBtnAct:SetActive(allHas and isAct == false)
    self.mTxtName.text = _TT(data.name) .. "(" .. obtCount .. "/" .. #data.heroList .. ")"

    self.mImgAttr:SetImg(isAct and UrlManager:getPackPath("manualHero/com_act.png") or
                             UrlManager:getPackPath("manualHero/com_noact.png"), false)
    self.mImgIcon:SetImg(UrlManager:getIconPath("manualHero/manual_" .. self.data.attr[1] .. ".png"), false)
    self.mTxtValue.text = "+" .. self.data.attr[2]/100 .. "%"
end

function clearCards(self)
    for i = 1, #self.heroCardList, 1 do
        self.heroCardList[i]:poolRecover()
    end
    self.heroCardList = {}
end

function onDelete(self)
    super.onDelete(self)
    self:clearCards()
end

function onClickActHandler(self)
    GameDispatcher:dispatchEvent(EventName.REQ_MANUALHERO_COMBINATION,{id =self.data.id })
end

return _M
