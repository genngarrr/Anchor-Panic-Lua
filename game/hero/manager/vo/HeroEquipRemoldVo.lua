--[[ 
-----------------------------------------------------
@filename       : HeroEquipRemoldVo
@Description    : 英雄助战数据
@date           : 2024-4-24 16:40:00
@Author         : Shuai
@copyright      : (LY) 2024 雷焰网络
-----------------------------------------------------
]]
module("hero.HeroEquipRemoldVo",Class.impl())

function parseConfigData(self,id, cusData)
    self.id = id
    self.icon = cusData.icon
    self.name = cusData.name
    self.equipDes=cusData.equip_des
    self.levelLimit = cusData.level_limit
end
function getDes(self,lv)
    if not lv then
        lv=1
    elseif lv>=self:getMaxLv() then
        lv=self:getMaxLv()
    end
    return _TT(self.equipDes[lv].des)
end

function getAllDes(self)
    return self.equipDes
end

function getLv(self,isPlayer)
    if isPlayer then
        return 1
    else
        return 1
    end
end

function getID(self)
    return self.id
end

function getName(self)
    return _TT(self.name)
end

function getMaxLv(self)
    return self.levelLimit
end

function getIcon(self)
    return UrlManager:getIconPath("equipRemakeIcon/"..self.icon)
end
return _M
 
--[[ 替换语言包自动生成，请勿修改！
]]
