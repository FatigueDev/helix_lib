---@meta TreeAttribute
---@class TreeAttribute: Object
---@field ctor fun(): TreeAttribute
---@field get_Item fun(key: string): IAttribute
---@field set_Item fun(key: string, value: IAttribute): nil
---@field get_Count fun(): number
---@field get_Values fun(): IAttribute[]
---@field get_Keys fun(): string[]
---@field RegisterAttribute fun(attrId: number, type: any): nil
---@field CreateFromBytes fun(blockEntityData: number[]): TreeAttribute
---@field FromBytes fun(stream: BinaryReader): nil
---@field ToBytes fun(): number[]
---@overload fun(data: number[]): nil
---@overload fun(stream: BinaryWriter): nil
---@field GetAttributeId fun(): number
---@field IndexOf fun(key: string): number
---@field GetEnumerator fun(): IEnumerator`1
---@field GetAttribute fun(key: string): IAttribute
---@field HasAttribute fun(key: string): boolean
---@field GetAttributeByPath fun(path: string): IAttribute
---@field DeleteAttributeByPath fun(path: string): nil
---@field RemoveAttribute fun(key: string): nil
---@field SetBool fun(key: string, value: boolean): nil
---@field SetInt fun(key: string, value: number): nil
---@field SetLong fun(key: string, value: Int64): nil
---@field SetDouble fun(key: string, value: Double): nil
---@field SetFloat fun(key: string, value: Single): nil
---@field SetString fun(key: string, value: string): nil
---@field SetStringArray fun(key: string, values: string[]): nil
---@field SetBytes fun(key: string, value: number[]): nil
---@field SetAttribute fun(key: string, value: IAttribute): nil
---@field SetItemstack fun(key: string, itemstack: ItemStack): nil
---@field TryGetBool fun(key: string): Nullable`1
---@field TryGetInt fun(key: string): Nullable`1
---@field TryGetDouble fun(key: string): Nullable`1
---@field TryGetFloat fun(key: string): Nullable`1
---@field GetBool fun(key: string, defaultValue: boolean): boolean
---@field GetInt fun(key: string, defaultValue: number): number
---@field GetAsInt fun(key: string, defaultValue: number): number
---@field GetAsBool fun(key: string, defaultValue: boolean): boolean
---@field GetDecimal fun(key: string, defaultValue: Double): Double
---@field GetDouble fun(key: string, defaultValue: Double): Double
---@field GetFloat fun(key: string, defaultValue: Single): Single
---@field GetString fun(key: string, defaultValue: string): string
---@field GetAsString fun(key: string, defaultValue: string): string
---@field GetStringArray fun(key: string, defaultValue: string[]): string[]
---@field GetBytes fun(key: string, defaultValue: number[]): number[]
---@field GetTreeAttribute fun(key: string): ITreeAttribute
---@field GetOrAddTreeAttribute fun(key: string): ITreeAttribute
---@field GetItemstack fun(key: string, defaultValue: ItemStack): ItemStack
---@field GetLong fun(key: string, defaultValue: Int64): Int64
---@field TryGetLong fun(key: string): Nullable`1
---@field GetModelTransform fun(key: string): ModelTransform
---@field GetValue fun(): table
---@field Clone fun(): ITreeAttribute
---@field IsSubSetOf fun(worldForResolve: IWorldAccessor, other: IAttribute): boolean
---@field Equals fun(worldForResolve: IWorldAccessor, other: IAttribute): boolean
---@overload fun(worldForResolve: IWorldAccessor, other: IAttribute, ignorePaths: string[]): boolean
---@overload fun(worldForResolve: IWorldAccessor, other: IAttribute, currentPath: string, ignorePaths: string[]): boolean
---@field ToJsonToken fun(): string
---@field MergeTree fun(sourceTree: ITreeAttribute): nil
---@field SortedCopy fun(recursive: boolean): ITreeAttribute
---@field GetHashCode fun(): number
---@overload fun(ignoredAttributes: string[]): number
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field Item IAttribute
---@field Count IAttribute
---@field Values IAttribute
---@field Keys IAttribute
---@field attributesLock IAttribute
---@field AttributeIdMapping IAttribute
TreeAttribute = {}
