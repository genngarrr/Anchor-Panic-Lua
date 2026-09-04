module("hero.HeroLvlUpConfigVo", Class.impl(hero.HeroConfigVo))

function ctor(self)
    self:__init()
end

function __init(self)
    self.tid = nil
    self.lvl = nil
    self.exp = nil
end

function parseConfigData(self, cusTid, cusData)
    self.tid = cusTid
    self.lvl = cusData.level
    self.exp = cusData.exp
    self.attr={}
    for _, v in pairs(cusData.attr) do
        self.attr[v.key] = v
    end
end

function getAttrValue(self,key)
    if not self.attr[key] then
        return 0
    end
    return self.attr[key].value 
end

function getAttrValueVo(self,key)
    return self.attr[key] or nil
end

function getAttrDic(self)
    return self.attr
end

return _M
 
--[[ 替换语言包自动生成，请勿修改！
]]
