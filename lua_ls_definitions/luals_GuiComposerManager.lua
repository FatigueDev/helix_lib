---@meta GuiComposerManager
---@class GuiComposerManager: Object
---@field ctor fun(api: ICoreClientAPI): GuiComposerManager
---@field ClearCache fun(): nil
---@field ClearCached fun(dialogName: string): nil
---@field Dispose fun(dialogName: string): nil
---@field get_Composers fun(): table<any, any>
---@field Create fun(dialogName: string, bounds: ElementBounds): GuiComposer
---@field RecomposeAllDialogs fun(): nil
---@field MarkAllDialogsForRecompose fun(): nil
---@field UnfocusElements fun(): nil
---@field UnfocusElementsExcept fun(newFocusedComposer: GuiComposer, newFocusedElement: GuiElement): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Composers table<any, any>
GuiComposerManager = {}
