---@meta PathOrigin
---@class PathOrigin: Object
---@field ctor fun(domain: string, fullPath: string): PathOrigin
---@field get_OriginPath fun(): string
---@field get_Domain fun(): string
---@field LoadAsset fun(asset: IAsset): nil
---@field TryLoadAsset fun(asset: IAsset): boolean
---@field GetAssets fun(Category: AssetCategory, shouldLoad: boolean): any[]
---@overload fun(baseLocation: AssetLocation, shouldLoad: boolean): any[]
---@field IsAllowedToAffectGameplay fun(): boolean
---@field GetDefaultDomain fun(): string
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field OriginPath string
---@field Domain string
PathOrigin = {}
