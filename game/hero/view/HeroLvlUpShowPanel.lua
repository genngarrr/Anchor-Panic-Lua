module("hero.HeroLvlUpShowPanel", Class.impl(View))

UIRes = UrlManager:getUIPrefabPath("hero/tab/HeroLvlUpShowPanel.prefab")
destroyTime = -1 -- 自动销毁时间-1默认 0即时销毁 999不销毁
panelType = -1 -- 窗口类型 1 全屏 2 弹窗

-- 构造函数
function ctor(self)
    super.ctor(self)
end

-- 初始化数据
function initData(self)
    self.mItemList = {}
    self.mIsNoTween = nil
end

function configUI(self)
    self.ItemAttr = self:getChildGO("ItemAttr")
    self.mImgToucher = self:getChildGO("mImgToucher")
    self.mScrollContent = self:getChildTrans("Content")
    self.mAni = self.UIObject:GetComponent(ty.Animator)
    self.mTxtDes = self:getChildGO("mTxtDes"):GetComponent(ty.Text)
    self.mTxtTitle = self:getChildGO('mTxtTitle'):GetComponent(ty.Text)
    self.mTxtLeftLv = self:getChildGO("mTxtLeftLv"):GetComponent(ty.Text)
    self.mTxtRightLv = self:getChildGO('mTxtRightLv'):GetComponent(ty.Text)
end

function initViewText(self)
    self.mTxtDes.text = _TT(100001425)
    self.mTxtTitle.text=_TT(10000145)--"等級提升"
end

-- 设置全屏透明遮罩
function setMask(self)
    super.setMask(self)
    self:setGuideTrans("guide_HeroLvlUpShowPanel_CloseBtn", self.mImgToucher.transform)
end

function active(self, args)
    super.active(self, args)
    self:setGuideTrans("guide_HeroLvlUpShowPanel_close", self.mImgToucher.transform)
    self:updateLvlUpView(args)
    --GameDispatcher:dispatchEvent(EventName.OPEN_HERO_LVL_UP_PANEL)
end

function updateLvlUpView(self,args)
    self:clearItem()
    local list={ AttConst.HP_MAX, AttConst.ATTACK, AttConst.DEFENSE }
    self.mTxtLeftLv.text=_TT(3072,HtmlUtil:size(args.old_hero_lv,34))
    self.mTxtRightLv.text=_TT(3072,HtmlUtil:size(args.hero_lv,34))
    local heroVo=hero.HeroManager:getHeroVo(args.id)
    local oldAttrList=args.old_hero_lv>1 and hero.HeroLvlUpManager:getHeroLvlUpConfigVo(heroVo.tid,args.old_hero_lv):getAttrDic() or heroVo.basicAttrDic
    for _, key in pairs(list) do
        if oldAttrList[key] then
            local curValue = hero.HeroLvlUpManager:getLastAttrTotal(heroVo.tid,args.hero_lv,key)+heroVo.basicAttrDic[key]
            local oldAttrValue=hero.HeroLvlUpManager:getLastAttrTotal(heroVo.tid,args.old_hero_lv,key)+heroVo.basicAttrDic[key]
            local item = SimpleInsItem:create(self.ItemAttr, self.mScrollContent, "herolvlUpAttr"..key)
            item:getChildGO("mTxtAttrTitile"):GetComponent(ty.Text).text=AttConst.getName(key)
            item:getChildGO("mTxtNextAttr"):GetComponent(ty.Text).text=AttConst.getValueStr(key, curValue)
            item:getChildGO("mTxtOldAttr"):GetComponent(ty.Text).text=AttConst.getValueStr(key, oldAttrValue)
            table.insert(self.mItemList,item)
        end
    end
end

function addAllUIEvent(self)
    self:addUIEvent(self.mImgToucher,self.close)
end

function deActive(self)
    super.deActive(self)
    self:clearItem()
end

function close(self)
    super.close(self)
end

function getOpenSoundPath(self)
    return UrlManager:getUIBaseSoundPath("ui_basic_gain.prefab")
end

function __closeOpenAction(self)
    if (self.panelType ~= 1 and not self.isCloseing) then
        self.isCloseing = true
        local tweenTime = AnimatorUtil.getAnimatorClipTime(self.mAni, "ShowAwardPanel_Exit")
        gs.UIBlurManager.SetSuperBlur(false, self.UIRootNode, self:getUiNodeName(), self.blurTweenTime)

        if self.mBlurMask then
            gs.GameObject.Destroy(self.mBlurMask)
            self.mBlurMask = nil
        end
        if self.UIObject then
            self.mAni:SetTrigger("exit")
            local _viewTweenFinishCall = function()
                if self.isPop == 1 then
                    self:close()
                end
            end
            self:addTimer(tweenTime, tweenTime, _viewTweenFinishCall)
        end
    end
end


function clearItem(self)
    for i = #self.mItemList, 1, -1 do
        self.mItemList[i]:poolRecover()
        self.mItemList[i] = nil
    end
    self.mItemList = {}
end

return _M

--[[ 替换语言包自动生成，请勿修改！
]]
