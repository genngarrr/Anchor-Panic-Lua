module("tips.BraceletSelfTips", Class.impl(tips.BraceletTips))

UIRes = UrlManager:getUIPrefabPath("tips/BraceletSelfTips.prefab")
--[[
    初始化界面的静态文本，图片字
    每次打开界面都会重新读取，多语言切换时可以及时更新
]]

-- 初始化UI
function configUI(self)
    super.configUI(self)
    self.mTxtTipsCurrent = self:getChildGO("mTxtTipsCurrent"):GetComponent(ty.Text)
end

function initViewText(self)
    super.initViewText(self)
    self.mTxtTipsCurrent.text=_TT(100001432)
end

return _M