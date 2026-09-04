module("hero.HeroLvlUpAttrItem", Class.impl(BaseComponent))

-- UI预制体名
UIRes = UrlManager:getUIPrefabPath("hero/item/HeroLvlUpAttrItem.prefab")

function __initData(self)
    super.__initData(self)

    --一些常用的
    self.mTxtAttrName = nil
    self.mTxtAttrValue = nil
    self.mGoBg = nil
    --动画帧序号
    self.m_tweenId = nil

    --动画播放Loop流水号 
    if self.m_aniTimeSn then
        LoopManager:clearTimeout(self.m_aniTimeSn)
    end
    self.m_aniTimeSn = nil
    --------------------------------------------- 数据源 self.m_data 为 属性vo 和 属性权重 ---------------------------------------------
end

-- 设置data
function setData(self, index, cusAttrVo, tweenId, cusIsAsyn,cusaddAttrVo)
    self:__reset()
    if (cusAttrVo) then
        self.m_data = {}
        self.m_data.index = index
        self.m_data.attrVo = cusAttrVo
        self.m_data.addAttrVo = cusaddAttrVo
        self.m_tweenId = tweenId
        if (cusIsAsyn == nil) then
            cusIsAsyn = true
        end
        if (cusIsAsyn) then
            if (self.m_isLoadFinish) then
                self:__updateView()
            else

                self:__preLoad(cusIsAsyn)
            end
        else
            self:__preLoad(cusIsAsyn)
            self:__updateView()
        end
    end
end

function getData(self)
    return self.m_data.attrVo
end


--资源加载完后的 显示刷新 
function __updateCustomView(self)
    self:__initScript()
    self:__updateContent()
    self:__updateAnimation()
end

function __initScript(self)
    self.mGoBg = self:getChildGO("mImgBg")
    self.mImgUp = self:getChildGO("mImgUp")
    self.mAnimator = self.m_uiGo:GetComponent(ty.Animator)
    self.mTxtAddValue = self:getChildGO("mTxtAddValue"):GetComponent(ty.Text)
    self.mTxtAttrName = self:getChildGO("mTxtAttrName"):GetComponent(ty.Text)
    self.mTxtAttrValue = self:getChildGO("mTxtAttrValue"):GetComponent(ty.Text)
end

function __updateContent(self,attrVo,addAttrVo)
    attrVo = attrVo or self.m_data.attrVo
    addAttrVo = addAttrVo or self.m_data.addAttrVo
    self.mTxtAttrName.text = AttConst.getName(attrVo.key)
    self.mTxtAttrValue.text = AttConst.getValueStr(attrVo.key, attrVo.value)
    local color = addAttrVo.value>attrVo.value and "18EC68ff" or "ffffffff"
    self.mImgUp:SetActive(addAttrVo.value>attrVo.value)
    self.mTxtAddValue.text = HtmlUtil:color(AttConst.getValueStr(addAttrVo.key, addAttrVo.value),color)
end

--更新动效
function __updateAnimation(self)
    if self.m_tweenId then
        if (not gs.GoUtil.IsCompNull(self.mAnimator)) then
            self:__onPlayAnimation(self.m_tweenId * 0.03)
        else
            self.mAnimator = self.m_uiGo:GetComponent(ty.Animator)
            self:__onPlayAnimation(self.m_tweenId * 0.03)
        end
    end
end

--播放动画
function __onPlayAnimation(self, startTIme)
    local function callTween()
        if self.mAnimator then
            --self.mAnimator:SetTrigger("show")
        end
    end
    if self.m_aniTimeSn then
        LoopManager:clearTimeout(self.m_aniTimeSn)
    end
    self.m_aniTimeSn = LoopManager:setTimeout(startTIme, self, callTween)
end

return _M

--[[ 替换语言包自动生成，请勿修改！
]]