---@meta EntityStats
---@class EntityStats: Object
---@field ctor fun(entity: Entity): EntityStats
---@field get_Item fun(key: string): EntityFloatStats
---@field set_Item fun(key: string, value: EntityFloatStats): nil
---@field GetEnumerator fun(): IEnumerator`1
---@field ToTreeAttributes fun(tree: ITreeAttribute, forClient: boolean): nil
---@field FromTreeAttributes fun(tree: ITreeAttribute): nil
---@field Register fun(category: string, blendType: EnumStatBlendany): EntityStats
---@field Set fun(category: string, code: string, value: Single, persistent: boolean): EntityStats
---@field Remove fun(category: string, code: string): EntityStats
---@field GetBlended fun(category: string): Single
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Item EntityFloatStats
EntityStats = {}