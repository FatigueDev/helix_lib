---@meta IClassRegistryAPI
---@class IClassRegistryAPI
---@field get_BlockClassToTypeMapping fun(): table<any, any>
---@field get_ItemClassToTypeMapping fun(): table<any, any>
---@field GetBlockBehaviorClassName fun(blockBehaviorType: any): string
---@field GetCollectibleBehaviorClassName fun(blockBehaviorType: any): string
---@field CreateBlock fun(blockclass: string): Block
---@field GetBlockClass fun(blockclass: string): any
---@field CreateBlockEntity fun(blockEntityClass: string): BlockEntity
---@field CreateEntity fun(entityClass: string): Entity
---@overload fun(entityType: EntityProperties): Entity
---@field CreateMountable fun(tree: TreeAttribute): IMountable
---@field CreateBlockBehavior fun(forBlock: Block, code: string): BlockBehavior
---@field CreateCollectibleBehavior fun(forCollectible: Collectibletable, code: string): CollectibleBehavior
---@field GetBlockEntityBehaviorClass fun(name: string): any
---@field CreateBlockEntityBehavior fun(blockEntity: BlockEntity, name: string): BlockEntityBehavior
---@field GetBlockBehaviorClass fun(code: string): any
---@field GetCollectibleBehaviorClass fun(code: string): any
---@field CreateEntityBehavior fun(forEntity: Entity, entityBehaviorName: string): EntityBehavior
---@field GetEntityBehaviorClass fun(entityBehaviorName: string): any
---@field CreateInvNetworkUtil fun(inv: InventoryBase, api: ICoreAPI): IInventoryNetworkUtil
---@field CreateItem fun(itemclass: string): Item
---@field GetItemClass fun(itemClass: string): any
---@field CreateJsonTreeAttributeFromDict fun(attributes: table<any, any>): JsonTreeAttribute
---@field GetBlockEntity fun(bockEntityClass: string): any
---@field GetBlockEntityClass fun(type: any): string
---@field GetEntityClassName fun(entityType: any): string
---@field CreateCropBehavior fun(forBlock: Block, cropBehaviorName: string): CropBehavior
---@field RegisterParticlePropertyProvider fun(className: string, ParticleProvider: any): nil
---@field CreateParticlePropertyProvider fun(entityType: any): IParticlePropertiesProvider
---@overload fun(className: string): IParticlePropertiesProvider
---@field BlockClassToTypeMapping table<any, any>
---@field ItemClassToTypeMapping table<any, any>
IClassRegistryAPI = {}