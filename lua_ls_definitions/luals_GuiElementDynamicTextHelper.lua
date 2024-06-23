---@meta GuiElementDynamicTextHelper
---@class GuiElementDynamicTextHelper: Object
---@field AddDynamicText fun(composer: GuiComposer, text: string, font: CairoFont, bounds: ElementBounds, key: string): GuiComposer
---@overload fun(composer: GuiComposer, text: string, font: CairoFont, orientation: EnumTextOrientation, bounds: ElementBounds, key: string): GuiComposer
---@field GetDynamicText fun(composer: GuiComposer, key: string): GuiElementDynamicText
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
GuiElementDynamicTextHelper = {}
