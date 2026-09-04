
--[[ 
-----------------------------------------------------
@filename       : ManualHeroSuccessPanel
@Description    : 图鉴-战员羁绊激活属性
@Author         : sxt
@copyright      : (LY) 2023 雷焰网络
-----------------------------------------------------
]]
module("manual.ManualHeroSuccessPanel", Class.impl(View))

UIRes = UrlManager:getUIPrefabPath("manual/ManualHeroSuccessPanel.prefab")
panelType = -1 
destroyTime = -1 -- 自动销毁时间-1默认

-- 构造函数
function ctor(self)
    super.ctor(self)
end

-- 初始化数据
function initData(self)
    super.initData(self)
end

function configUI(self)
    super.configUI(self)

    self.mTxtTitle = self:getChildGO("mTxtTitle"):GetComponent(ty.Text)
    self.mTxtRightLv = self:getChildGO("mTxtRightLv"):GetComponent(ty.Text)
    self.mTxtValue = self:getChildGO("mTxtValue"):GetComponent(ty.Text)
    self.mTxtName = self:getChildGO("mTxtName"):GetComponent(ty.Text)

    self.mBtnClose = self:getChildGO("mBtnClose")
end

function initViewText(self)
    self.mTxtTitle.text = _TT(10000407)
    self.mTxtRightLv.text = _TT(10000408)
    
end

-- UI事件管理(关闭界面会自动移除)
function addAllUIEvent(self)
    self:addUIEvent(self.mBtnClose,self.onClickClose)
end


function active(self,args)
    super.active(self)

    self.type = args.type 
    self.id  = args.id

    self:showPanel()
end

-- 反激活（销毁工作）
function deActive(self)
    super.deActive(self)
end

function showPanel(self)
    if self.type == 1 then
        local heroVo = hero.HeroManager:getHeroVoByTid(self.id)
        self.mTxtName.text =  fight.AttrManager:getAttName(heroVo.m_orgConfigVo.firstActivateAttr[1])
        self.mTxtValue.text = heroVo.m_orgConfigVo.firstActivateAttr[2]/100 .. "%"
    elseif self.type == 2 then
        local vo = manual.ManualHeroManager:getHeroComDataById(self.id)
        self.mTxtName.text =  fight.AttrManager:getAttName(vo.attr[1])
        self.mTxtValue.text = vo.attr[2]/100 .. "%"
    end
end

return _M