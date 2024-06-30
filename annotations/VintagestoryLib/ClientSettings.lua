---@meta

---@class ClientSettings: SettingsBase, SettingsBaseNoObf, SettingsBase, ISettings
---@field FileName string
---@field BkpFileName string
---@field TempFileName string
---@field DialogPositions table
---@field KeyMapping table
---@field SelectedBlockOutline boolean
---@field ShowPasswordProtectedServers boolean
---@field TestGlExtensions boolean
---@field ScreenshotExifDataMode number
---@field ShowOpenForAllServers boolean
---@field ShowWhitelistedServers boolean
---@field ShowModdedServers boolean
---@field ShowMoreGfxOptions boolean
---@field Occlusionculling boolean
---@field GlDebugMode boolean
---@field GlErrorChecking boolean
---@field MultipleInstances boolean
---@field StartupErrorDialog boolean
---@field HighQualityAnimations boolean
---@field ToggleSprint boolean
---@field SeparateCtrl boolean
---@field WebRequestTimeout number
---@field OptimizeRamMode number
---@field LeftDialogMargin number
---@field RightDialogMargin number
---@field ShowSurvivalHelpDialog boolean
---@field ShowCreativeHelpDialog boolean
---@field ViewBobbing boolean
---@field ChatDialogVisible boolean
---@field UserEmail string
---@field MpToken string
---@field HasGameServer boolean
---@field Sessionkey string
---@field SessionSignature string
---@field MasterserverUrl string
---@field ModDbUrl string
---@field PlayerUID string
---@field PlayerName string
---@field Entitlements string
---@field SettingsVersion string
---@field GUIScale number
---@field FontSize number
---@field LodBias number
---@field LodBiasFar number
---@field SmoothShadows boolean
---@field SSAOQuality number
---@field FlipScreenshot boolean
---@field DeveloperMode boolean
---@field ViewDistance number
---@field FXAA boolean
---@field RenderMetaBlocks boolean
---@field ChunkVerticesUploadRateLimiter number
---@field SSAA number
---@field MegaScreenshotSizeMul number
---@field WavingFoliage boolean
---@field LiquidFoamAndShinyEffect boolean
---@field PauseGameOnLostFocus boolean
---@field Bloom boolean
---@field GraphicsPresetId number
---@field GameWindowMode number
---@field SoundLevel number
---@field EntitySoundLevel number
---@field AmbientSoundLevel number
---@field WeatherSoundLevel number
---@field MusicLevel number
---@field MusicFrequency number
---@field Language string
---@field DefaultFontName string
---@field DecorativeFontName string
---@field UseServerTextures boolean
---@field ScreenWidth number
---@field ScreenHeight number
---@field WeirdMacOSMouseYOffset number
---@field BlockAtlasSubPixelPadding number
---@field ItemAtlasSubPixelPadding number
---@field MipMapLevel number
---@field MaxQuadParticles number
---@field MaxCubeParticles number
---@field MaxAsyncQuadParticles number
---@field MaxAsyncCubeParticles number
---@field MouseSensivity number
---@field MouseSmoothing number
---@field VsyncMode number
---@field ModelDataPoolMaxVertexSize number
---@field ModelDataPoolMaxIndexSize number
---@field ModelDataPoolMaxParts number
---@field FieldOfView number
---@field MaxTextureAtlasWidth number
---@field MaxTextureAtlasHeight number
---@field SkipNvidiaProfileCheck boolean
---@field AmbientBloomLevel number
---@field GodRayQuality number
---@field Minbrightness number
---@field RecordingBufferSize number
---@field UseHRTFAudio boolean
---@field AllowSettingHRTFAudio boolean
---@field Force48kHzHRTFAudio boolean
---@field RenderParticles boolean
---@field AmbientParticles boolean
---@field RenderClouds boolean
---@field TransparentRenderPass boolean
---@field GammaLevel number
---@field ExtraGammaLevel number
---@field BrightnessLevel number
---@field SepiaLevel number
---@field CameraShakeStrength number
---@field Wireframethickness number
---@field guiColorsPreset number
---@field InstabilityWavingStrength number
---@field ModPaths table
---@field DisabledMods table
---@field ExtendedDebugInfo boolean
---@field ScaleScreenshot boolean
---@field RecordingFrameRate number
---@field GameTickFrameRate number
---@field RecordingCodec string
---@field ChatWindowWidth number
---@field ChatWindowHeight number
---@field MaxFPS number
---@field ShowEntityDebugInfo boolean
---@field ShowBlockInfoHud boolean
---@field ShowBlockInteractionHelp boolean
---@field ShowCoordinateHud boolean
---@field ShadowMapQuality number
---@field ParticleLevel number
---@field MaxDynamicLights number
---@field MouseWheelSensivity number
---@field VideoFileTarget string
---@field GlContextVersion string
---@field AudioDevice string
---@field DirectMouseMode boolean
---@field InvertMouseYAxis boolean
---@field ImmersiveMouseMode boolean
---@field ImmersiveFpMode boolean
---@field AutoChat boolean
---@field ItemCollectMode number
---@field WindowBorder number
---@field OffThreadMipMapCreation boolean
---@field FpHandsYOffset number
---@field FpHandsFoV number
---@field IsNewSettingsFile boolean
---@field IsDirty boolean
---@field ShouldTriggerWatchers boolean
---@field Bool ISettingsClass`1
---@field Int ISettingsClass`1
---@field Float ISettingsClass`1
---@field String ISettingsClass`1
---@field Strings ISettingsClass`1
---@field Inst ClientSettings
---@field OtherDirty boolean
ClientSettings = {}


---@return string
function ClientSettings.get_FileName() end

---@return string
function ClientSettings.get_BkpFileName() end

---@return string
function ClientSettings.get_TempFileName() end

---@return table
function ClientSettings.get_DialogPositions() end

---@param value table
function ClientSettings.set_DialogPositions(value) end

---@param key string
---@param pos Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function ClientSettings.SetDialogPosition(key, pos) end

---@param key string
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function ClientSettings.GetDialogPosition(key) end

---@return table
function ClientSettings.get_KeyMapping() end

---@param value table
function ClientSettings.set_KeyMapping(value) end

---@param key string
---@param value KeyCombination Mapping of an input key combination.   Note: the "key" might also be a mouse button if a hotkey has been configured to be activated by a mouse button
function ClientSettings.SetKeyMapping(key, value) end

---@param key string
---@return KeyCombination # Mapping of an input key combination.   Note: the "key" might also be a mouse button if a hotkey has been configured to be activated by a mouse button
function ClientSettings.GetKeyMapping(key) end

---@param handler function
function ClientSettings.AddKeyCombinationUpdatedWatcher(handler) end

function ClientSettings.ClearWatchers() end

---@return boolean
function ClientSettings.get_SelectedBlockOutline() end

---@param value boolean
function ClientSettings.set_SelectedBlockOutline(value) end

---@return boolean
function ClientSettings.get_ShowPasswordProtectedServers() end

---@param value boolean
function ClientSettings.set_ShowPasswordProtectedServers(value) end

---@return boolean
function ClientSettings.get_TestGlExtensions() end

---@param value boolean
function ClientSettings.set_TestGlExtensions(value) end

---@return number
function ClientSettings.get_ScreenshotExifDataMode() end

---@param value number
function ClientSettings.set_ScreenshotExifDataMode(value) end

---@return boolean
function ClientSettings.get_ShowOpenForAllServers() end

---@param value boolean
function ClientSettings.set_ShowOpenForAllServers(value) end

---@return boolean
function ClientSettings.get_ShowWhitelistedServers() end

---@param value boolean
function ClientSettings.set_ShowWhitelistedServers(value) end

---@return boolean
function ClientSettings.get_ShowModdedServers() end

---@param value boolean
function ClientSettings.set_ShowModdedServers(value) end

---@return boolean
function ClientSettings.get_ShowMoreGfxOptions() end

---@param value boolean
function ClientSettings.set_ShowMoreGfxOptions(value) end

---@return boolean
function ClientSettings.get_Occlusionculling() end

---@param value boolean
function ClientSettings.set_Occlusionculling(value) end

---@return boolean
function ClientSettings.get_GlDebugMode() end

---@param value boolean
function ClientSettings.set_GlDebugMode(value) end

---@return boolean
function ClientSettings.get_GlErrorChecking() end

---@param value boolean
function ClientSettings.set_GlErrorChecking(value) end

---@return boolean
function ClientSettings.get_MultipleInstances() end

---@param value boolean
function ClientSettings.set_MultipleInstances(value) end

---@return boolean
function ClientSettings.get_StartupErrorDialog() end

---@param value boolean
function ClientSettings.set_StartupErrorDialog(value) end

---@return boolean
function ClientSettings.get_HighQualityAnimations() end

---@param value boolean
function ClientSettings.set_HighQualityAnimations(value) end

---@return boolean
function ClientSettings.get_ToggleSprint() end

---@param value boolean
function ClientSettings.set_ToggleSprint(value) end

---@return boolean
function ClientSettings.get_SeparateCtrl() end

---@param value boolean
function ClientSettings.set_SeparateCtrl(value) end

---@return number
function ClientSettings.get_WebRequestTimeout() end

---@param value number
function ClientSettings.set_WebRequestTimeout(value) end

---@return number
function ClientSettings.get_OptimizeRamMode() end

---@param value number
function ClientSettings.set_OptimizeRamMode(value) end

---@return number
function ClientSettings.get_LeftDialogMargin() end

---@param value number
function ClientSettings.set_LeftDialogMargin(value) end

---@return number
function ClientSettings.get_RightDialogMargin() end

---@param value number
function ClientSettings.set_RightDialogMargin(value) end

---@return boolean
function ClientSettings.get_ShowSurvivalHelpDialog() end

---@param value boolean
function ClientSettings.set_ShowSurvivalHelpDialog(value) end

---@return boolean
function ClientSettings.get_ShowCreativeHelpDialog() end

---@param value boolean
function ClientSettings.set_ShowCreativeHelpDialog(value) end

---@return boolean
function ClientSettings.get_ViewBobbing() end

---@param value boolean
function ClientSettings.set_ViewBobbing(value) end

---@return boolean
function ClientSettings.get_ChatDialogVisible() end

---@param value boolean
function ClientSettings.set_ChatDialogVisible(value) end

---@return string
function ClientSettings.get_UserEmail() end

---@param value string
function ClientSettings.set_UserEmail(value) end

---@return string
function ClientSettings.get_MpToken() end

---@param value string
function ClientSettings.set_MpToken(value) end

---@return boolean
function ClientSettings.get_HasGameServer() end

---@param value boolean
function ClientSettings.set_HasGameServer(value) end

---@return string
function ClientSettings.get_Sessionkey() end

---@param value string
function ClientSettings.set_Sessionkey(value) end

---@return string
function ClientSettings.get_SessionSignature() end

---@param value string
function ClientSettings.set_SessionSignature(value) end

---@return string
function ClientSettings.get_MasterserverUrl() end

---@param value string
function ClientSettings.set_MasterserverUrl(value) end

---@return string
function ClientSettings.get_ModDbUrl() end

---@param value string
function ClientSettings.set_ModDbUrl(value) end

---@return string
function ClientSettings.get_PlayerUID() end

---@param value string
function ClientSettings.set_PlayerUID(value) end

---@return string
function ClientSettings.get_PlayerName() end

---@param value string
function ClientSettings.set_PlayerName(value) end

---@return string
function ClientSettings.get_Entitlements() end

---@param value string
function ClientSettings.set_Entitlements(value) end

---@return string
function ClientSettings.get_SettingsVersion() end

---@param value string
function ClientSettings.set_SettingsVersion(value) end

---@return number
function ClientSettings.get_GUIScale() end

---@param value number
function ClientSettings.set_GUIScale(value) end

---@return number
function ClientSettings.get_FontSize() end

---@param value number
function ClientSettings.set_FontSize(value) end

---@return number
function ClientSettings.get_LodBias() end

---@param value number
function ClientSettings.set_LodBias(value) end

---@return number
function ClientSettings.get_LodBiasFar() end

---@param value number
function ClientSettings.set_LodBiasFar(value) end

---@return boolean
function ClientSettings.get_SmoothShadows() end

---@param value boolean
function ClientSettings.set_SmoothShadows(value) end

---@return number
function ClientSettings.get_SSAOQuality() end

---@param value number
function ClientSettings.set_SSAOQuality(value) end

---@return boolean
function ClientSettings.get_FlipScreenshot() end

---@param value boolean
function ClientSettings.set_FlipScreenshot(value) end

---@return boolean
function ClientSettings.get_DeveloperMode() end

---@param value boolean
function ClientSettings.set_DeveloperMode(value) end

---@return number
function ClientSettings.get_ViewDistance() end

---@param value number
function ClientSettings.set_ViewDistance(value) end

---@return boolean
function ClientSettings.get_FXAA() end

---@param value boolean
function ClientSettings.set_FXAA(value) end

---@return boolean
function ClientSettings.get_RenderMetaBlocks() end

---@param value boolean
function ClientSettings.set_RenderMetaBlocks(value) end

---@return number
function ClientSettings.get_ChunkVerticesUploadRateLimiter() end

---@param value number
function ClientSettings.set_ChunkVerticesUploadRateLimiter(value) end

---@return number
function ClientSettings.get_SSAA() end

---@param value number
function ClientSettings.set_SSAA(value) end

---@return number
function ClientSettings.get_MegaScreenshotSizeMul() end

---@param value number
function ClientSettings.set_MegaScreenshotSizeMul(value) end

---@return boolean
function ClientSettings.get_WavingFoliage() end

---@param value boolean
function ClientSettings.set_WavingFoliage(value) end

---@return boolean
function ClientSettings.get_LiquidFoamAndShinyEffect() end

---@param value boolean
function ClientSettings.set_LiquidFoamAndShinyEffect(value) end

---@return boolean
function ClientSettings.get_PauseGameOnLostFocus() end

---@param value boolean
function ClientSettings.set_PauseGameOnLostFocus(value) end

---@return boolean
function ClientSettings.get_Bloom() end

---@param value boolean
function ClientSettings.set_Bloom(value) end

---@return number
function ClientSettings.get_GraphicsPresetId() end

---@param value number
function ClientSettings.set_GraphicsPresetId(value) end

---@return number
function ClientSettings.get_GameWindowMode() end

---@param value number
function ClientSettings.set_GameWindowMode(value) end

---@return number
function ClientSettings.get_SoundLevel() end

---@param value number
function ClientSettings.set_SoundLevel(value) end

---@return number
function ClientSettings.get_EntitySoundLevel() end

---@param value number
function ClientSettings.set_EntitySoundLevel(value) end

---@return number
function ClientSettings.get_AmbientSoundLevel() end

---@param value number
function ClientSettings.set_AmbientSoundLevel(value) end

---@return number
function ClientSettings.get_WeatherSoundLevel() end

---@param value number
function ClientSettings.set_WeatherSoundLevel(value) end

---@return number
function ClientSettings.get_MusicLevel() end

---@param value number
function ClientSettings.set_MusicLevel(value) end

---@return number
function ClientSettings.get_MusicFrequency() end

---@param value number
function ClientSettings.set_MusicFrequency(value) end

---@return string
function ClientSettings.get_Language() end

---@param value string
function ClientSettings.set_Language(value) end

---@return string
function ClientSettings.get_DefaultFontName() end

---@param value string
function ClientSettings.set_DefaultFontName(value) end

---@return string
function ClientSettings.get_DecorativeFontName() end

---@param value string
function ClientSettings.set_DecorativeFontName(value) end

---@return boolean
function ClientSettings.get_UseServerTextures() end

---@param value boolean
function ClientSettings.set_UseServerTextures(value) end

---@return number
function ClientSettings.get_ScreenWidth() end

---@param value number
function ClientSettings.set_ScreenWidth(value) end

---@return number
function ClientSettings.get_ScreenHeight() end

---@param value number
function ClientSettings.set_ScreenHeight(value) end

---@return number
function ClientSettings.get_WeirdMacOSMouseYOffset() end

---@param value number
function ClientSettings.set_WeirdMacOSMouseYOffset(value) end

---@return number
function ClientSettings.get_BlockAtlasSubPixelPadding() end

---@param value number
function ClientSettings.set_BlockAtlasSubPixelPadding(value) end

---@return number
function ClientSettings.get_ItemAtlasSubPixelPadding() end

---@param value number
function ClientSettings.set_ItemAtlasSubPixelPadding(value) end

---@return number
function ClientSettings.get_MipMapLevel() end

---@param value number
function ClientSettings.set_MipMapLevel(value) end

---@return number
function ClientSettings.get_MaxQuadParticles() end

---@param value number
function ClientSettings.set_MaxQuadParticles(value) end

---@return number
function ClientSettings.get_MaxCubeParticles() end

---@param value number
function ClientSettings.set_MaxCubeParticles(value) end

---@return number
function ClientSettings.get_MaxAsyncQuadParticles() end

---@param value number
function ClientSettings.set_MaxAsyncQuadParticles(value) end

---@return number
function ClientSettings.get_MaxAsyncCubeParticles() end

---@param value number
function ClientSettings.set_MaxAsyncCubeParticles(value) end

---@return number
function ClientSettings.get_MouseSensivity() end

---@param value number
function ClientSettings.set_MouseSensivity(value) end

---@return number
function ClientSettings.get_MouseSmoothing() end

---@param value number
function ClientSettings.set_MouseSmoothing(value) end

---@return number
function ClientSettings.get_VsyncMode() end

---@param value number
function ClientSettings.set_VsyncMode(value) end

---@return number
function ClientSettings.get_ModelDataPoolMaxVertexSize() end

---@param value number
function ClientSettings.set_ModelDataPoolMaxVertexSize(value) end

---@return number
function ClientSettings.get_ModelDataPoolMaxIndexSize() end

---@param value number
function ClientSettings.set_ModelDataPoolMaxIndexSize(value) end

---@return number
function ClientSettings.get_ModelDataPoolMaxParts() end

---@param value number
function ClientSettings.set_ModelDataPoolMaxParts(value) end

---@return number
function ClientSettings.get_FieldOfView() end

---@param value number
function ClientSettings.set_FieldOfView(value) end

---@return number
function ClientSettings.get_MaxTextureAtlasWidth() end

---@param value number
function ClientSettings.set_MaxTextureAtlasWidth(value) end

---@return number
function ClientSettings.get_MaxTextureAtlasHeight() end

---@param value number
function ClientSettings.set_MaxTextureAtlasHeight(value) end

---@return boolean
function ClientSettings.get_SkipNvidiaProfileCheck() end

---@param value boolean
function ClientSettings.set_SkipNvidiaProfileCheck(value) end

---@return number
function ClientSettings.get_AmbientBloomLevel() end

---@param value number
function ClientSettings.set_AmbientBloomLevel(value) end

---@return number
function ClientSettings.get_GodRayQuality() end

---@param value number
function ClientSettings.set_GodRayQuality(value) end

---@return number
function ClientSettings.get_Minbrightness() end

---@param value number
function ClientSettings.set_Minbrightness(value) end

---@return number
function ClientSettings.get_RecordingBufferSize() end

---@param value number
function ClientSettings.set_RecordingBufferSize(value) end

---@return boolean
function ClientSettings.get_UseHRTFAudio() end

---@param value boolean
function ClientSettings.set_UseHRTFAudio(value) end

---@return boolean
function ClientSettings.get_AllowSettingHRTFAudio() end

---@param value boolean
function ClientSettings.set_AllowSettingHRTFAudio(value) end

---@return boolean
function ClientSettings.get_Force48kHzHRTFAudio() end

---@param value boolean
function ClientSettings.set_Force48kHzHRTFAudio(value) end

---@return boolean
function ClientSettings.get_RenderParticles() end

---@param value boolean
function ClientSettings.set_RenderParticles(value) end

---@return boolean
function ClientSettings.get_AmbientParticles() end

---@param value boolean
function ClientSettings.set_AmbientParticles(value) end

---@return boolean
function ClientSettings.get_RenderClouds() end

---@param value boolean
function ClientSettings.set_RenderClouds(value) end

---@return boolean
function ClientSettings.get_TransparentRenderPass() end

---@param value boolean
function ClientSettings.set_TransparentRenderPass(value) end

---@return number
function ClientSettings.get_GammaLevel() end

---@param value number
function ClientSettings.set_GammaLevel(value) end

---@return number
function ClientSettings.get_ExtraGammaLevel() end

---@param value number
function ClientSettings.set_ExtraGammaLevel(value) end

---@return number
function ClientSettings.get_BrightnessLevel() end

---@param value number
function ClientSettings.set_BrightnessLevel(value) end

---@return number
function ClientSettings.get_SepiaLevel() end

---@param value number
function ClientSettings.set_SepiaLevel(value) end

---@return number
function ClientSettings.get_CameraShakeStrength() end

---@param value number
function ClientSettings.set_CameraShakeStrength(value) end

---@return number
function ClientSettings.get_Wireframethickness() end

---@param value number
function ClientSettings.set_Wireframethickness(value) end

---@return number
function ClientSettings.get_guiColorsPreset() end

---@param value number
function ClientSettings.set_guiColorsPreset(value) end

---@return number
function ClientSettings.get_InstabilityWavingStrength() end

---@param value number
function ClientSettings.set_InstabilityWavingStrength(value) end

---@return table
function ClientSettings.get_ModPaths() end

---@param value table
function ClientSettings.set_ModPaths(value) end

---@return table
function ClientSettings.get_DisabledMods() end

---@param value table
function ClientSettings.set_DisabledMods(value) end

---@return boolean
function ClientSettings.get_ExtendedDebugInfo() end

---@param value boolean
function ClientSettings.set_ExtendedDebugInfo(value) end

---@return boolean
function ClientSettings.get_ScaleScreenshot() end

---@param value boolean
function ClientSettings.set_ScaleScreenshot(value) end

---@return number
function ClientSettings.get_RecordingFrameRate() end

---@param value number
function ClientSettings.set_RecordingFrameRate(value) end

---@return number
function ClientSettings.get_GameTickFrameRate() end

---@param value number
function ClientSettings.set_GameTickFrameRate(value) end

---@return string
function ClientSettings.get_RecordingCodec() end

---@param value string
function ClientSettings.set_RecordingCodec(value) end

---@return number
function ClientSettings.get_ChatWindowWidth() end

---@param value number
function ClientSettings.set_ChatWindowWidth(value) end

---@return number
function ClientSettings.get_ChatWindowHeight() end

---@param value number
function ClientSettings.set_ChatWindowHeight(value) end

---@return number
function ClientSettings.get_MaxFPS() end

---@param value number
function ClientSettings.set_MaxFPS(value) end

---@return boolean
function ClientSettings.get_ShowEntityDebugInfo() end

---@param value boolean
function ClientSettings.set_ShowEntityDebugInfo(value) end

---@return boolean
function ClientSettings.get_ShowBlockInfoHud() end

---@param value boolean
function ClientSettings.set_ShowBlockInfoHud(value) end

---@return boolean
function ClientSettings.get_ShowBlockInteractionHelp() end

---@param value boolean
function ClientSettings.set_ShowBlockInteractionHelp(value) end

---@return boolean
function ClientSettings.get_ShowCoordinateHud() end

---@param value boolean
function ClientSettings.set_ShowCoordinateHud(value) end

---@return number
function ClientSettings.get_ShadowMapQuality() end

---@param value number
function ClientSettings.set_ShadowMapQuality(value) end

---@return number
function ClientSettings.get_ParticleLevel() end

---@param value number
function ClientSettings.set_ParticleLevel(value) end

---@return number
function ClientSettings.get_MaxDynamicLights() end

---@param value number
function ClientSettings.set_MaxDynamicLights(value) end

---@return number
function ClientSettings.get_MouseWheelSensivity() end

---@param value number
function ClientSettings.set_MouseWheelSensivity(value) end

---@return string
function ClientSettings.get_VideoFileTarget() end

---@param value string
function ClientSettings.set_VideoFileTarget(value) end

---@return string
function ClientSettings.get_GlContextVersion() end

---@param value string
function ClientSettings.set_GlContextVersion(value) end

---@return string
function ClientSettings.get_AudioDevice() end

---@param value string
function ClientSettings.set_AudioDevice(value) end

---@return boolean
function ClientSettings.get_DirectMouseMode() end

---@param value boolean
function ClientSettings.set_DirectMouseMode(value) end

---@return boolean
function ClientSettings.get_InvertMouseYAxis() end

---@param value boolean
function ClientSettings.set_InvertMouseYAxis(value) end

---@return boolean
function ClientSettings.get_ImmersiveMouseMode() end

---@param value boolean
function ClientSettings.set_ImmersiveMouseMode(value) end

---@return boolean
function ClientSettings.get_ImmersiveFpMode() end

---@param value boolean
function ClientSettings.set_ImmersiveFpMode(value) end

---@return boolean
function ClientSettings.get_AutoChat() end

---@param value boolean
function ClientSettings.set_AutoChat(value) end

---@return number
function ClientSettings.get_ItemCollectMode() end

---@param value number
function ClientSettings.set_ItemCollectMode(value) end

---@return number
function ClientSettings.get_WindowBorder() end

---@param value number
function ClientSettings.set_WindowBorder(value) end

---@return boolean
function ClientSettings.get_OffThreadMipMapCreation() end

---@param value boolean
function ClientSettings.set_OffThreadMipMapCreation(value) end

---@return number
function ClientSettings.get_FpHandsYOffset() end

---@param value number
function ClientSettings.set_FpHandsYOffset(value) end

---@return number
function ClientSettings.get_FpHandsFoV() end

---@param value number
function ClientSettings.set_FpHandsFoV(value) end

---@return boolean
function ClientSettings.get_IsNewSettingsFile() end

function ClientSettings.LoadDefaultValues() end

---@param force? boolean
---@return boolean
function ClientSettings.Save(force) end

---@param key string
---@param handler OnSettingsChanged`1
function ClientSettings.AddWatcher(key, handler) end

---@param key string
---@param defaultValue? string
---@return string
function ClientSettings.GetStringSetting(key, defaultValue) end

---@param key string
---@param defaultValue? table
---@return table
function ClientSettings.GetStringListSetting(key, defaultValue) end

---@param key string
---@return number
function ClientSettings.GetIntSetting(key) end

---@param key string
---@return number
function ClientSettings.GetFloatSetting(key) end

---@param key string
---@return boolean
function ClientSettings.GetBoolSetting(key) end

---@param name string
---@return boolean
function ClientSettings.HasSetting(name) end

---@param name string
---@return userdata
function ClientSettings.GetSettingType(name) end

function ClientSettings.Load() end

---@return boolean
function ClientSettings.get_IsDirty() end

---@param value boolean
function ClientSettings.set_ShouldTriggerWatchers(value) end

---@return ISettingsClass`1 # Setting interface.
function ClientSettings.get_Bool() end

---@return ISettingsClass`1 # Setting interface.
function ClientSettings.get_Int() end

---@return ISettingsClass`1 # Setting interface.
function ClientSettings.get_Float() end

---@return ISettingsClass`1 # Setting interface.
function ClientSettings.get_String() end

---@return ISettingsClass`1 # Setting interface.
function ClientSettings.get_Strings() end

---@return userdata
function ClientSettings.GetType() end

---@return string
function ClientSettings.ToString() end

---@param obj userdata
---@return boolean
function ClientSettings.Equals(obj) end

---@return number
function ClientSettings.GetHashCode() end


