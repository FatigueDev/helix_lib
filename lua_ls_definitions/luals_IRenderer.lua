---@meta IRenderer
---@class IRenderer
---@field get_RenderOrder fun(): Double
---@field get_RenderRange fun(): number
---@field OnRenderFrame fun(deltaTime: Single, stage: EnumRenderStage): nil
---@field RenderOrder Double
---@field RenderRange Double
IRenderer = {}
