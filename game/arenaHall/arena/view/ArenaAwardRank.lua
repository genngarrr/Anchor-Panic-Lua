module("arenaHall.arena.view.ArenaAwardRank", Class.impl(arena.ArenaAwardSegement))
-- UIRes = UrlManager:getUIPrefabPath("arenaHall/arena/ArenaAwardTabView.prefab")
function initViewText(self)
    super.initViewText(self)
end

function getType(self)
    return  arena.ArenaAwardType.RANKAWARD
end

return _M