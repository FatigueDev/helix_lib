---@meta IRecipeBase`1
---@class IRecipeBase`1
---@field get_Name fun(): AssetLocation
---@field set_Name fun(value: AssetLocation): nil
---@field get_Enabled fun(): boolean
---@field set_Enabled fun(value: boolean): nil
---@field GetNameToCodeMapping fun(world: IWorldAccessor): table<any, any>
---@field Resolve fun(world: IWorldAccessor, sourceForErrorLogging: string): boolean
---@field Clone fun(): T
---@field get_Ingredients fun(): IRecipeIngredient[]
---@field get_Output fun(): IRecipeOutput
---@field Name AssetLocation
---@field Enabled AssetLocation
---@field Ingredients AssetLocation
---@field Output AssetLocation
IRecipeBase`1 = {}
