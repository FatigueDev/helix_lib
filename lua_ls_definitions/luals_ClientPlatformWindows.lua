---@meta ClientPlatformWindows
---@class ClientPlatformWindows: ClientPlatformAbstract
---@field ctor fun(logger: Logger): ClientPlatformWindows
---@field StartAudio fun(): nil
---@field AddAudioSettingsWatchers fun(): nil
---@field StopAudio fun(): nil
---@field get_AvailableAudioDevices fun(): Iany[]
---@field get_CurrentAudioDevice fun(): string
---@field set_CurrentAudioDevice fun(value: string): nil
---@field CreateAudioData fun(asset: IAsset): AudioData
---@field IsAudioDataLoaded fun(data: AudioData): boolean
---@field CreateAudio fun(sound: SoundParams, data: AudioData): ILoadedSound
---@field UpdateAudioListener fun(posX: Single, posY: Single, posZ: Single, orientX: Single, orientY: Single, orientZ: Single): nil
---@field get_AssetManager fun(): AssetManager
---@field get_Logger fun(): ILogger
---@field GetGraphicsCardRenderer fun(): string
---@field LogAndTestHardwareInfosStage1 fun(): nil
---@field LogAndTestHardwareInfosStage2 fun(): nil
---@field GetGraphicCardInfos fun(): string
---@field GetFrameworkInfos fun(): string
---@field IsExitAvailable fun(): boolean
---@field SetWindowSize fun(width: number, height: number): nil
---@field get_EllapsedMs fun(): Int64
---@field CreateBitmap fun(width: number, height: number): BitmapRef
---@field SetBitmapPixelsArgb fun(bmp: BitmapRef, pixels: number[]): nil
---@field CreateBitmapFromPng fun(asset: IAsset): BitmapRef
---@overload fun(data: number[]): BitmapRef
---@overload fun(data: number[], dataLength: number): BitmapRef
---@field CreateBitmapFromPixels fun(pixels: number[], width: number, height: number): BitmapRef
---@field CreateMonitor fun(): Monitortable
---@field EnterMonitor fun(monitorObject: Monitortable): nil
---@field ExitMonitor fun(monitorObject: Monitortable): nil
---@field CreateAviWriter fun(framerate: Single, codec: string): IAviWriter
---@field GetAvailableCodecs fun(): AvailableCodec[]
---@field GetGameVersion fun(): string
---@field SetServerExitInterface fun(exit: GameExit): nil
---@field ThreadSpinWait fun(iterations: number): nil
---@field LoadAssets fun(): nil
---@field get_WindowSize fun(): Size2i
---@field get_ScreenSize fun(): Size2i
---@field get_WindowBorder fun(): EnumWindowBorder
---@field set_WindowBorder fun(value: EnumWindowBorder): nil
---@field Start fun(): nil
---@field get_CpuCoreCount fun(): number
---@field RebuildFrameBuffers fun(): nil
---@field SetVSync fun(enabled: boolean): nil
---@field SetDirectMouseMode fun(enabled: boolean): nil
---@field SaveScreenshot fun(path: string, filename: string, withAlpha: boolean, flip: boolean, metaDataStr: string): string
---@field GrabScreenshot fun(withAlpha: boolean, scale: boolean): BitmapRef
---@overload fun(width: number, height: number, scaleScreenshot: boolean, flip: boolean, withAlpha: boolean): BitmapRef
---@field WindowExit fun(reason: string): nil
---@field SetTitle fun(applicationname: string): nil
---@field GetWindowState fun(): WindowState
---@field SetWindowState fun(value: WindowState): nil
---@field SetWindowAttribute fun(attribute: WindowAttribute, value: boolean): nil
---@field StartSinglePlayerServer fun(serverargs: StartServerArgs): nil
---@field ExitSinglePlayerServer fun(): nil
---@field IsLoadedSinglePlayerServer fun(): boolean
---@field GetSinglePlayerServerNetwork fun(): DummyNetwork
---@field get_IsFocused fun(): boolean
---@field SetFileDropHandler fun(handler: any`1): nil
---@field RegisterOnFocusChange fun(handler: OnFocusChanged): nil
---@field SetWindowClosedHandler fun(handler: Action): nil
---@field SetFrameHandler fun(handler: NewFrameHandler): nil
---@field RegisterKeyboardEvent fun(handler: KeyEventHandler): nil
---@field RegisterMouseEvent fun(handler: MouseEventHandler): nil
---@field AddOnCrash fun(handler: OnCrashHandler): nil
---@field ClearOnCrash fun(): nil
---@field get_DebugDrawCalls fun(): boolean
---@field set_DebugDrawCalls fun(value: boolean): nil
---@field RenderMesh fun(modelRef: MeshRef): nil
---@field RenderFullscreenTriangle fun(modelRef: MeshRef): nil
---@field RenderMesh fun(modelRef: MeshRef, indices: number[], indicesSizes: number[], groupCount: number): nil
---@field RenderMeshInstanced fun(modelRef: MeshRef, quantity: number): nil
---@field get_FrameBuffers fun(): any[]
---@field get_IsServerRunning fun(): boolean
---@field set_IsServerRunning fun(value: boolean): nil
---@field SetGamePausedState fun(paused: boolean): nil
---@field ResetGamePauseAndUptimeState fun(): nil
---@field get_IsGamePaused fun(): boolean
---@field ToggleOffscreenBuffer fun(enable: boolean): nil
---@field DisposeFrameBuffer fun(frameBuffer: FrameBufferRef, disposeTextures: boolean): nil
---@field CreateFramebuffer fun(fbAttrs: FramebufferAttrs): FrameBufferRef
---@field get_CurrentFrameBuffer fun(): FrameBufferRef
---@field set_CurrentFrameBuffer fun(value: FrameBufferRef): nil
---@field SetupDefaultFrameBuffers fun(): any[]
---@field DisposeFrameBuffers fun(buffers: any[]): nil
---@field ClearFrameBuffer fun(framebuffer: FrameBufferRef, clearDepth: boolean): nil
---@overload fun(framebuffer: FrameBufferRef, clearColor: Single[], clearDepthBuffer: boolean, clearColorBuffers: boolean): nil
---@field LoadFrameBuffer fun(frameBuffer: FrameBufferRef, textureId: number): nil
---@overload fun(frameBuffer: FrameBufferRef): nil
---@field UnloadFrameBuffer fun(frameBuffer: FrameBufferRef): nil
---@overload fun(framebuffer: EnumFrameBuffer): nil
---@overload fun(framebuffer: EnumFrameBuffer): nil
---@overload fun(framebuffer: EnumFrameBuffer): nil
---@field MergeTransparentRenderPass fun(): nil
---@field RenderPostprocessingEffects fun(projectMatrix: Single[]): nil
---@field RenderFinalComposition fun(): nil
---@field BlitPrimaryToDefault fun(): nil
---@field get_GlErrorChecking fun(): boolean
---@field set_GlErrorChecking fun(value: boolean): nil
---@field get_GlDebugMode fun(): boolean
---@field set_GlDebugMode fun(value: boolean): nil
---@field CheckGlError fun(errmsg: string): nil
---@field CheckGlErrorAlways fun(errmsg: string): nil
---@field GlGetError fun(): string
---@field GetGLShaderVersionString fun(): string
---@field GenSampler fun(linear: boolean): number
---@field GLWireframes fun(toggle: boolean): nil
---@field GlViewport fun(x: number, y: number, width: number, height: number): nil
---@field GlScissor fun(x: number, y: number, width: number, height: number): nil
---@field get_GlScissorFlagEnabled fun(): boolean
---@field GlScissorFlag fun(enable: boolean): nil
---@field GlEnableDepthTest fun(): nil
---@field GlDisableDepthTest fun(): nil
---@field BindTexture2d fun(texture: number): nil
---@field BindTextureCubeMap fun(texture: number): nil
---@field UnBindTextureCubeMap fun(): nil
---@field GlToggleBlend fun(on: boolean, blendMode: EnumBlendMode): nil
---@field GlDisableCullFace fun(): nil
---@field GlEnableCullFace fun(): nil
---@field GlClearColorRgbaf fun(r: Single, g: Single, b: Single, a: Single): nil
---@field GLLineWidth fun(width: Single): nil
---@field SmoothLines fun(on: boolean): nil
---@field GlDepthMask fun(flag: boolean): nil
---@field GlDepthFunc fun(depthFunc: EnumDepthFunction): nil
---@field GlCullFaceBack fun(): nil
---@field GlGenerateTex2DMipmaps fun(): nil
---@field LoadCairoTexture fun(surface: ImageSurface, linearMag: boolean): number
---@field LoadOrUpdateCairoTexture fun(surface: ImageSurface, linearMag: boolean, intoTexture: LoadedTexture&): nil
---@field LoadTexture fun(bmp: SKBitmap, linearMag: boolean, clampMode: number, generateMipmaps: boolean): number
---@field LoadIntoTexture fun(srcBmp: IBitmap, targetTextureId: number, destX: number, destY: number, generateMipmaps: boolean): nil
---@field LoadTexture fun(bmp: IBitmap, linearMag: boolean, clampMode: number, generateMipmaps: boolean): number
---@field LoadOrUpdateTextureFromBgra_DeferMipMap fun(rgbaPixels: number[], linearMag: boolean, clampMode: number, intoTexture: LoadedTexture&): nil
---@field LoadOrUpdateTextureFromBgra fun(rgbaPixels: number[], linearMag: boolean, clampMode: number, intoTexture: LoadedTexture&): nil
---@field LoadOrUpdateTextureFromRgba fun(rgbaPixels: number[], linearMag: boolean, clampMode: number, intoTexture: LoadedTexture&): nil
---@field BuildMipMaps fun(textureId: number): nil
---@field Load3DTextureCube fun(bmps: BitmapRef[]): number
---@field GLDeleteTexture fun(id: number): nil
---@field GlGetMaxTextureSize fun(): number
---@field UpdateMesh fun(modelRef: MeshRef, data: MeshData): nil
---@field AllocateEmptyMesh fun(xyzSize: number, normalsSize: number, uvSize: number, rgbaSize: number, flagsSize: number, indicesSize: number, customFloats: CustomMeshDataPartFloat, customShorts: CustomMeshDataPartShort, customBytes: CustomMeshDataPartnumber, customInts: CustomMeshDataPartInt, drawMode: EnumDrawMode, staticDraw: boolean): MeshRef
---@field UploadMesh fun(data: MeshData): MeshRef
---@field DeleteMesh fun(modelref: MeshRef): nil
---@field get_CurrentMouseCursor fun(): string
---@field LoadMouseCursor fun(cursorCoode: string, hotx: number, hoty: number, bmpRef: BitmapRef): boolean
---@field UseMouseCursor fun(cursorCode: string, forceUpdate: boolean): nil
---@field RestoreWindowCursor fun(): nil
---@field get_MouseGrabbed fun(): boolean
---@field set_MouseGrabbed fun(value: boolean): nil
---@field CreateMouseEvent fun(button: EnumMouseButton): MouseEvent
---@field IsTcpAvailable fun(): boolean
---@field GetTcpConnection fun(host: string, port: number, OnConnectResult: any`1, OnDisconnected: any`1): INetworkConnection
---@field get_ShaderUniforms fun(): DefaultShaderUniforms
---@field set_ShaderUniforms fun(value: DefaultShaderUniforms): nil
---@field get_MinimalGuiShader fun(): ShaderProgramMinimalGui
---@field GetUniformLocation fun(program: ShaderProgram, name: string): number
---@field CompileShader fun(shader: Shader): boolean
---@field CreateShaderProgram fun(program: ShaderProgram): boolean
---@field get_DoPostProcessingEffects fun(): boolean
---@field set_DoPostProcessingEffects fun(value: boolean): nil
---@field get_XPlatInterface fun(): IXPlatformInterface
---@field add_WindowResized fun(value: WindowResizedDelegate): nil
---@field remove_WindowResized fun(value: WindowResizedDelegate): nil
---@field TriggerWindowResized fun(width: number, height: number): nil
---@field get_IsShuttingDown fun(): boolean
---@field set_IsShuttingDown fun(value: boolean): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field AvailableAudioDevices Iany[]
---@field CurrentAudioDevice Iany[]
---@field AssetManager Iany[]
---@field Logger Iany[]
---@field EllapsedMs Iany[]
---@field WindowSize Iany[]
---@field ScreenSize Iany[]
---@field WindowBorder Iany[]
---@field CpuCoreCount Iany[]
---@field IsFocused Iany[]
---@field DebugDrawCalls Iany[]
---@field FrameBuffers Iany[]
---@field IsServerRunning Iany[]
---@field IsGamePaused Iany[]
---@field CurrentFrameBuffer Iany[]
---@field GlErrorChecking Iany[]
---@field GlDebugMode Iany[]
---@field GlScissorFlagEnabled Iany[]
---@field CurrentMouseCursor Iany[]
---@field MouseGrabbed Iany[]
---@field ShaderUniforms Iany[]
---@field MinimalGuiShader Iany[]
---@field DoPostProcessingEffects Iany[]
---@field XPlatInterface Iany[]
---@field IsShuttingDown Iany[]
---@field WindowResized Iany[]
---@field gameexit Iany[]
---@field SupportsThickLines Iany[]
---@field window Iany[]
---@field OnStartSinglePlayerServer Iany[]
---@field ServerExit Iany[]
---@field singlePlayerServerLoaded Iany[]
---@field singlePlayerServerDummyNetwork Iany[]
---@field crashreporter Iany[]
---@field keyEventHandlers Iany[]
---@field mouseEventHandlers Iany[]
---@field fileDropEventHandler Iany[]
---@field PixelPackBuffer Iany[]
---@field sampleCount Iany[]
---@field CurrentPixelPackBufferNum Iany[]
---@field ENABLE_MIPMAPS Iany[]
---@field ENABLE_ANISOTROPICFILTERING Iany[]
---@field ENABLE_TRANSPARENCY Iany[]
---@field GLBuffer Iany[]
---@field TCPNetworkConnection Iany[]
ClientPlatformWindows = {}