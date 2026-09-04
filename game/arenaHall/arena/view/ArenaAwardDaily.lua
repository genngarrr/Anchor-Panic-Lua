module("arenaHall.arena.view.ArenaAwardDaily ", Class.impl(arena.ArenaAwardSegement))
-- UIRes = UrlManager:getUIPrefabPath("arenaHall/arena/ArenaAwardTabView.prefab")

function initViewText(self)
    super.initViewText(self)
end

function getType(self)
    return   arena.ArenaAwardType.DAILY
end
return _M