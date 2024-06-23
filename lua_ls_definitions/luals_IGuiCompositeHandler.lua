---@meta IGuiCompositeHandler
---@class IGuiCompositeHandler
---@field get_Api fun(): ICoreClientAPI
---@field get_GuiComposers fun(): GuiComposerManager
---@field LoadComposer fun(composer: GuiComposer): nil
---@field OnBackPressed fun(): boolean
---@field Api ICoreClientAPI
---@field GuiComposers ICoreClientAPI
IGuiCompositeHandler = {}
