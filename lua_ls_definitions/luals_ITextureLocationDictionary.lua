---@meta ITextureLocationDictionary
---@class ITextureLocationDictionary
---@field AddTextureLocation fun(textureLoc: AssetLocationAndSource): boolean
---@field GetOrAddTextureLocation fun(textureLoc: AssetLocationAndSource): number
---@field get_Item fun(textureLoc: AssetLocationAndSource): number
---@field ContainsKey fun(loc: AssetLocation): boolean
---@field SetTextureLocation fun(assetLocationAndSource: AssetLocationAndSource): nil
---@field CollectAndBakeTexturesFromShape fun(compositeShape: Shape, targetDict: Itable<any, any>, baseLoc: AssetLocation): nil
---@field Item number
ITextureLocationDictionary = {}
