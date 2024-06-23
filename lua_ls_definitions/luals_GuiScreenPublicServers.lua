---@meta GuiScreenPublicServers
---@class GuiScreenPublicServers: GuiScreen
---@field ctor fun(screenManager: ScreenManager, parent: GuiScreen): GuiScreenPublicServers
---@field OnScreenLoaded fun(): nil
---@field RenderToDefaultFramebuffer fun(dt: Single): nil
---@field get_ShouldDisposePreviousScreen fun(): boolean
---@field get_IsOpened fun(): boolean
---@field get_RenderBg fun(): boolean
---@field set_RenderBg fun(value: boolean): nil
---@field BubbleUpEvent fun(eventCode: string): nil
---@field Refresh fun(): nil
---@field BubbleUpEvent fun(eventCode: string, arg: table): nil
---@field OnEvent fun(eventCode: string, arg: table): boolean
---@field RenderToPrimary fun(dt: Single): nil
---@field RenderAfterPostProcessing fun(dt: Single): nil
---@field RenderAfterFinalComposition fun(dt: Single): nil
---@field RenderAfterBlit fun(dt: Single): nil
---@field OnFileDrop fun(filename: string): boolean
---@field OnKeyDown fun(e: KeyEvent): nil
---@field OnKeyPress fun(e: KeyEvent): nil
---@field OnKeyUp fun(e: KeyEvent): nil
---@field OnMouseDown fun(e: MouseEvent): nil
---@field OnMouseUp fun(e: MouseEvent): nil
---@field OnMouseMove fun(e: MouseEvent): nil
---@field OnMouseWheel fun(e: MouseWheelEventArgs): nil
---@field OnBackPressed fun(): boolean
---@field OnWindowClosed fun(): nil
---@field OnFocusChanged fun(focus: boolean): nil
---@field OnScreenUnload fun(): nil
---@field ReloadWorld fun(reason: string): nil
---@field Dispose fun(): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer boolean
---@field ScreenManager boolean
---@field ParentScreen boolean
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor boolean
---@field FocusedMouseCursor boolean
GuiScreenPublicServers = {}
