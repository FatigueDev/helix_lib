---@meta EntityBehaviorPassivePhysics
---@class EntityBehaviorPassivePhysics: EntityBehavior
---@field ctor fun(entity: Entity): EntityBehaviorPassivePhysics
---@field get_RenderOrder fun(): Double
---@field get_RenderRange fun(): number
---@field OnEntityDespawn fun(despawn: EntityDespawnData): nil
---@field Initialize fun(properties: EntityProperties, attributes: Jsontable): nil
---@field OnRenderFrame fun(deltaTime: Single, stage: EnumRenderStage): nil
---@field OnGameTick fun(deltaTime: Single): nil
---@field onPhysicsTick fun(deltaTime: Single, usePhysicsDormancyState: boolean): nil
---@field DoPhysics fun(dt: Single, pos: EntityPos): nil
---@field PropertyName fun(): string
---@field Dispose fun(): nil
---@field get_ProfilerName fun(): string
---@field AfterInitialized fun(onFirstSpawn: boolean): nil
---@field OnEntitySpawn fun(): nil
---@field OnEntityLoaded fun(): nil
---@field OnEntityReceiveDamage fun(damageSource: DamageSource, damage: Single&): nil
---@field OnEntityRevive fun(): nil
---@field OnFallToGround fun(lastTerrainContact: Vec3d, withYMotion: Double): nil
---@field OnEntityReceiveSaturation fun(saturation: Single, foodCat: EnumFoodCategory, saturationLossDelay: Single, nutritionGainMultiplier: Single): nil
---@field OnReceivedServerPos fun(isTeleport: boolean, handled: EnumHandling&): nil
---@field GetDrops fun(world: IWorldAccessor, pos: BlockPos, byPlayer: IPlayer, handling: EnumHandling&): ItemStack[]
---@field OnStateChanged fun(beforeState: EnumEntityState, handling: EnumHandling&): nil
---@field Notify fun(key: string, data: table): nil
---@field GetInfoText fun(infotext: stringBuilder): nil
---@field OnEntityDeath fun(damageSourceForDeath: DamageSource): nil
---@field OnInteract fun(byEntity: EntityAgent, itemslot: ItemSlot, hitPosition: Vec3d, mode: EnumInteractMode, handled: EnumHandling&): nil
---@field OnReceivedClientPacket fun(player: IServerPlayer, packetid: number, data: number[], handled: EnumHandling&): nil
---@field OnReceivedServerPacket fun(packetid: number, data: number[], handled: EnumHandling&): nil
---@field OnNoPath fun(target: Vec3d): nil
---@field GetInteractionHelp fun(world: IClientWorldAccessor, es: EntitySelection, player: IClientPlayer, handled: EnumHandling&): WorldInteraction[]
---@field DidAttack fun(source: DamageSource, targetEntity: EntityAgent, handled: EnumHandling&): nil
---@field OnStoreCollectibleMappings fun(blockIdMapping: table<any, any>, itemIdMapping: table<any, any>): nil
---@field OnLoadCollectibleMappings fun(worldForNewMappings: IWorldAccessor, oldBlockIdMapping: table<any, any>, oldItemIdMapping: table<any, any>): nil
---@overload fun(worldForNewMappings: IWorldAccessor, oldBlockIdMapping: table<any, any>, oldItemIdMapping: table<any, any>, resolveImports: boolean): nil
---@field ToBytes fun(forClient: boolean): nil
---@field FromBytes fun(isSync: boolean): nil
---@field TestCommand fun(arg: table): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field RenderOrder Double
---@field RenderRange Double
---@field ProfilerName Double
---@field clientPhysicsTickTimeThreshold Double
---@field collisionYExtra Double
---@field OnPhysicsTickCallback Double
---@field UsePhysicsDormancyStateClient Double
---@field UsePhysicsDormancyStateServer Double
---@field entity Double
EntityBehaviorPassivePhysics = {}
