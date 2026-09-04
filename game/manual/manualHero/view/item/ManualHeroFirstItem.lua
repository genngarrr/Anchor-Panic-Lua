module("manual.ManualHeroFirstItem", Class.impl("lib.component.BaseItemRender"))

function onInit(self, go)
    super.onInit(self, go)
    self.mHeroRoot = self:getChildTrans("heroRoot")
    self.mBtnHero = self:getChildGO("mBtnHero")
    self:addOnClick(self.mBtnHero,self.onClickHeroHandler)
end

function deActive(self)
    super.deActive(self)
   
end

function setData(self, data)
    super.setData(self, data)
    self.data = data
    if self.mHeroCard == nil then
        self.mHeroCard = hero.ManualHeroCard:poolGet()
    end
    self.mHeroCard:setData(self.data)
    self.mHeroCard:setParent(self.mHeroRoot)
end

function onDelete(self)
    super.onDelete(self)
    self.mHeroCard:poolRecover()
    self.mHeroCard = nil
end

function onClickHeroHandler(self)
    local isAct = manual.ManualHeroManager:getHeroActByTid(self.data.tid)
    local isObtain = hero.HeroManager:getIsObtain(self.data.tid)

    if isObtain == true and isAct == false then
        GameDispatcher:dispatchEvent(EventName.REQ_MANUALHERO_FIRST,{tid =self.data.tid })
    end
end

return _M