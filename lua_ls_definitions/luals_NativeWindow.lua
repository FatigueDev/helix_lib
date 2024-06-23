---@meta NativeWindow
---@class NativeWindow: Object
---@field ctor fun(settings: NativeWindowSettings): NativeWindow
---@field get_WindowPtr fun(): Window*
---@field get_KeyboardState fun(): KeyboardState
---@field get_JoystickStates fun(): IReadOnlyany[]
---@field get_MousePosition fun(): Vector2
---@field set_MousePosition fun(value: Vector2): nil
---@field get_MouseState fun(): MouseState
---@field get_IsAnyKeyDown fun(): boolean
---@field get_IsAnyMouseButtonDown fun(): boolean
---@field get_VSync fun(): VSyncMode
---@field set_VSync fun(value: VSyncMode): nil
---@field get_AutoIconify fun(): boolean
---@field set_AutoIconify fun(value: boolean): nil
---@field get_Icon fun(): WindowIcon
---@field set_Icon fun(value: WindowIcon): nil
---@field get_IsEventDriven fun(): boolean
---@field set_IsEventDriven fun(value: boolean): nil
---@field get_ClipboardString fun(): string
---@field set_ClipboardString fun(value: string): nil
---@field get_Title fun(): string
---@field set_Title fun(value: string): nil
---@field get_API fun(): ContextAPI
---@field get_Profile fun(): ContextProfile
---@field get_Flags fun(): ContextFlags
---@field get_APIVersion fun(): Version
---@field get_Context fun(): IGLFWGraphicsContext
---@field get_CurrentMonitor fun(): MonitorHandle
---@field set_CurrentMonitor fun(value: MonitorHandle): nil
---@field get_IsFocused fun(): boolean
---@field Focus fun(): nil
---@field get_IsVisible fun(): boolean
---@field set_IsVisible fun(value: boolean): nil
---@field get_Exists fun(): boolean
---@field get_IsExiting fun(): boolean
---@field get_WindowState fun(): WindowState
---@field set_WindowState fun(value: WindowState): nil
---@field get_WindowBorder fun(): WindowBorder
---@field set_WindowBorder fun(value: WindowBorder): nil
---@field get_Bounds fun(): Box2i
---@field set_Bounds fun(value: Box2i): nil
---@field get_Location fun(): Vector2i
---@field set_Location fun(value: Vector2i): nil
---@field get_ClientLocation fun(): Vector2i
---@field set_ClientLocation fun(value: Vector2i): nil
---@field get_Size fun(): Vector2i
---@field set_Size fun(value: Vector2i): nil
---@field get_ClientSize fun(): Vector2i
---@field set_ClientSize fun(value: Vector2i): nil
---@field get_FramebufferSize fun(): Vector2i
---@field get_MinimumSize fun(): Nullable`1
---@field set_MinimumSize fun(value: Nullable`1): nil
---@field get_MaximumSize fun(): Nullable`1
---@field set_MaximumSize fun(value: Nullable`1): nil
---@field get_AspectRatio fun(): Nullable`1
---@field set_AspectRatio fun(value: Nullable`1): nil
---@field get_ClientRectangle fun(): Box2i
---@field set_ClientRectangle fun(value: Box2i): nil
---@field get_IsFullscreen fun(): boolean
---@field get_Cursor fun(): MouseCursor
---@field set_Cursor fun(value: MouseCursor): nil
---@field get_CursorState fun(): CursorState
---@field set_CursorState fun(value: CursorState): nil
---@field get_RawMouseInput fun(): boolean
---@field set_RawMouseInput fun(value: boolean): nil
---@field get_SupportsRawMouseInput fun(): boolean
---@field get_HasTransparentFramebuffer fun(): boolean
---@field Close fun(): nil
---@field MakeCurrent fun(): nil
---@field ProcessEvents fun(timeout: Double): boolean
---@field ProcessWindowEvents fun(waitForEvents: boolean): nil
---@field NewInputFrame fun(): nil
---@field PointToClient fun(point: Vector2i): Vector2i
---@field PointToScreen fun(point: Vector2i): Vector2i
---@field add_Move fun(value: any`1): nil
---@field remove_Move fun(value: any`1): nil
---@field add_Resize fun(value: any`1): nil
---@field remove_Resize fun(value: any`1): nil
---@field add_FramebufferResize fun(value: any`1): nil
---@field remove_FramebufferResize fun(value: any`1): nil
---@field add_Refresh fun(value: Action): nil
---@field remove_Refresh fun(value: Action): nil
---@field add_Closing fun(value: any`1): nil
---@field remove_Closing fun(value: any`1): nil
---@field add_Minimized fun(value: any`1): nil
---@field remove_Minimized fun(value: any`1): nil
---@field add_Maximized fun(value: any`1): nil
---@field remove_Maximized fun(value: any`1): nil
---@field add_JoystickConnected fun(value: any`1): nil
---@field remove_JoystickConnected fun(value: any`1): nil
---@field add_FocusedChanged fun(value: any`1): nil
---@field remove_FocusedChanged fun(value: any`1): nil
---@field add_KeyDown fun(value: any`1): nil
---@field remove_KeyDown fun(value: any`1): nil
---@field add_TextInput fun(value: any`1): nil
---@field remove_TextInput fun(value: any`1): nil
---@field add_KeyUp fun(value: any`1): nil
---@field remove_KeyUp fun(value: any`1): nil
---@field add_MouseLeave fun(value: Action): nil
---@field remove_MouseLeave fun(value: Action): nil
---@field add_MouseEnter fun(value: Action): nil
---@field remove_MouseEnter fun(value: Action): nil
---@field add_MouseDown fun(value: any`1): nil
---@field remove_MouseDown fun(value: any`1): nil
---@field add_MouseUp fun(value: any`1): nil
---@field remove_MouseUp fun(value: any`1): nil
---@field add_MouseMove fun(value: any`1): nil
---@field remove_MouseMove fun(value: any`1): nil
---@field add_MouseWheel fun(value: any`1): nil
---@field remove_MouseWheel fun(value: any`1): nil
---@field add_FileDrop fun(value: any`1): nil
---@field remove_FileDrop fun(value: any`1): nil
---@field IsKeyDown fun(key: Keys): boolean
---@field IsKeyPressed fun(key: Keys): boolean
---@field IsKeyReleased fun(key: Keys): boolean
---@field IsMouseButtonDown fun(button: MouseButton): boolean
---@field IsMouseButtonPressed fun(button: MouseButton): boolean
---@field IsMouseButtonReleased fun(button: MouseButton): boolean
---@field TryGetCurrentMonitorScale fun(horizontalScale: Single&, verticalScale: Single&): boolean
---@field TryGetCurrentMonitorDpi fun(horizontalDpi: Single&, verticalDpi: Single&): boolean
---@field TryGetCurrentMonitorDpiRaw fun(horizontalRawDpi: Single&, verticalRawDpi: Single&): boolean
---@field Dispose fun(): nil
---@field CenterWindow fun(): nil
---@overload fun(newSize: Vector2i): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field WindowPtr Window*
---@field KeyboardState Window*
---@field JoystickStates Window*
---@field MousePosition Window*
---@field MouseState Window*
---@field IsAnyKeyDown Window*
---@field IsAnyMouseButtonDown Window*
---@field VSync Window*
---@field AutoIconify Window*
---@field Icon Window*
---@field IsEventDriven Window*
---@field ClipboardString Window*
---@field Title Window*
---@field API Window*
---@field Profile Window*
---@field Flags Window*
---@field APIVersion Window*
---@field Context Window*
---@field CurrentMonitor Window*
---@field IsFocused Window*
---@field IsVisible Window*
---@field Exists Window*
---@field IsExiting Window*
---@field WindowState Window*
---@field WindowBorder Window*
---@field Bounds Window*
---@field Location Window*
---@field ClientLocation Window*
---@field Size Window*
---@field ClientSize Window*
---@field FramebufferSize Window*
---@field MinimumSize Window*
---@field MaximumSize Window*
---@field AspectRatio Window*
---@field ClientRectangle Window*
---@field IsFullscreen Window*
---@field Cursor Window*
---@field CursorState Window*
---@field RawMouseInput Window*
---@field SupportsRawMouseInput Window*
---@field HasTransparentFramebuffer Window*
---@field Move Window*
---@field Resize Window*
---@field FramebufferResize Window*
---@field Refresh Window*
---@field Closing Window*
---@field Minimized Window*
---@field Maximized Window*
---@field JoystickConnected Window*
---@field FocusedChanged Window*
---@field KeyDown Window*
---@field TextInput Window*
---@field KeyUp Window*
---@field MouseLeave Window*
---@field MouseEnter Window*
---@field MouseDown Window*
---@field MouseUp Window*
---@field MouseMove Window*
---@field MouseWheel Window*
---@field FileDrop Window*
NativeWindow = {}