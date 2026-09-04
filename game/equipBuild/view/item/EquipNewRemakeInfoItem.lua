--[[
-----------------------------------------------------
@filename       : ***
@Description    : ***
@date           : ***
@Author         : Jacob
@copyright      : (LY) 2020 雷焰网络
-----------------------------------------------------
]] --
module('game.equipBuild.view.item.EquipNewRemakeInfoItem', Class.impl("lib.component.BaseContainer"))
-- 对应的ui文件
UIRes = UrlManager:getUIPrefabPath("equipBuild/item/EquipNewRemakeInfoItem.prefab")

EVENT_CHANGE = "EVENT_CHANGE"

-- 构造函数
function ctor(self)
    super.ctor(self)
end
-- 析构
function dtor(self)
end

function initData(self)
    self.mEquipVo = nil
    self.mAttrData = nil
    self.mCurSelectPos = nil
end

-- 初始化
function configUI(self)
    self.mGroupLock = self:getChildGO("mGroupLock")
    self.mBtnRemake = self:getChildGO("mBtnRemake")
    self.mGroupUnLock = self:getChildGO("mGroupUnLock")
    self.mIconTopEmpty = self:getChildGO("mIconTopEmpty")
    self.mIconDownEmpty = self:getChildGO("mIconDownEmpty")
    self.mTxtTopLv = self:getChildGO("mTxtTopLv"):GetComponent(ty.Text)
    self.mTxtUnLock = self:getChildGO("mTxtUnLock"):GetComponent(ty.Text)
    self.mTxtDownLv = self:getChildGO("mTxtDownLv"):GetComponent(ty.Text)
    self.mTxtTopName = self:getChildGO("mTxtTopName"):GetComponent(ty.Text)
    self.mTxtTopTitle = self:getChildGO("mTxtTopTitle"):GetComponent(ty.Text)
    self.mTxtTopEmpty = self:getChildGO("mTxtTopEmpty"):GetComponent(ty.Text)
    self.mTxtDownName = self:getChildGO("mTxtDownName"):GetComponent(ty.Text)
    self.mIconTop = self:getChildGO("mIconTop"):GetComponent(ty.AutoRefImage)
    self.mTxtDownTitle = self:getChildGO("mTxtDownTitle"):GetComponent(ty.Text)
    self.mTxtDownEmpty = self:getChildGO("mTxtDownEmpty"):GetComponent(ty.Text)
    self.mIconDown = self:getChildGO("mIconDown"):GetComponent(ty.AutoRefImage)
end

-- 激活
function active(self)
    super.active(self)
    self:initViewText()
    self:addOnClick(self.mBtnRemake, self.onClickHandler)
end

-- 反激活（销毁工作）
function deActive(self)
    super.deActive(self)
end

--[[
    初始化界面的静态文本，图片字
    每次打开界面都会重新读取，多语言切换时可以及时更新
]]
function initViewText(self)
    self.mTxtDownEmpty.text = _TT(1000071530)--"-未進行改造-"
    self.mTxtTopEmpty.text = _TT(1000071530)--"-未進行改造-"
end

function onClickHandler(self)
    GameDispatcher:dispatchEvent(EventName.OPEN_HERO_EQUIP_REMOLD_PLAN_VIEW, {curData = self.mAttrData, curPos = self.mCurSelectPos})
end

function setData(self, cusPos, cusEquipVo, cusData)
    self.mEquipVo = cusEquipVo
    self.mAttrData = cusData
    self.mCurSelectPos = cusPos
    if not self.mAttrData then
        self:updateView(true)
    else
        self:updateView(false)
    end
end

function getIsLock(self)
    local sysConst = SysParamType.REMOLDARR_NEEDLV_1
    if self.mCurSelectPos == 2 then
        sysConst = SysParamType.REMOLDARR_NEEDLV_2
    elseif self.mCurSelectPos == 3 then
        sysConst = SysParamType.REMOLDARR_NEEDLV_3
    end
    self.mTxtUnLock.text = _TT(100004396, sysParam.SysParamManager:getValue(sysConst))
    return self.mEquipVo.strengthenLvl < sysParam.SysParamManager:getValue(sysConst)
end

function updateView(self, isEmpty)
    self.mGroupLock:SetActive(self:getIsLock())
    self.mGroupUnLock:SetActive(not self:getIsLock())
    self.mIconTopEmpty:SetActive(isEmpty)
    self.mIconDownEmpty:SetActive(isEmpty)
    self.mIconTop.gameObject:SetActive(not isEmpty)
    self.mIconDown.gameObject:SetActive(not isEmpty)
    local heroVo = hero.HeroManager:getHeroVo(self.mEquipVo.heroId)
    local activeList = equipBuild.EquipRemakeManager:getAlikeRemoldList(self.mEquipVo, heroVo)
    if not isEmpty then
        local topVo = hero.HeroEquipManager:getHeroEquipRemoldById(self.mAttrData[1].key)
        local downVo = hero.HeroEquipManager:getHeroEquipRemoldById(self.mAttrData[2].key)
        local tempLeftNum = self:getCurLvByKey(activeList, self.mAttrData[1].key)
        local tempRightNum = self:getCurLvByKey(activeList, self.mAttrData[2].key)
        local leftLv = tempLeftNum > topVo:getMaxLv() and HtmlUtil:color(tempLeftNum, "fa3d2bff") or tempLeftNum
        local rightLv = tempRightNum > downVo:getMaxLv() and HtmlUtil:color(tempRightNum, "fa3d2bff") or tempRightNum
        self.mIconTop:SetImg(topVo:getIcon(), false)
        self.mTxtTopLv.text = _TT(4392, leftLv, "/"..topVo:getMaxLv())
        self.mTxtTopName.text = topVo:getName()
        self.mTxtTopTitle.text = topVo:getDes()
        self.mIconDown:SetImg(downVo:getIcon(), false)
        self.mTxtDownLv.text = _TT(4392, rightLv, "/"..downVo:getMaxLv())
        self.mTxtDownName.text = downVo:getName()
        self.mTxtDownTitle.text = downVo:getDes()
    end
end

function getCurLvByKey(self, list, key)
    for _, vo in ipairs(list) do
        if vo.key == key then
            return vo.num
        end
    end
    return 1
end

return _M

--[[ 替换语言包自动生成，请勿修改！
语言包: _TT(71436):"-未改造-"
语言包: _TT(71435):"点击改造"
]]
