--[[
-----------------------------------------------------
@filename       : PermitBraceletShowView
@Description    : 通行证烙痕展示界面
@date           : 2024-7-15 15:55:00
@Author         : Shuai
@copyright      : (LY) 2024 雷焰网络
-----------------------------------------------------
]]
module("permit.PermitBraceletShowView", Class.impl(View))

UIRes = UrlManager:getUIPrefabPath("permit/PermitBraceletShowView.prefab")
destroyTime = -1 -- 自动销毁时间-1默认
isShow3DBg = 1

--构造函数
function ctor(self)
    super.ctor(self)
    self:setSize(0, 0)
    self:setTxtTitle(_TT(100001447))--通行证
end
-- 初始化数据
function initData(self)
    super.initData(self)
    self.mMax=false
    self.mCurBraceletVo=nil
    self.mAttrItemList = {}
    self.mShowItemDic = {}
    self.mPropsList = {}
end

function configUI(self)
    super.configUI(self)
    self.mBtnMax = self:getChildGO("mBtnMax")
    self.mBtnInit = self:getChildGO("mBtnInit")
    self.mAttrItem = self:getChildGO("mAttrItem")
    self.mShowItem = self:getChildGO("mShowItem")
    self.mShowTrans = self:getChildTrans("mShowTrans")
    self.mImgMaxSelect = self:getChildGO("mImgMaxSelect")
    self.mImgInitSelect = self:getChildGO("mImgInitSelect")
    self.mBaseAttrContent = self:getChildTrans("mBaseAttrContent")
    self.mTxtSkill = self:getChildGO("mTxtSkill"):GetComponent(ty.Text)
    self.mTxtTitle = self:getChildGO("mTxtTitle"):GetComponent(ty.Text)
    self.mTxtDes = self:getChildGO("mTxtDes"):GetComponent(ty.TMP_Text)
    self.mTxtBtnMax = self:getChildGO("mTxtBtnMax"):GetComponent(ty.Text)
    self.mTxtBtnInit = self:getChildGO("mTxtBtnInit"):GetComponent(ty.Text)
    self.mTxtBraceletsLv = self:getChildGO("mTxtBraceletsLv"):GetComponent(ty.Text)
    self.mTxtBraceletsName = self:getChildGO("mTxtBraceletsName"):GetComponent(ty.Text)
    self.mIconBracelets = self:getChildGO("mIconBracelets"):GetComponent(ty.AutoRefImage)
    self.mImgBraceletsColorRight=self:getChildGO("mImgBraceletsColorRight"):GetComponent(ty.AutoRefImage)
end

function active(self, args)
    super.active(self, args)
    MoneyManager:setMoneyTidList({})
    gs.TransQuick:LPosY(self.mShowTrans, 0)
    self:updateView(args.list)
end

function deActive(self)
    super.deActive(self)
    MoneyManager:setMoneyTidList()
    self:clearShowItem()
    self:closeAttrItemList()
end

--[[
    初始化界面的静态文本，图片字
    每次打开界面都会重新读取，多语言切换时可以及时更新
]]
function initViewText(self)
    self.mTxtBtnMax.text=_TT(1000081028)
    self.mTxtBtnInit.text=_TT(1000081029)
    self.mTxtTitle.text=_TT(1000081025)
    self.mTxtSkill.text=_TT(1399)
    --self.mTxtExDsc.text = _TT(1000081019)--"周经验上限"
end
-- UI事件管理(关闭界面会自动移除)
function addAllUIEvent(self)
    self:addUIEvent(self.mBtnInit,self.onClickShowHandler,nil,false)
    self:addUIEvent(self.mBtnMax,self.onClickShowHandler,nil,true)
end

function onClickShowHandler(self,isMax)
    self.mMax = isMax
    self.mImgInitSelect:SetActive(not self.mMax)
    self.mImgMaxSelect:SetActive(self.mMax)
    self.mTxtBtnMax.color=gs.ColorUtil.GetColor(self.mMax and "000000ff" or "ffffffff")
    self.mTxtBtnInit.color=gs.ColorUtil.GetColor(not self.mMax and "000000ff" or "ffffffff")
    local maxRefineLvl = braceletBuild.BraceletBuildManager:getMaxRefineLvl(self.mCurBraceletVo.tid)
    local currentRefineLvl = self.mMax and maxRefineLvl or 0
    local mStr = maxRefineLvl > currentRefineLvl and "bracelet/bracelet_refine_1.png" or "bracelet/bracelet_refine_2.png"
    for i = 1, maxRefineLvl do
        local img = self:getChildGO("mImgRel" .. i):GetComponent(ty.AutoRefImage)
        img:SetImg(UrlManager:getPackPath(mStr), false)
        img.color = gs.ColorUtil.GetColor(i > currentRefineLvl and "82898cff" or "ffffffff")
    end
    self.mTxtDes.text=braceletBuild.BraceletBuildManager:getRefineDic(self.mCurBraceletVo.tid)[currentRefineLvl]:getDesc()
    self:updateAttrList(self.mCurBraceletVo)
end

function updateView(self,list)
    self:clearShowItem()
    for i, v in ipairs(list) do
        local propsVo=props.PropsManager:getPropsConfigVo(v.tid)
        local mItem = SimpleInsItem:create(self.mShowItem,self.mShowTrans,"mBraceletShowItem"..i)
        mItem:setArgs(propsVo)
        mItem:getChildGO("mItemSelect"):SetActive(false)
        local propGrid1 = PropsGrid:createByData({ tid = v.tid, num = 1, parent = mItem:getChildTrans("mItemTrans"), scale = 1, showUseInTip = false })
        propGrid1:setIsShowName(false)
        propGrid1:setCallBack(self, self.onClickGridHandler,propsVo)
        self.mShowItemDic[v.tid] = mItem
        table.insert(self.mPropsList,propGrid1)
    end
    self:onClickGridHandler(self.mShowItemDic[list[1].tid]:getArgs())
end

function onClickGridHandler(self,vo)
    if self.mCurBraceletVo~=vo then
        self.mCurBraceletVo=vo
        self.mIconBracelets:SetImg(UrlManager:getBraceletIconUrl(vo.tid), false)
        self.mImgBraceletsColorRight:SetImg(UrlManager:getNraceletRightColorUrl(vo.color), false)
        self.mTxtBraceletsName.text=vo.name

        self:onClickShowHandler(self.mMax)
        self:updateItemState(vo.tid)
        self:updateAttrList(vo)
    end
end

function updateAttrList(self,Vo)
    self:closeAttrItemList()
    local equipConfigVo = equip.EquipManager:getEquipConfigVo(Vo.tid)
    local attrList = equipConfigVo.defaultAttrList
    local maxLv = equipBuild.EquipStrengthenManager:getMaxStrengthenLvl(Vo.tid)
    self.mTxtBraceletsLv.text=_TT(3072,self.mMax and maxLv or 1)
    for i = 1, #attrList do
        local vo = attrList[i]
        local value=vo[2]+self:getLvAttrVo(Vo.tid,maxLv,vo[1])
        local item=SimpleInsItem:create(self.mAttrItem,self.mBaseAttrContent,"mBraceletAtrrItem"..i)
        item:getChildGO("mTxtAttrName"):GetComponent(ty.Text).text=AttConst.getName(vo[1])
        item:getChildGO("mTxtAttrValue"):GetComponent(ty.Text).text="+" .. AttConst.getValueStr(vo[1], value)
        table.insert(self.mAttrItemList,item)
    end
end

function getLvAttrVo(self,tid,maxLv,key)
    local endValue=0
    local attrDic=equipBuild.EquipStrengthenManager:getStrengthenConfigVo(nil, tid,self.mMax and maxLv or 1).attrDic
    for _, vo in pairs(attrDic) do
        if vo.key== key then
            return vo.value
        end
    end
    if self.mMax then
        local attrDic=equipBuild.EquipStrengthenManager:getBreakUpConfigVo(tid,equipBuild.EquipStrengthenManager:getMaxBreakUpRank(tid)).attrDic
        for _, vo in pairs(attrDic) do
            if vo.key== key then
                endValue = vo.value
            end
        end
    end
    return endValue
end

function updateItemState(self,showTid)
    for tid, item in pairs(self.mShowItemDic) do
        item:getChildGO("mItemSelect"):SetActive(tid==showTid)
    end
end

function clearShowItem(self)
    if table.nums(self.mShowItemDic)>0 then
        for _, showItem in pairs(self.mShowItemDic) do
            showItem:poolRecover()
            showItem=nil
        end
    end
    self.mShowItemDic={}
    if #self.mPropsList>0 then
        for i,item in ipairs(self.mPropsList) do
            item:poolRecover()
            item=nil
        end
    end
    self.mPropsList={}
end

function closeAttrItemList(self)
    if #self.mAttrItemList>0 then
        for _, item in ipairs(self.mAttrItemList) do
            item:poolRecover()
            item=nil
        end
    end
    self.mAttrItemList = {}
end

return _M

--[[ 替换语言包自动生成，请勿修改！
]]
