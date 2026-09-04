module("manual.ManualHeroComVo", Class.impl())

function parseData(self,id,cusData)
    self.id = id
    self.heroList = cusData.hero_combination
    -- self.key = cusData.key
    -- self.value = cusData.value
    self.attr = cusData.attr
    self.name = cusData.name
end

return _M