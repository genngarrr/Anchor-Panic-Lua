arenaEntrance.ArenaEntaceAwadType = {
    -- 赛季
    SEASON_RANK = 1,
    SEASON_AWARD = 2,
    -- 周结算
    WEEK_AWARD = 3
}

arenaEntrance.RankTabType = {
    RANK_LIST = 1,
    RANK_AWARD = 2,
    WEEK_AWARD = 3
}

arenaEntrance.ResultState = {
    WIN = 1,
    LOSE = 2,
}

arenaEntrance.getCollectionTypeList = function()
    local tab = {}
    tab[arenaEntrance.ArenaEntaceAwadType.SEASON_RANK] = {
        page = arenaEntrance.ArenaEntaceAwadType.SEASON_RANK,
        nomalLan = _TT(62233),
        nomalLanEn = "",
        nomalIcon = UrlManager:getIconPath("tabIcon/tabIcon_57.png"),
        selectIcon = UrlManager:getIconPath("tabIcon/tabIcon_57.png")
    }
    tab[arenaEntrance.ArenaEntaceAwadType.SEASON_AWARD] = {
        page = arenaEntrance.ArenaEntaceAwadType.SEASON_AWARD,
        nomalLan = _TT(62243),
        nomalLanEn = "",
        nomalIcon = UrlManager:getIconPath("tabIcon/tabIcon_58.png"),
        selectIcon = UrlManager:getIconPath("tabIcon/tabIcon_58.png")
    }
    tab[arenaEntrance.ArenaEntaceAwadType.WEEK_AWARD] = {
        page = arenaEntrance.ArenaEntaceAwadType.WEEK_AWARD,
        nomalLan = _TT(62244),
        nomalLanEn = "",
        nomalIcon = UrlManager:getIconPath("tabIcon/tabIcon_58.png"),
        selectIcon = UrlManager:getIconPath("tabIcon/tabIcon_58.png")
    }
    return tab
end

arenaEntrance.ArenaEntaceLogType = {
    TypeAttack = 1,
    TypeDefense = 2
}

arenaEntrance.getLogTypeList = function()
    local tab = {}
    tab[arenaEntrance.ArenaEntaceLogType.TypeAttack] = {
        page = arenaEntrance.ArenaEntaceLogType.TypeAttack,
        nomalLan = _TT(62240),
        nomalLanEn = "",
        nomalIcon = UrlManager:getIconPath("tabIcon/tabIcon_57.png"),
        selectIcon = UrlManager:getIconPath("tabIcon/tabIcon_57.png")
    }
    tab[arenaEntrance.ArenaEntaceLogType.TypeDefense] = {
        page = arenaEntrance.ArenaEntaceLogType.TypeDefense,
        nomalLan = _TT(62241),
        nomalLanEn = "",
        nomalIcon = UrlManager:getIconPath("tabIcon/tabIcon_58.png"),
        selectIcon = UrlManager:getIconPath("tabIcon/tabIcon_58.png")
    }
    return tab
end