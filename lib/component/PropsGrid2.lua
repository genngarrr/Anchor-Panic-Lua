--[[ 
-----------------------------------------------------
@filename       : PropsGrid2
@Description    : 新道具格子
@date           : 2023-05-29 
@Author         : 
@copyright      : (LY) 2022 雷焰网络
-----------------------------------------------------
]]
----道具格子下方带材料图标 手环界面使用
module("PropsGrid2", Class.impl(PropsGrid))

UIRes = UrlManager:getUIPrefabPath("commonGrid/PropsGrid2.prefab")

function initViewText(self)
    super.initViewText(self)
    self:getChildGO("mTxtTab"):GetComponent(ty.Text).text = _TT(10000160)
end

return _M

--[[ 替换语言包自动生成，请勿修改！
]]