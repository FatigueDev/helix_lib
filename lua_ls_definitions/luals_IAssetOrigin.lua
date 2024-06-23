---@meta IAssetOrigin
---@class IAssetOrigin
---@field get_OriginPath fun(): string
---@field LoadAsset fun(asset: IAsset): nil
---@field TryLoadAsset fun(asset: IAsset): boolean
---@field GetAssets fun(category: AssetCategory, shouldLoad: boolean): any[]
---@overload fun(baseLocation: AssetLocation, shouldLoad: boolean): any[]
---@field IsAllowedToAffectGameplay fun(): boolean
---@field OriginPath string
IAssetOrigin = {}
