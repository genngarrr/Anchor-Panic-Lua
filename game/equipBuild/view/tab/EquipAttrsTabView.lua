

module("equipBuild.EquipAttrsTabView", Class.impl(TabSubView))

UIRes = UrlManager:getUIPrefabPath("equipBuild/tab/EquipAttrsTab.prefab")

--构造函数
function ctor(self)
    super.ctor(self)
end

-- 初始化数据
function initData(self)
    self.mEquipVo = nil

    self.mTuPoAttrList = {}
    self.mRemakeItemList = {}
    self.mSuitItemList = {}
end

function configUI(self)
    self.mSuitItem = self:getChildGO("mSuitItem")
    self.mRemakeItem = self:getChildGO("mRemakeItem")
    self.mEquipNode = self:getChildTrans("mEquipNode")
    self.mSuitTrans = self:getChildTrans("mSuitTrans")
    self.mTuPoAttrItem = self:getChildGO("mTuPoAttrItem")
    self.mRemoldTrans = self:getChildTrans("mRemoldTrans")
    self.mTuPoAttrTrans = self:getChildTrans("mTuPoAttrTrans")
    self.mTxtLv = self:getChildGO("mTxtLv"):GetComponent(ty.Text)
    self.mImgBar = self:getChildGO("mImgBar"):GetComponent(ty.Image)
    self.mTxtAttr = self:getChildGO("mTxtAttr"):GetComponent(ty.Text)
    self.mTxtSuit = self:getChildGO("mTxtSuit"):GetComponent(ty.Text)
    self.mTxtReform = self:getChildGO("mTxtReform"):GetComponent(ty.Text)
    self.mTxtAddNull = self:getChildGO("mTxtAddNull"):GetComponent(ty.Text)
    self.mTxtItemName = self:getChildGO("mTxtItemName"):GetComponent(ty.Text)
    self.mTxtAdditional = self:getChildGO("mTxtAdditional"):GetComponent(ty.Text)
end

function initViewText(self)
    self.mTxtReform.text = _TT(4039)
    self.mTxtSuit.text = _TT(4225)
    self.mTxtAdditional.text = _TT(1332)
    self.mTxtAddNull.text = "-".._TT(1000071529).."-"
end

function active(self, args)
    self:updateView()
end

function deActive(self)
    if self.mEquipVo then
        self.mEquipVo:removeEventListener(equip.EquipVo.UPDATE_EQUIP_DETAIL_DATA,self.updateView,self)
        self.mEquipVo:removeEventListener(props.PropsVo.UPDATE,self.updateView,self)
    end

    self.mEquipVo = nil

    if self.mGrid then
        self.mGrid:poolRecover()
    end
    self.mGrid = nil

    self:clearTuPoItems()
    self:clearRemakeItems()
    self:clearSuitItems()
end

function updateView(self)
    if self.mEquipVo then
        self.mEquipVo:removeEventListener(equip.EquipVo.UPDATE_EQUIP_DETAIL_DATA,self.updateView,self)
        self.mEquipVo:removeEventListener(props.PropsVo.UPDATE,self.updateView,self)
    end

    self.mEquipVo = equipBuild.EquipStrengthenManager:getOpenEquipVo()
    self.mEquipVo:addEventListener(equip.EquipVo.UPDATE_EQUIP_DETAIL_DATA,self.updateView,self)
    self.mEquipVo:addEventListener(props.PropsVo.UPDATE,self.updateView,self)

    if self.mGrid then
        self.mGrid:poolRecover()
        self.mGrid = nil
    end

    self.mGrid = EquipGrid3:create(self.mEquipNode, self.mEquipVo, 1,false)
    self.mGrid:setClickEnable(false)
    self.mGrid:setShowEquipStrengthenLvl(false)
    self.mGrid:setIdxTap(false)
    -- self.mGrid:setPartScale(2*0.65)

    local color = ""
    if self.mEquipVo.color == 1 then 
        color = "45cea2ff"
    elseif self.mEquipVo.color == 2 then 
        color = "29acffff"
    elseif self.mEquipVo.color == 3 then 
        color = "ff72f1ff"
    else
        color = "ff9e35ff"
    end
    self.mImgBar.color = gs.ColorUtil.GetColor(color)
    --更新页面内属性
    self.mTxtItemName.text = self.mEquipVo.name
    self.mTxtLv.text = self.mEquipVo.strengthenLvl

    
    self:updateStrengthenAttr()
    self:updateTuPoAttr()    
    self:updateRemakeAttr()
    self:updateSuitAttr()
end

function updateStrengthenAttr(self)
    -- local mainAttrList,_ = self.mEquipVo:getMainAttr()

    -- if #mainAttrList > 0 then
    --     local preKey = mainAttrList[1].key
    --     local preValue = mainAttrList[1].value
    --     self.mTxtAttr.text = AttConst.getName(preKey).."  <color=#FFFFFF>+"..AttConst.getValueStr(preKey, preValue).."</color>"
    -- end
end

function updateTuPoAttr(self)
    self:clearTuPoItems()

    local attachAttrList, attachAttrDic = self.mEquipVo:getTuPoAttachAttr()
    if(attachAttrList and #attachAttrList > 0) then
        table.sort(attachAttrList, function(a, b)
            return a.breakUpRank < b.breakUpRank
        end)

        for i=1,#attachAttrList do
            local attachAttrVo = attachAttrList[i]
            local tupoAttrItem = SimpleInsItem:create(self.mTuPoAttrItem, self.mTuPoAttrTrans, "EquipAttrsTabViewmTuPoAttrItem")

            local txtDes = tupoAttrItem:getChildGO("mTxtAttrDes"):GetComponent(ty.Text)
            local attrValue=tupoAttrItem:getChildGO("mTxtAttrValue"):GetComponent(ty.Text)
            txtDes.text = AttConst.getName(attachAttrVo.key)
            attrValue.text ="+".. AttConst.getValueStr(attachAttrVo.key, attachAttrVo.value) 
            --已经激活
            local color = "ffffffff"
            if attachAttrVo.isActive then
                -- txtLock.text = _TT(1098)
            else
                color = "c6d4e1ff"
                -- txtLock.text = _TT(71403, attachAttrVo.breakUpRank - 1)
            end
            txtDes.color = gs.ColorUtil.GetColor(color)
            -- txtLock.color = gs.ColorUtil.GetColor(color)
            table.insert(self.mTuPoAttrList,tupoAttrItem)
        end
    end
end

function updateRemakeAttr(self)
    self:clearRemakeItems()
    local activeList = equipBuild.EquipRemakeManager:getAlikeRemoldList(self.mEquipVo,nil)
    self.mTxtAddNull.gameObject:SetActive(table.nums(activeList)<=0)
    for _, vo1 in ipairs(activeList) do
        local vo = hero.HeroEquipManager:getHeroEquipRemoldById(vo1.key)
        local curLv=vo1.num>vo:getMaxLv() and HtmlUtil:color(vo1.num,"fa3d2bff") or vo1.num
        local item=SimpleInsItem:create(self:getChildGO("mItem"), self.mRemoldTrans, "showAttrRemoldItem"..vo:getID())
        item:getChildGO("mIconItem"):GetComponent(ty.AutoRefImage):SetImg(vo:getIcon(),false)
        item:getChildGO("mTxtShowDes"):GetComponent(ty.Text).text=vo:getName().." "..vo:getDes(vo1.num)
        item:getChildGO("mTxtRemoldLv"):GetComponent(ty.Text).text=_TT(1003)..curLv
        table.insert(self.mRemakeItemList,item)
    end
end

function updateSuitAttr(self)
    self:clearSuitItems()
    local equipConfigVo = equip.EquipManager:getEquipConfigVo(self.mEquipVo.tid)
    local suitId = equipConfigVo.suitId
    local suitConfigVo = equip.EquipSuitManager:getEquipSuitConfigVo(suitId)

    if (not suitConfigVo) then
        return
    end
  
    if suitConfigVo.suitSkillId_2 > 0 then
        local skillVo = fight.SkillManager:getSkillRo(suitConfigVo.suitSkillId_2)
        local suitItem = SimpleInsItem:create(self.mSuitItem, self.mSuitTrans, "EquipAttrsTabViewmSuitItem")
        suitItem:getChildGO("mTxtTitleSuit"):GetComponent(ty.Text).text = _TT(71404).."："
        suitItem:getChildGO("mTxtSuitDes"):GetComponent(ty.Text).text = string.replaceRichTextColor(skillVo:getDesc(), "18ec68")
        gs.LayoutRebuilder.ForceRebuildLayoutImmediate(suitItem:getTrans())
        table.insert(self.mSuitItemList,suitItem)
    end

    if suitConfigVo.suitSkillId_4 > 0 then
        local skillVo = fight.SkillManager:getSkillRo(suitConfigVo.suitSkillId_4)
        local suitItem = SimpleInsItem:create(self.mSuitItem, self.mSuitTrans, "EquipAttrsTabViewmSuitItem")
        suitItem:getChildGO("mTxtTitleSuit"):GetComponent(ty.Text).text = _TT(71405).."："
        suitItem:getChildGO("mTxtSuitDes"):GetComponent(ty.Text).text = string.replaceRichTextColor(skillVo:getDesc(), "18ec68")

        gs.LayoutRebuilder.ForceRebuildLayoutImmediate(suitItem:getTrans())
        table.insert(self.mSuitItemList,suitItem)
    end
end

function clearTuPoItems(self)
    for i = 1, #self.mTuPoAttrList do
        self.mTuPoAttrList[i]:poolRecover()
    end
    self.mTuPoAttrList = {}
end

function clearRemakeItems(self)
    for i = 1, #self.mRemakeItemList do
        self.mRemakeItemList[i]:poolRecover()
    end
    self.mRemakeItemList = {}
end

function clearSuitItems(self)
    for i = 1, #self.mSuitItemList do
        self.mSuitItemList[i]:poolRecover()
    end
    self.mSuitItemList = {}
end

return _M
 
--[[ 替换语言包自动生成，请勿修改！
	语言包: _TT(71405):	"4件套"
	语言包: _TT(71404):	"2件套"
	语言包: _TT(71436):	"-未改造-"
]]
