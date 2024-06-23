---@meta GuiComposer
---@class GuiComposer: Object
---@field add_OnComposed fun(value: Action): nil
---@field remove_OnComposed fun(value: Action): nil
---@field get_CurParentBounds fun(): ElementBounds
---@field get_CurrentElementKey fun(): number
---@field get_LastAddedElement fun(): GuiElement
---@field get_Item fun(key: string): GuiElement
---@field get_Bounds fun(): ElementBounds
---@field CreateEmpty fun(api: ICoreClientAPI): GuiComposer
---@field PremultipliedAlpha fun(enable: boolean): GuiComposer
---@field AddIf fun(condition: boolean): GuiComposer
---@field EndIf fun(): GuiComposer
---@field Execute fun(method: Action): GuiComposer
---@field BeginChildElements fun(bounds: ElementBounds): GuiComposer
---@overload fun(): GuiComposer
---@field EndChildElements fun(): GuiComposer
---@field OnlyDynamic fun(): GuiComposer
---@field ReCompose fun(): nil
---@field get_CurrentTabIndexElement fun(): GuiElement
---@field get_FirstTabbableElement fun(): GuiElement
---@field get_MaxTabIndex fun(): number
---@field FocusElement fun(tabIndex: number): boolean
---@field UnfocusOwnElements fun(): nil
---@field UnfocusOwnElementsExcept fun(elem: GuiElement): nil
---@field Compose fun(focusFirstElement: boolean): GuiComposer
---@field OnMouseUp fun(mouse: MouseEvent): nil
---@field OnMouseDown fun(mouseArgs: MouseEvent): nil
---@field OnMouseMove fun(mouse: MouseEvent): nil
---@field OnMouseEnterSlot fun(slot: ItemSlot): boolean
---@field OnMouseLeaveSlot fun(slot: ItemSlot): boolean
---@field OnMouseWheel fun(mouse: MouseWheelEventArgs): nil
---@field OnKeyDown fun(args: KeyEvent, haveFocus: boolean): nil
---@field OnKeyUp fun(args: KeyEvent): nil
---@field OnKeyPress fun(args: KeyEvent): nil
---@field Clear fun(newBounds: ElementBounds): nil
---@field PostRender fun(deltaTime: Single): nil
---@field Render fun(deltaTime: Single): nil
---@field AddInteractiveElement fun(element: GuiElement, key: string): GuiComposer
---@field AddStaticElement fun(element: GuiElement, key: string): GuiComposer
---@field GetElement fun(key: string): GuiElement
---@field Dispose fun(): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field CurParentBounds ElementBounds
---@field CurrentElementKey ElementBounds
---@field LastAddedElement ElementBounds
---@field Item ElementBounds
---@field Bounds ElementBounds
---@field CurrentTabIndexElement ElementBounds
---@field FirstTabbableElement ElementBounds
---@field MaxTabIndex ElementBounds
---@field OnComposed ElementBounds
---@field OnFocusChanged ElementBounds
---@field Composed ElementBounds
---@field Api ElementBounds
---@field zDepth ElementBounds
---@field Color ElementBounds
---@field Tabbable ElementBounds
---@field Enabled ElementBounds
---@field MouseOverCursor ElementBounds
---@field Outlines ElementBounds
GuiComposer = {}
