login.IpList = {
    {"192.168.100.155", "8151", "欧美内网A1", "", 0, 0, 0},
    {"192.168.100.155", "8152", "欧美内网A2", "", 0, 0, 0},
    {"192.168.100.155", "8153", "欧美内网A3", "", 0, 0, 0},
    {"192.168.10.192", "xxxx", "汉潜", "", 0, 0, 0},
    {"192.168.90.87", "xxxx", "跃欣", "", 0, 0, 0},
    {"192.168.20.234", "xxxx", "柱子", "", 0, 0, 0},
    {"192.168.20.238", "xxxx", "肖逸", "", 0, 0, 0},
}

login.IpList2 = {
    {"0.0.0.0", "0", "外网模板", "0", 17, 201, 9999},--ip 端口 服务器名 服务器id 平台id 渠道id 9999固定为本地登录

    {"165.154.173.189", "8701", "外测9001服", "1899409001", 3, 3, 3},
    {"165.154.173.189", "8702", "线上镜像外测包9002服", "1899609002", 3, 3, 3},
    {"165.154.173.189", "8703", "外测9003服", "1899309003", 3, 3, 3},
}

local resultTipLangData = {
    [0] = { cn = "账号验证成功",            lanId = 10000519, },
    [1] = { cn = "用户名为空",              lanId = 10000520, },
    [2] = { cn = "IP被封",                  lanId = 10000521, },
    [3] = { cn = "服务器ID非法",            lanId = 10000522, },
    [4] = { cn = "服务器注册账号已满",      lanId = 10000523, },
    [5] = { cn = "账号被封",                lanId = 10000524, },
    [6] = { cn = "账号防沉迷",              lanId = 10000525, },
    [7] = { cn = "设备非法",                lanId = 10000526, },
    [8] = { cn = "IP地址登录人数达上限",    lanId = 10000527, },
    [9] = { cn = "渠道非法",                lanId = 10000528, },
    [10] = { cn = "子渠道非法",             lanId = 10000529, },
    [11] = { cn = "服务器初始化中",         lanId = 10000530, },
    [12] = { cn = "用户创建失败",           lanId = 10000531, },
    [13] = { cn = "设备码验证失败",         lanId = 10000532, },
    [14] = { cn = "加密串验证失败",         lanId = 10000533, },
    [15] = { cn = "注册时间限制",           lanId = 10000534, },
    [20] = { cn = "创角失败",               lanId = 10000535, },
    [21] = { cn = "登录失败",               lanId = 10000536, },
}

login.getLoginResultTip = function(resultCode)
    print("登录提示码：" .. resultCode)
    local tips = "%s：%s：%s"
    local tipsStr = GameManager.IS_DEBUG and "登录提示码" or _TT(10000518)
    local langData = resultTipLangData[resultCode]
    local resultCodeTranslate = GameManager.IS_DEBUG and langData.cn or _TT(langData.lanId)
    tips = string.format(tips, resultCodeTranslate, tipsStr, resultCode)
    return tips
end

--[[ 替换语言包自动生成，请勿修改！
]]
