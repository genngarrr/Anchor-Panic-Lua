-- @FileName:   BigHostelSceneUI.lua
-- @Description:   描述
-- @Author: ZDH
-- @Date:   2024-07-03 17:48:19
-- @Copyright:   (LY) 2024 锚点降临

module('game.bigHostel.view.BigHostelSceneUI', Class.impl(View))

--对应的ui文件
UIRes = UrlManager:getUIPrefabPath("bigHostel/BigHostelSceneUI.prefab")

destroyTime = 0 -- 自动销毁时间-1默认 0即时销毁 999不销毁
panelType = 1 -- 窗口类型 1 全屏 2 弹窗 -1无底图弹窗
isShowBlackBg = 0 --是否显示全屏纯黑防穿帮底图

escapeClose = 0 -- 是否能通过esc关闭窗口
isShowCloseAll = 0 --是否显示导航按钮

--构造函数
function ctor(self)
    super.ctor(self)

    self:setSize(750, 600)
    self:setBg("")
    -- self:setTxtTitle(_TT(52021))
end

function initData(self)
end

-- 初始化
function configUI(self)
    self.mTouch = self:getChildGO("mTouch"):GetComponent(ty.LongPressOrClickEventTrigger)

    self.mBtnSwitch = self:getChildGO("mBtnSwitch")
    self.mBtnHide = self:getChildGO("mBtnHide")
    self.mImg_Hide1 = self:getChildGO("mImg_Hide1")
    self.mImg_Hide2 = self:getChildGO("mImg_Hide2")

    self.mBtnSkip = self:getChildGO("mBtnSkip")
    self.mBtnPlay = self:getChildGO("mBtnPlay")
    self.mBtnInit = self:getChildGO("mBtnInit")

    self.mLTGrounp = self:getChildTrans("mLTGrounp"):GetComponent(ty.RectTransform)

    self.mInfoGroup = self:getChildGO("mInfoGroup")
    self.mHideGroup = self:getChildGO("mHideGroup")

    self.mTalkBlockLayer = self:getChildGO("mTalkBlockLayer")
    self.mNameTxt = self:getChildGO("mNameTxt"):GetComponent(ty.Text)
    self.mMsgTxt = self:getChildGO("mMsgTxt"):GetComponent(ty.Text)

    self.mSceneSelectGroup = self:getChildGO("mSceneSelectGroup")
    self.mSelectItem = self:getChildGO("mSelectItem")

    self.mImgSceneIcon = self:getChildGO("mImgSceneIcon"):GetComponent(ty.AutoRefImage)
    self.mBtnSwitchImg = self.mBtnSwitch:GetComponent(ty.AutoRefImage)

    self.mBtnCamera = self:getChildGO("mBtnCamera")
    self.mImgCamera1 = self:getChildGO("mImgCamera1")
    self.mImgCamera2 = self:getChildGO("mImgCamera2")

    self.mPropsItem = self:getChildGO("mPropsItem")
    self.mScenePropsGroup = self:getChildTrans("mScenePropsGroup")

    self.mBtnCold = self:getChildGO("mBtnCold")
    self.mBtnHot = self:getChildGO("mBtnHot")
    self.mSliderGlass = self:getChildGO("mSliderGlass"):GetComponent(ty.Slider)
end

function initViewText(self)
    self:setBtnLabel(self.mBtnSkip, 84516, "跳过")
end

-- UI事件管理(关闭界面会自动移除)
function addAllUIEvent(self)
    self:addUIEvent(self.mBtnSwitch, self.onClickSwitch)
    self:addUIEvent(self.mBtnHide, self.onClickHide)
    self:addUIEvent(self.mBtnSkip, self.onClickSkip)
    self:addUIEvent(self.mBtnInit, self.onClickInit)
    self:addUIEvent(self.mBtnCamera, self.onClickCamera)
    self:addUIEvent(self.mBtnCold, self.onClickCold)
    self:addUIEvent(self.mBtnHot, self.onClickHot)

    local onValueChanged = function (val)
        if self.m_initGlassValue == true then
            return
        end
        self:onSliderGlassValueChanged(val)
    end

    self.mSliderGlass.onValueChanged:AddListener(onValueChanged)
    self.mSliderGlass.minValue = 0.3
    self.mSliderGlass.maxValue = 0.9
end

-- 设置货币栏
function setMoneyBar(self)
end

-- 点击关闭
function onClickClose(self)
    UIFactory:alertMessge(_TT(84515), true, function()
        local isShowBigHostel, hostel_data = bigHostel.BigHostelManager:getMainUIShow()
        local model_data = bigHostel.BigHostelManager:getHostelHero()

        if isShowBigHostel and model_data.model_id == hostel_data.model_id and model_data.heroTid == hostel_data.heroTid then
            GameDispatcher:dispatchEvent(EventName.BIGHOSTEL_LIVE_SETTRIGGER, BigHostelConst.BaseAnimatorParams.InitIdle)
            GameDispatcher:dispatchEvent(EventName.HIDE_BIGHOSTEL_BLACK)
        end

        super.onClickClose(self)
        GameDispatcher:dispatchEvent(EventName.ENTER_NEW_MAP, MAP_TYPE.MAIN_CITY)
    end, _TT(1), nil, true, nil, _TT(2))
end

--激活
function active(self, args)
    super.active(self)

    local model_data = bigHostel.BigHostelManager:getHostelHero()
    self.m_UIType = model_data.main_type

    self:AddEventListener()
    self:onAddPointerEvent()

    self.m_Hide = false

    local anchoredPosition = gs.VEC2_ZERO
    if self.m_UIType == BigHostelConst.SceneUI_Type.MIANUI then
        anchoredPosition = gs.Vector2(-100, 0)
    end

    self.mLTGrounp.anchoredPosition = anchoredPosition

    self.m_sceneModel = bigHostel.BigHostelManager:getSceneModel()

    self.m_frameSn = LoopManager:addFrame(1, 0, self, self.onFrame)

    self:playGoAction()
    self:checkCameraBtnState()
    self:checkClickCameraState()
    self:refreshUIComponent()
    self:onShowSceneProps()
end

--反激活（销毁工作）
function deActive(self)
    super.deActive(self)

    self:RemoveEventListener()
    self:onRemovePointerEvent()

    self.mSliderGlass.onValueChanged:RemoveAllListeners()

    self:clearSceneProps()

    self:clearColdHotTimeOutSn()

    if self.m_frameSn then
        LoopManager:removeFrameByIndex(self.m_frameSn)
        self.m_frameSn = nil
    end

    CS.UnityEngine.Cursor.SetCursor("arts/texture/customUI/MouseIcon.png", gs.Vector2.zero, CS.UnityEngine.CursorMode.Auto)
end

-- 增加长按事件
function onAddPointerEvent(self)
    local function onPointerDownHandler()
        self:onPointerDownHandler()
    end
    self.mTouch.onPointerDown:AddListener(onPointerDownHandler)

    local function onPointerUpHandler()
        self:onPointerUpHandler()
    end
    self.mTouch.onPointerUp:AddListener(onPointerUpHandler)

    local function onDragHandler()
        self:onDragHandler()
    end
    self.mTouch.onDrag:AddListener(onDragHandler)

    local function onEndDragHandler()
        self:onEndDragHandler()
    end
    self.mTouch.onEndDrag:AddListener(onEndDragHandler)

    local function onClickHandler()
        self:onClickHandler()
    end
    self.mTouch.onClick:AddListener(onClickHandler)
end

-- 移除长按事件
function onRemovePointerEvent(self)
    self.mTouch.onPointerDown:RemoveAllListeners()
    self.mTouch.onPointerUp:RemoveAllListeners()
    self.mTouch.onDrag:RemoveAllListeners()
    self.mTouch.onEndDrag:RemoveAllListeners()
    self.mTouch.onClick:RemoveAllListeners()
end

function AddEventListener(self)
    GameDispatcher:addEventListener(EventName.HIDE_BIGHOSTEL_SCENEUI, self.onHideUI, self)
    GameDispatcher:addEventListener(EventName.SHOW_BIGHOSTEL_SCENEUI, self.onShowUI, self)

    GameDispatcher:addEventListener(EventName.BIGHOSTEL_SHOWSTART_OVER, self.playGoAction, self)

    GameDispatcher:addEventListener(EventName.BIGHOSTEL_ACTION_SHOWLINE, self.onCvPlaying, self)
    GameDispatcher:addEventListener(EventName.BIGHOSTEL_ACTION_CLOSELINE, self.onCvEnd, self)

    GameDispatcher:addEventListener(EventName.BIGHOSTEL_SWITCH_ANISTATE, self.onAnimSwitch, self)

    GameDispatcher:addEventListener(EventName.BIGHOSTEL_SHOWUICOMPONENT, self.refreshUIComponent, self)
    GameDispatcher:addEventListener(EventName.BIGHOSTEL_SHOW_SCENEPROPSLIST, self.onShowSceneProps, self)
end

function RemoveEventListener(self)
    GameDispatcher:removeEventListener(EventName.HIDE_BIGHOSTEL_SCENEUI, self.onHideUI, self)
    GameDispatcher:removeEventListener(EventName.SHOW_BIGHOSTEL_SCENEUI, self.onShowUI, self)

    GameDispatcher:removeEventListener(EventName.BIGHOSTEL_SHOWSTART_OVER, self.playGoAction, self)

    GameDispatcher:removeEventListener(EventName.BIGHOSTEL_ACTION_SHOWLINE, self.onCvPlaying, self)
    GameDispatcher:removeEventListener(EventName.BIGHOSTEL_ACTION_CLOSELINE, self.onCvEnd, self)

    GameDispatcher:removeEventListener(EventName.BIGHOSTEL_SWITCH_ANISTATE, self.onAnimSwitch, self)

    GameDispatcher:removeEventListener(EventName.BIGHOSTEL_SHOWUICOMPONENT, self.refreshUIComponent, self)
    GameDispatcher:removeEventListener(EventName.BIGHOSTEL_SHOW_SCENEPROPSLIST, self.onShowSceneProps, self)

end

function checkTrial(self)
    if self.m_UIType == BigHostelConst.SceneUI_Type.TRIAL then
        gs.Message.Show(_TT(50091))
        return false
    end

    return true
end

function onSliderGlassValueChanged(self, value)
    self.m_sceneModel:setGlassAlpha(value)
end

function onClickCold(self)
    self:clearColdHotTimeOutSn()
    self.m_coldHotTimer = self:setTimeout(0.5, function ()
        self.m_sceneModel:setInt("interactive", 1)
    end)
end

function onClickHot(self)
    self:clearColdHotTimeOutSn()
    self.m_coldHotTimer = self:setTimeout(0.5, function ()
        self.m_sceneModel:setInt("interactive", 2)
    end)

end

function clearColdHotTimeOutSn(self)
    if self.m_coldHotTimer then
        self:clearTimeout(self.m_coldHotTimer)
        self.m_coldHotTimer = nil
    end
end

function onClickSwitch(self)
    if not self:checkTrial() then
        return
    end

    GameDispatcher:dispatchEvent(EventName.BIGHOSTEL_LIVE_SETTRIGGER, BigHostelConst.BaseAnimatorParams.Switch)
end

function onClickHide(self)
    if self.m_UIType == BigHostelConst.SceneUI_Type.MIANUI then
        self:close(self)
        GameDispatcher:dispatchEvent(EventName.ENTER_NEW_MAP, MAP_TYPE.MAIN_CITY)
    else
        self.m_Hide = not self.m_Hide
        self.mHideGroup:SetActive(not self.m_Hide)
        self.mImg_Hide1:SetActive(self.m_Hide)
        self.mImg_Hide2:SetActive(not self.m_Hide)

        if self.m_UIType ~= BigHostelConst.SceneUI_Type.MIANUI then
            self.gBtnClose:SetActive(not self.m_Hide)
        end
    end
end

function onClickSkip(self)
    self:switchInitAction()
    self:playGoAction(false)
end

function onClickInit(self)
    if not self:checkTrial() then
        return
    end

    if self.m_sceneModel.m_onFreeGq == true then
        return
    end

    UIFactory:alertMessge(_TT(84517), true, function()
        self:switchInitAction()
    end, _TT(1), nil, true, nil, _TT(2))
end

function onClickCamera(self)
    local state = bigHostel.BigHostelManager:getDisableFreeCameraReset()

    bigHostel.BigHostelManager:disableFreeCameraReset(not state)
    self:checkClickCameraState()
end

function checkClickCameraState(self)
    local state = bigHostel.BigHostelManager:getDisableFreeCameraReset()

    self.mImgCamera1:SetActive(not state)
    self.mImgCamera2:SetActive(state)
end

function switchInitAction(self)
    GameDispatcher:dispatchEvent(EventName.SHOW_BIGHOSTEL_BLACK)

    LoopManager:setTimeout(1, self, function ()
        GameDispatcher:dispatchEvent(EventName.BIGHOSTEL_LIVE_SETTRIGGER, BigHostelConst.BaseAnimatorParams.InitIdle)
        GameDispatcher:dispatchEvent(EventName.HIDE_BIGHOSTEL_BLACK)
    end)
end

----是否正在播放入场动画
function playGoAction(self, value)
    if value == nil then
        value = AnimatorUtil.isPlayHash(self.m_sceneModel.m_ani, BigHostelConst.startStateHash)
    end

    self.mBtnSwitch:SetActive(not value)
    self.mBtnInit:SetActive(not value)
    self.mBtnHide:SetActive(not value)
    self.gBtnClose:SetActive(not value and self.m_UIType ~= BigHostelConst.SceneUI_Type.MIANUI and self.m_Hide == false)

    self.mBtnPlay:SetActive(value)
    self.mBtnSkip:SetActive(value)
end

function onHideUI(self)
    self.mInfoGroup:SetActive(false)
end

function onShowUI(self)
    self.mInfoGroup:SetActive(true)
end

function onAnimSwitch(self, ani_state)
    self:checkCameraBtnState()
end

function onShowSceneProps(self)
    self:clearSceneProps()

    local args = bigHostel.BigHostelManager:getSceneProps()
    if table.empty(args) then
        self.mScenePropsGroup.gameObject:SetActive(false)
        return
    end

    self.m_scenePropKey = args.key

    for _, data in pairs(args.list) do
        local item = SimpleInsItem:create(self.mPropsItem, self.mScenePropsGroup, "BigHostelSceneUI_sceneProps")
        item.data = data
        item:getChildGO("mImgIcon"):GetComponent(ty.AutoRefImage):SetImg(data.icon, false)
        item:getChildGO("mEffects"):SetActive(false)

        if data.clickCall then
            item:addUIEvent(nil, function (_item)
                local curState = _item.data.clickCall()
                for _, v in pairs(self.m_scenePropsItems) do
                    v:getChildGO("mEffects"):SetActive(v.data.state == curState)
                end
            end)
        end

        table.insert(self.m_scenePropsItems, item)
    end

    if not self.mScenePropsGroup.gameObject.activeSelf then
        self.mScenePropsGroup.gameObject:SetActive(true)
    end
end

function clearSceneProps(self)
    if self.m_scenePropsItems then
        for _, v in pairs(self.m_scenePropsItems) do
            v.data = nil
            v:poolRecover()
        end
    end

    self.m_scenePropsItems = {}
    self.m_scenePropKey = nil
end

function refreshUIComponent(self)
    local dic = bigHostel.BigHostelManager:getUIComponentShowState()
    for key, data in pairs(dic) do
        self:onShowUIComponent(data)
    end
end

function onShowUIComponent(self, args)
    local component_name = args.key
    local value = args.val

    local component = self.m_childGos[component_name]
    if component ~= nil then
        if component.activeSelf == value then
            return
        end

        component:SetActive(value)

        if value then
            if component_name == "1503_5_YS" then
                self.m_initGlassValue = true
                self.mSliderGlass.value = self.m_sceneModel:getGlassAlpha()
                self.m_initGlassValue = nil
            end

            if args.call ~= nil then
                self:addUIEvent(component, function ()
                    args.call()
                end)
            end
        else
            self:removeUIEvent(component)
        end
    end
end

function checkCameraBtnState(self)
    local can = self.m_sceneModel:canDisableFreeCameraReset()
    self.mBtnCamera:SetActive(can)
    if can == false then
        bigHostel.BigHostelManager:disableFreeCameraReset(false)
        self:checkClickCameraState()
    end
end

----------------------------------------------------------CV
function onCvPlaying(self, args)
    if string.NullOrEmpty(args.line) then
        return
    end

    if not self.mTalkBlockLayer.activeSelf then
        self.mTalkBlockLayer:SetActive(true)
    end

    self.mNameTxt.text = args.name
    self.mMsgTxt.text = args.line
end

function onCvEnd(self)
    if self.mTalkBlockLayer.activeSelf then
        self.mTalkBlockLayer:SetActive(false)
    end
end

----------------------------------------------------交互操作

function onFrame(self)
    if gs.ApplicationUtil.IsPC() then
        local mouseX = gs.UnityEngineUtil.GetMousePosX()
        local mousey = gs.UnityEngineUtil.GetMousePosY()

        local showInteractCursor = false

        if (mouseX > 0 and mouseX < gs.Screen.width)and (mousey > 0 or mousey < gs.Screen.width) then
            if gs.UnityEngineUtil.GetRaycastUIResults(gs.Vector2(mouseX, mousey)).Count <= 1 then
                if self.m_sceneModel:getCanInteract() then
                    local sceneCamera = gs.CameraMgr:GetToScreenSceneCamera()
                    local hitInfo_1 = gs.UnityEngineUtil.RaycastByUICamera(sceneCamera, "Role", 100)
                    local hitInfo_2 = gs.UnityEngineUtil.RaycastByUICamera(sceneCamera, "RealLight", 100)
                    if(hitInfo_1 ~= nil and hitInfo_1.collider ~= nil) then
                        if hitInfo_1.collider.gameObject.tag ~= "Door" then
                            showInteractCursor = true
                        end
                    end

                    if not showInteractCursor then
                        if(hitInfo_2 ~= nil and hitInfo_2.collider ~= nil) then
                            if hitInfo_2.collider.gameObject.tag ~= "Door" then
                                showInteractCursor = true
                            end
                        end
                    end
                end
            end
        end

        if self.m_cursorType == nil or self.m_cursorType ~= showInteractCursor then
            local cursor_path = "arts/texture/customUI/MouseIcon.png"
            if showInteractCursor then
                cursor_path = "arts/texture/customUI/Hostel_MouseIcon.png"
            end

            local cursor = gs.ResMgr:LoadTexture(cursor_path)
            CS.UnityEngine.Cursor.SetCursor(cursor, gs.Vector2.zero, CS.UnityEngine.CursorMode.Auto)

            self.m_cursorType = showInteractCursor
        end
    end

    local model_data = bigHostel.BigHostelManager:getHostelHero()
    if model_data.main_type ~= BigHostelConst.SceneUI_Type.TRIAL and self.m_sceneModel:canSwitch() then
        if gs.Input.GetMouseButtonDown(0) then
            if gs.UnityEngineUtil.GetRaycastUIResults(gs.Vector2(gs.UnityEngineUtil.GetMousePosX(), gs.UnityEngineUtil.GetMousePosY())).Count <= 1 then
                local sceneCamera = gs.CameraMgr:GetToScreenSceneCamera()
                local hitInfo_1 = gs.UnityEngineUtil.RaycastByUICamera(sceneCamera, "Role", 100)
                local hitInfo_2 = gs.UnityEngineUtil.RaycastByUICamera(sceneCamera, "RealLight", 100)
                if (hitInfo_1 == nil or hitInfo_1.collider == nil) and (hitInfo_2 == nil or hitInfo_2.collider == nil) and self.m_sceneModel:getCanInteract() then

                    if self.m_clickTime == nil then
                        self.m_clickTime = gs.Time.time
                    end
                end
            end
        elseif not gs.Input.GetMouseButton(0) then
            if self.m_clickTime ~= nil then
                self.m_clickTime = nil
                self.m_sceneModel:disableFreeCamera(false)
            end
        end

        if self.m_clickTime ~= nil then
            if gs.Time.time - self.m_clickTime >= 0.3 then
                self:onSelectSceneLongClick()
            end
        else
            if self.mSceneSelectGroup.activeSelf then
                self.mSceneSelectGroup:SetActive(false)

                if self.m_sceneItemList then
                    for _, v in pairs(self.m_sceneItemList) do
                        v:poolRecover()
                    end

                    self.m_sceneItemList = nil
                end

                if self.m_selectSceneIndex ~= nil and self.m_selectSceneIndex ~= 0 then
                    local idle = "idle_" .. self.m_selectSceneIndex
                    if self.m_curModelIdle ~= idle then
                        GameDispatcher:dispatchEvent(EventName.SHOW_BIGHOSTEL_BLACK)
                        LoopManager:setTimeout(1, self, function ()
                            self.m_sceneModel:setTrigger(idle)
                            self.m_sceneModel:lookAtWeight(0, 0, 0, 0, 0, 0, 0)

                            self.m_selectSceneIndex = nil

                            GameDispatcher:dispatchEvent(EventName.HIDE_BIGHOSTEL_BLACK)
                        end)
                    end

                end
            end
        end
    end

    local scene_list = self.m_sceneModel.Scene_IconList
    if table.empty(scene_list) then
        self.mImgSceneIcon.gameObject:SetActive(false)

        self.mBtnSwitchImg:SetImg("arts/ui/pack/bigHostel/bigHostel_btn_07.png")
    else
        if self.m_curModelIdle ~= self.m_sceneModel:getCurIdle() then
            self.m_curModelIdle = self.m_sceneModel:getCurIdle()
            local index = string.split(self.m_curModelIdle, "_")
            local scene_list = self.m_sceneModel.Scene_IconList

            self.mImgSceneIcon.gameObject:SetActive(true)
            self.mImgSceneIcon:SetImg(string.format("arts/ui/pack/bigHostel/%s.png", scene_list[tonumber(index[2])]))

            self.mBtnSwitchImg:SetImg("arts/ui/pack/bigHostel/bigHostel_btn_08.png")
        end
    end
end

function onSelectSceneLongClick(self)
    local scene_list = self.m_sceneModel.Scene_IconList
    local scene_num = table.nums(scene_list)
    if scene_num <= 0 then
        return
    end

    local Screen_rectTrans = self.UIObject:GetComponent(ty.RectTransform)
    local ScreenResolution_width = Screen_rectTrans.rect.width
    local ScreenResolution_heigt = Screen_rectTrans.rect.height

    local camera = gs.CameraMgr:GetUICamera();
    local vector2 = camera:ScreenToViewportPoint(gs.Input.mousePosition)

    if not self.mSceneSelectGroup.activeSelf and self.m_onDrag ~= true then
        self.mSceneSelectGroup:SetActive(true)

        self.m_sceneItemList = {}
        for i = 1, scene_num do
            local parent = self:getChildTrans(string.format("mSelectPoint (%s)", i))
            local item = SimpleInsItem:create(self.mSelectItem, parent, "BigHostelSceneUI_sceneItem")
            item:getChildGO("mIcon"):GetComponent(ty.AutoRefImage):SetImg(string.format("arts/ui/pack/bigHostel/%s.png", scene_list[i]))

            table.insert(self.m_sceneItemList, item)
        end

        self.m_clickPos = gs.Vector3(vector2.x * ScreenResolution_width, vector2.y * ScreenResolution_heigt, 0)
        self.mSceneSelectGroup:GetComponent(ty.RectTransform).anchoredPosition = gs.Vector2(self.m_clickPos.x, self.m_clickPos.y)

        self.m_sceneModel:disableFreeCamera(true)
    end

    local pos = gs.Vector3(vector2.x * ScreenResolution_width, vector2.y * ScreenResolution_heigt, 0)
    local angle = self:getAngle(pos - self.m_clickPos, gs.Vector3.up)
    if angle ~= 0 then
        angle = angle + 18
        if angle >= 360 then
            angle = angle - 360
        end

        self.m_selectSceneIndex = math.ceil(angle / 36)

        if self.m_selectSceneIndex > scene_num then
            self.m_selectSceneIndex = 0
        end
    else
        self.m_selectSceneIndex = 0
    end

    for i = 1, 10 do
        self:getChildGO(string.format("mImgSelect (%s)", i)):SetActive(i == self.m_selectSceneIndex)
    end

end

function getAngle(self, from, to)
    local angle = gs.Vector3.Angle(from, to)
    local v3 = gs.Vector3.Cross(from, to)
    if v3.z > 0 or angle == 0 then
        return angle
    else
        return 360 - angle
    end
end

function onPointerDownHandler(self)
    GameDispatcher:dispatchEvent(EventName.BIGHOSTEL_SCREEN_MOUSEDOWN, self.mTouch.EventData)
end

function onPointerUpHandler(self)
    GameDispatcher:dispatchEvent(EventName.BIGHOSTEL_SCREEN_MOUSEUP)
end

function onDragHandler(self)
    GameDispatcher:dispatchEvent(EventName.BIGHOSTEL_SCREEN_MOUSEDRAG, self.mTouch.EventData)
    self.m_onDrag = true
end

function onEndDragHandler(self)
    GameDispatcher:dispatchEvent(EventName.BIGHOSTEL_SCREEN_MOUSEDRAG_END, self.mTouch.EventData)
    self.m_onDrag = nil
end

function onClickHandler(self)
    GameDispatcher:dispatchEvent(EventName.BIGHOSTEL_SCREEN_MOUSECLICK)
end

return _M
