---@meta

---@class GameWindowNative: GameWindow, IDisposable, GameWindow, NativeWindow
---@field IsMultiThreaded boolean
---@field RenderFrequency number
---@field RenderTime number
---@field UpdateTime number
---@field UpdateFrequency number
---@field ExpectedSchedulerPeriod number
---@field WindowPtr Window*
---@field KeyboardState KeyboardState
---@field JoystickStates IReadOnlyList`1
---@field MousePosition Vector2
---@field MouseState MouseState
---@field IsAnyKeyDown boolean
---@field IsAnyMouseButtonDown boolean
---@field VSync VSyncMode
---@field AutoIconify boolean
---@field Icon WindowIcon
---@field IsEventDriven boolean
---@field ClipboardString string
---@field Title string
---@field API ContextAPI
---@field Profile ContextProfile
---@field Flags ContextFlags
---@field APIVersion Version
---@field Context IGLFWGraphicsContext
---@field CurrentMonitor MonitorHandle
---@field IsFocused boolean
---@field IsVisible boolean
---@field Exists boolean
---@field IsExiting boolean
---@field WindowState WindowState
---@field WindowBorder WindowBorder
---@field Bounds Box2i
---@field Location Vector2i
---@field ClientLocation Vector2i
---@field Size Vector2i
---@field ClientSize Vector2i
---@field FramebufferSize Vector2i
---@field MinimumSize Nullable`1
---@field MaximumSize Nullable`1
---@field AspectRatio Nullable`1
---@field ClientRectangle Box2i
---@field IsFullscreen boolean
---@field Cursor MouseCursor
---@field CursorState CursorState
---@field RawMouseInput boolean
---@field SupportsRawMouseInput boolean
---@field HasTransparentFramebuffer boolean
---@field Load function
---@field Unload function
---@field UpdateFrame function
---@field RenderThreadStarted function
---@field RenderFrame function
---@field Move function
---@field Resize function
---@field FramebufferResize function
---@field Refresh function
---@field Closing function
---@field Minimized function
---@field Maximized function
---@field JoystickConnected function
---@field FocusedChanged function
---@field KeyDown function
---@field TextInput function
---@field KeyUp function
---@field MouseLeave function
---@field MouseEnter function
---@field MouseDown function
---@field MouseUp function
---@field MouseMove function
---@field MouseWheel function
---@field FileDrop function
GameWindowNative = {}

---@param gameWindowSettings GameWindowSettings
---@param nativeWindowSettings NativeWindowSettings
---@return GameWindowNative
function GameWindowNative.ctor(gameWindowSettings, nativeWindowSettings) end

---@param value function
function GameWindowNative.add_Load(value) end

---@param value function
function GameWindowNative.remove_Load(value) end

---@param value function
function GameWindowNative.add_Unload(value) end

---@param value function
function GameWindowNative.remove_Unload(value) end

---@param value function
function GameWindowNative.add_UpdateFrame(value) end

---@param value function
function GameWindowNative.remove_UpdateFrame(value) end

---@param value function
function GameWindowNative.add_RenderThreadStarted(value) end

---@param value function
function GameWindowNative.remove_RenderThreadStarted(value) end

---@param value function
function GameWindowNative.add_RenderFrame(value) end

---@param value function
function GameWindowNative.remove_RenderFrame(value) end

---@return boolean
function GameWindowNative.get_IsMultiThreaded() end

---@return number
function GameWindowNative.get_RenderFrequency() end

---@param value number
function GameWindowNative.set_RenderFrequency(value) end

---@return number
function GameWindowNative.get_RenderTime() end

---@return number
function GameWindowNative.get_UpdateTime() end

---@return number
function GameWindowNative.get_UpdateFrequency() end

---@param value number
function GameWindowNative.set_UpdateFrequency(value) end

---@return number
function GameWindowNative.get_ExpectedSchedulerPeriod() end

---@param value number
function GameWindowNative.set_ExpectedSchedulerPeriod(value) end

function GameWindowNative.Run() end

function GameWindowNative.SwapBuffers() end

function GameWindowNative.Close() end

---@return number
function GameWindowNative.TimeSinceLastUpdate() end

function GameWindowNative.ResetTimeSinceLastUpdate() end

function GameWindowNative.Dispose() end

---@return Window*
function GameWindowNative.get_WindowPtr() end

---@return KeyboardState
function GameWindowNative.get_KeyboardState() end

---@return IReadOnlyList`1
function GameWindowNative.get_JoystickStates() end

---@return Vector2
function GameWindowNative.get_MousePosition() end

---@param value Vector2
function GameWindowNative.set_MousePosition(value) end

---@return MouseState
function GameWindowNative.get_MouseState() end

---@return boolean
function GameWindowNative.get_IsAnyKeyDown() end

---@return boolean
function GameWindowNative.get_IsAnyMouseButtonDown() end

---@return VSyncMode
function GameWindowNative.get_VSync() end

---@param value VSyncMode
function GameWindowNative.set_VSync(value) end

---@return boolean
function GameWindowNative.get_AutoIconify() end

---@param value boolean
function GameWindowNative.set_AutoIconify(value) end

---@return WindowIcon
function GameWindowNative.get_Icon() end

---@param value WindowIcon
function GameWindowNative.set_Icon(value) end

---@return boolean
function GameWindowNative.get_IsEventDriven() end

---@param value boolean
function GameWindowNative.set_IsEventDriven(value) end

---@return string
function GameWindowNative.get_ClipboardString() end

---@param value string
function GameWindowNative.set_ClipboardString(value) end

---@return string
function GameWindowNative.get_Title() end

---@param value string
function GameWindowNative.set_Title(value) end

---@return ContextAPI
function GameWindowNative.get_API() end

---@return ContextProfile
function GameWindowNative.get_Profile() end

---@return ContextFlags
function GameWindowNative.get_Flags() end

---@return Version
function GameWindowNative.get_APIVersion() end

---@return IGLFWGraphicsContext
function GameWindowNative.get_Context() end

---@return MonitorHandle
function GameWindowNative.get_CurrentMonitor() end

---@param value MonitorHandle
function GameWindowNative.set_CurrentMonitor(value) end

---@return boolean
function GameWindowNative.get_IsFocused() end

function GameWindowNative.Focus() end

---@return boolean
function GameWindowNative.get_IsVisible() end

---@param value boolean
function GameWindowNative.set_IsVisible(value) end

---@return boolean
function GameWindowNative.get_Exists() end

---@return boolean
function GameWindowNative.get_IsExiting() end

---@return WindowState
function GameWindowNative.get_WindowState() end

---@param value WindowState
function GameWindowNative.set_WindowState(value) end

---@return WindowBorder
function GameWindowNative.get_WindowBorder() end

---@param value WindowBorder
function GameWindowNative.set_WindowBorder(value) end

---@return Box2i
function GameWindowNative.get_Bounds() end

---@param value Box2i
function GameWindowNative.set_Bounds(value) end

---@return Vector2i
function GameWindowNative.get_Location() end

---@param value Vector2i
function GameWindowNative.set_Location(value) end

---@return Vector2i
function GameWindowNative.get_ClientLocation() end

---@param value Vector2i
function GameWindowNative.set_ClientLocation(value) end

---@return Vector2i
function GameWindowNative.get_Size() end

---@param value Vector2i
function GameWindowNative.set_Size(value) end

---@return Vector2i
function GameWindowNative.get_ClientSize() end

---@param value Vector2i
function GameWindowNative.set_ClientSize(value) end

---@return Vector2i
function GameWindowNative.get_FramebufferSize() end

---@return Nullable`1
function GameWindowNative.get_MinimumSize() end

---@param value Nullable`1
function GameWindowNative.set_MinimumSize(value) end

---@return Nullable`1
function GameWindowNative.get_MaximumSize() end

---@param value Nullable`1
function GameWindowNative.set_MaximumSize(value) end

---@return Nullable`1
function GameWindowNative.get_AspectRatio() end

---@param value Nullable`1
function GameWindowNative.set_AspectRatio(value) end

---@return Box2i
function GameWindowNative.get_ClientRectangle() end

---@param value Box2i
function GameWindowNative.set_ClientRectangle(value) end

---@return boolean
function GameWindowNative.get_IsFullscreen() end

---@return MouseCursor
function GameWindowNative.get_Cursor() end

---@param value MouseCursor
function GameWindowNative.set_Cursor(value) end

---@return CursorState
function GameWindowNative.get_CursorState() end

---@param value CursorState
function GameWindowNative.set_CursorState(value) end

---@return boolean
function GameWindowNative.get_RawMouseInput() end

---@param value boolean
function GameWindowNative.set_RawMouseInput(value) end

---@return boolean
function GameWindowNative.get_SupportsRawMouseInput() end

---@return boolean
function GameWindowNative.get_HasTransparentFramebuffer() end

function GameWindowNative.MakeCurrent() end

---@param timeout number
---@return boolean
function GameWindowNative.ProcessEvents(timeout) end

function GameWindowNative.NewInputFrame() end

---@param point Vector2i
---@return Vector2i
function GameWindowNative.PointToClient(point) end

---@param point Vector2i
---@return Vector2i
function GameWindowNative.PointToScreen(point) end

---@param value function
function GameWindowNative.add_Move(value) end

---@param value function
function GameWindowNative.remove_Move(value) end

---@param value function
function GameWindowNative.add_Resize(value) end

---@param value function
function GameWindowNative.remove_Resize(value) end

---@param value function
function GameWindowNative.add_FramebufferResize(value) end

---@param value function
function GameWindowNative.remove_FramebufferResize(value) end

---@param value function
function GameWindowNative.add_Refresh(value) end

---@param value function
function GameWindowNative.remove_Refresh(value) end

---@param value function
function GameWindowNative.add_Closing(value) end

---@param value function
function GameWindowNative.remove_Closing(value) end

---@param value function
function GameWindowNative.add_Minimized(value) end

---@param value function
function GameWindowNative.remove_Minimized(value) end

---@param value function
function GameWindowNative.add_Maximized(value) end

---@param value function
function GameWindowNative.remove_Maximized(value) end

---@param value function
function GameWindowNative.add_JoystickConnected(value) end

---@param value function
function GameWindowNative.remove_JoystickConnected(value) end

---@param value function
function GameWindowNative.add_FocusedChanged(value) end

---@param value function
function GameWindowNative.remove_FocusedChanged(value) end

---@param value function
function GameWindowNative.add_KeyDown(value) end

---@param value function
function GameWindowNative.remove_KeyDown(value) end

---@param value function
function GameWindowNative.add_TextInput(value) end

---@param value function
function GameWindowNative.remove_TextInput(value) end

---@param value function
function GameWindowNative.add_KeyUp(value) end

---@param value function
function GameWindowNative.remove_KeyUp(value) end

---@param value function
function GameWindowNative.add_MouseLeave(value) end

---@param value function
function GameWindowNative.remove_MouseLeave(value) end

---@param value function
function GameWindowNative.add_MouseEnter(value) end

---@param value function
function GameWindowNative.remove_MouseEnter(value) end

---@param value function
function GameWindowNative.add_MouseDown(value) end

---@param value function
function GameWindowNative.remove_MouseDown(value) end

---@param value function
function GameWindowNative.add_MouseUp(value) end

---@param value function
function GameWindowNative.remove_MouseUp(value) end

---@param value function
function GameWindowNative.add_MouseMove(value) end

---@param value function
function GameWindowNative.remove_MouseMove(value) end

---@param value function
function GameWindowNative.add_MouseWheel(value) end

---@param value function
function GameWindowNative.remove_MouseWheel(value) end

---@param value function
function GameWindowNative.add_FileDrop(value) end

---@param value function
function GameWindowNative.remove_FileDrop(value) end

---@param key Keys
---@return boolean
function GameWindowNative.IsKeyDown(key) end

---@param key Keys
---@return boolean
function GameWindowNative.IsKeyPressed(key) end

---@param key Keys
---@return boolean
function GameWindowNative.IsKeyReleased(key) end

---@param button MouseButton
---@return boolean
function GameWindowNative.IsMouseButtonDown(button) end

---@param button MouseButton
---@return boolean
function GameWindowNative.IsMouseButtonPressed(button) end

---@param button MouseButton
---@return boolean
function GameWindowNative.IsMouseButtonReleased(button) end

---@param horizontalScale number
---@param verticalScale number
---@return boolean
function GameWindowNative.TryGetCurrentMonitorScale(horizontalScale, verticalScale) end

---@param horizontalDpi number
---@param verticalDpi number
---@return boolean
function GameWindowNative.TryGetCurrentMonitorDpi(horizontalDpi, verticalDpi) end

---@param horizontalRawDpi number
---@param verticalRawDpi number
---@return boolean
function GameWindowNative.TryGetCurrentMonitorDpiRaw(horizontalRawDpi, verticalRawDpi) end

function GameWindowNative.CenterWindow() end

---@param newSize Vector2i
function GameWindowNative.CenterWindow(newSize) end

---@return userdata
function GameWindowNative.GetType() end

---@return string
function GameWindowNative.ToString() end

---@param obj userdata
---@return boolean
function GameWindowNative.Equals(obj) end

---@return number
function GameWindowNative.GetHashCode() end


