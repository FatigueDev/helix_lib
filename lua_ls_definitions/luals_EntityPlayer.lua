---@meta EntityPlayer
---@class EntityPlayer: EntityHumanoid
---@field ctor fun(): EntityPlayer
---@field add_OnFootStep fun(value: Action): nil
---@field remove_OnFootStep fun(value: Action): nil
---@field add_OnImpact fun(value: any`1): nil
---@field remove_OnImpact fun(value: any`1): nil
---@field get_BodyYaw fun(): Single
---@field set_BodyYaw fun(value: Single): nil
---@field get_LastReviveTotalHours fun(): Double
---@field set_LastReviveTotalHours fun(value: Double): nil
---@field UpdatePartitioning fun(): nil
---@field get_StoreWithChunk fun(): boolean
---@field get_PlayerUID fun(): string
---@field get_RightHandItemSlot fun(): ItemSlot
---@field get_LeftHandItemSlot fun(): ItemSlot
---@field get_GearInventory fun(): IInventory
---@field get_LightHsv fun(): number[]
---@field get_AlwaysActive fun(): boolean
---@field get_ShouldDespawn fun(): boolean
---@field get_IsInteractable fun(): boolean
---@field get_LadderFixDelta fun(): Double
---@field get_Player fun(): IPlayer
---@field get_AnimManager fun(): IAnimationManager
---@field set_AnimManager fun(value: IAnimationManager): nil
---@field get_OtherAnimManager fun(): IAnimationManager
---@field get_TpAnimManager fun(): IAnimationManager
---@field Initialize fun(properties: EntityProperties, api: ICoreAPI, chunkindex3d: Int64): nil
---@field GetWalkSpeedMultiplier fun(groundDragFactor: Double): Double
---@field OnSelfBeforeRender fun(dt: Single): nil
---@field OnTesselation fun(entityShape: Shape&, shapePathForLogging: string): nil
---@field GetInsideTorsoBlockSoundSource fun(tmpPos: BlockPos): Block
---@field GetInsideLegsBlockSoundSource fun(tmpPos: BlockPos): Block
---@field PlayInsideSound fun(player: IPlayer): boolean
---@field PlayStepSound fun(player: IPlayer, playingInsideSound: boolean): nil
---@field OnGameTick fun(dt: Single): nil
---@field OnAsyncParticleTick fun(dt: Single, manager: IAsyncParticleManager): nil
---@field HandleSeraphHandAnimations fun(dt: Single): nil
---@field CanSpawnNearby fun(type: EntityProperties, spawnPosition: Vec3d, sc: RuntimeSpawnConditions): boolean
---@field OnFallToGround fun(motionY: Double): nil
---@field GetNearestBlockSoundSource fun(tmpPos: BlockPos, yOffset: Double, blockLayer: number, usecollisionboxes: boolean): Block
---@field TryGiveItemStack fun(itemstack: ItemStack): boolean
---@field Die fun(reason: EnumDespawnReason, damageSourceForDeath: DamageSource): nil
---@field TryMount fun(onmount: IMountable): boolean
---@field Revive fun(): nil
---@field PlayEntitySound fun(type: string, dualCallByPlayer: IPlayer, randomizePitch: boolean, range: Single): nil
---@field OnReceivedServerPacket fun(packetid: number, data: number[]): nil
---@field OnReceivedClientPacket fun(player: IServerPlayer, packetid: number, data: number[]): nil
---@field ShouldReceiveDamage fun(damageSource: DamageSource, damage: Single): boolean
---@field Ignite fun(): nil
---@field OnHurt fun(damageSource: DamageSource, damage: Single): nil
---@field TryStopHandAction fun(forceStop: boolean, cancelReason: EnumItemUseCancelReason): boolean
---@field WalkInventory fun(handler: OnInventorySlot): nil
---@field SetCurrentlyControlledPlayer fun(): nil
---@field OnCollideWithLiquid fun(): nil
---@field TeleportToDouble fun(x: Double, y: Double, z: Double, onTeleported: Action): nil
---@field GetName fun(): string
---@field GetInfoText fun(): string
---@field FromBytes fun(reader: BinaryReader, forClient: boolean): nil
---@field UpdateDebugAttributes fun(): nil
---@field get_IsCreature fun(): boolean
---@field get_BodyYawServer fun(): Single
---@field set_BodyYawServer fun(value: Single): nil
---@field get_HerdId fun(): Int64
---@field set_HerdId fun(value: Int64): nil
---@field get_MountedOn fun(): IMountable
---@field set_LeftHandItemSlot fun(value: ItemSlot): nil
---@field set_RightHandItemSlot fun(value: ItemSlot): nil
---@field get_ActiveHandItemSlot fun(): ItemSlot
---@field set_GearInventory fun(value: IInventory): nil
---@field get_Controls fun(): EntityControls
---@field get_ServerControls fun(): EntityControls
---@field IsEyesSubmerged fun(): boolean
---@field TryUnmount fun(): boolean
---@field OnNoPath fun(target: Vec3d): nil
---@field OnInteract fun(byEntity: EntityAgent, slot: ItemSlot, hitPosition: Vec3d, mode: EnumInteractMode): nil
---@field DidAttack fun(source: DamageSource, targetEntity: EntityAgent): nil
---@field ReceiveDamage fun(damageSource: DamageSource, damage: Single): boolean
---@field ReceiveSaturation fun(saturation: Single, foodCat: EnumFoodCategory, saturationLossDelay: Single, nutritionGainMultiplier: Single): nil
---@field ShouldReceiveSaturation fun(saturation: Single, foodCat: EnumFoodCategory, saturationLossDelay: Single, nutritionGainMultiplier: Single): boolean
---@field ToBytes fun(writer: BinaryWriter, forClient: boolean): nil
---@field OnLoadCollectibleMappings fun(worldForResolve: IWorldAccessor, oldBlockIdMapping: table<any, any>, oldItemIdMapping: table<any, any>, schematicSeed: number, resolveImports: boolean): nil
---@field OnStoreCollectibleMappings fun(blockIdMapping: table<any, any>, itemIdMapping: table<any, any>): nil
---@field add_OnInitialized fun(value: Action): nil
---@field remove_OnInitialized fun(value: Action): nil
---@field get_IsOnFire fun(): boolean
---@field set_IsOnFire fun(value: boolean): nil
---@field get_Properties fun(): EntityProperties
---@field get_SidedProperties fun(): EntitySidedProperties
---@field get_SwimmingOffsetY fun(): Double
---@field get_Collided fun(): boolean
---@field get_SidedPos fun(): EntityPos
---@field get_LocalEyePos fun(): Vec3d
---@field set_LocalEyePos fun(value: Vec3d): nil
---@field get_ApplyGravity fun(): boolean
---@field get_MaterialDensity fun(): Single
---@field set_LightHsv fun(value: number[]): nil
---@field get_Alive fun(): boolean
---@field set_Alive fun(value: boolean): nil
---@field get_IdleSoundChanceModifier fun(): Single
---@field set_IdleSoundChanceModifier fun(value: Single): nil
---@field get_RenderColor fun(): number
---@field AfterInitialized fun(onFirstSpawn: boolean): nil
---@field GetDrops fun(world: IWorldAccessor, pos: BlockPos, byPlayer: IPlayer): ItemStack[]
---@field TeleportTo fun(x: number, y: number, z: number): nil
---@overload fun(position: Vec3d): nil
---@overload fun(position: BlockPos): nil
---@overload fun(position: EntityPos, onTeleported: Action): nil
---@field OnCollided fun(): nil
---@field OnEntityLoaded fun(): nil
---@field OnEntitySpawn fun(): nil
---@field OnEntityDespawn fun(despawn: EntityDespawnData): nil
---@field OnExitedLiquid fun(): nil
---@field GetInteractionHelp fun(world: IClientWorldAccessor, es: EntitySelection, player: IClientPlayer): WorldInteraction[]
---@field OnReceivedServerPos fun(isTeleport: boolean): nil
---@field OnReceivedServerAnimations fun(activeAnimations: number[], activeAnimationsCount: number, activeAnimationSpeeds: Single[]): nil
---@field OnCollected fun(byEntity: Entity): ItemStack
---@field OnStateChanged fun(beforeState: EnumEntityState): nil
---@field SetCollisionBox fun(length: Single, height: Single): nil
---@field SetSelectionBox fun(length: Single, height: Single): nil
---@field AddBehavior fun(behavior: EntityBehavior): nil
---@field RemoveBehavior fun(behavior: EntityBehavior): nil
---@field HasBehavior fun(behaviorName: string): boolean
---@overload fun(): boolean
---@field GetBehavior fun(name: string): EntityBehavior
---@overload fun(): T
---@field IsActivityRunning fun(key: string): boolean
---@field RemainingActivityTime fun(key: string): number
---@field SetActivityRunning fun(key: string, milliseconds: number): nil
---@field FromBytes fun(reader: BinaryReader, isSync: boolean, serversideRemaps: table<any, any>): nil
---@field CanCollect fun(byEntity: Entity): boolean
---@field Notify fun(key: string, data: table): nil
---@field WillExport fun(startPos: BlockPos): nil
---@field DidImportOrExport fun(startPos: BlockPos): nil
---@field OnLoadCollectibleMappings fun(worldForNewMappings: IWorldAccessor, oldBlockIdMapping: table<any, any>, oldItemIdMapping: table<any, any>, schematicSeed: number): nil
---@field StartAnimation fun(code: string): nil
---@field StopAnimation fun(code: string): nil
---@field CodeWithPath fun(path: string): AssetLocation
---@field CodeWithoutParts fun(componentsToRemove: number): string
---@field CodeEndWithoutParts fun(componentsToRemove: number): string
---@field CodeWithParts fun(components: string[]): AssetLocation
---@overload fun(component: string): AssetLocation
---@field CodeWithVariant fun(type: string, value: string): AssetLocation
---@field CodeWithVariants fun(valuesByType: table<any, any>): AssetLocation
---@overload fun(types: string[], values: string[]): AssetLocation
---@field CodeWithPart fun(part: string, atPosition: number): AssetLocation
---@field LastCodePart fun(posFromRight: number): string
---@field FirstCodePart fun(posFromLeft: number): string
---@field WildCardMatch fun(wildcards: AssetLocation[]): boolean
---@overload fun(wildCard: AssetLocation): boolean
---@overload fun(wildcards: string[]): boolean
---@overload fun(wildCard: string): boolean
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field BodyYaw Single
---@field LastReviveTotalHours Single
---@field StoreWithChunk Single
---@field PlayerUID Single
---@field RightHandItemSlot Single
---@field LeftHandItemSlot Single
---@field GearInventory Single
---@field LightHsv Single
---@field AlwaysActive Single
---@field ShouldDespawn Single
---@field IsInteractable Single
---@field LadderFixDelta Single
---@field Player Single
---@field AnimManager Single
---@field OtherAnimManager Single
---@field TpAnimManager Single
---@field IsCreature Single
---@field BodyYawServer Single
---@field HerdId Single
---@field MountedOn Single
---@field ActiveHandItemSlot Single
---@field Controls Single
---@field ServerControls Single
---@field IsOnFire Single
---@field Properties Single
---@field SidedProperties Single
---@field SwimmingOffsetY Single
---@field Collided Single
---@field SidedPos Single
---@field LocalEyePos Single
---@field ApplyGravity Single
---@field MaterialDensity Single
---@field Alive Single
---@field IdleSoundChanceModifier Single
---@field RenderColor Single
---@field OnFootStep Single
---@field OnImpact Single
---@field OnInitialized Single
---@field PreviousBlockSelection Single
---@field BlockSelection Single
---@field EntitySelection Single
---@field DeathReason Single
---@field CameraPos Single
---@field WalkYaw Single
---@field WalkPitch Single
---@field OnCanSpawnNearby Single
---@field talkUtil Single
---@field BodyYawLimits Single
---@field HeadYawLimits Single
---@field entityListForPartitioning Single
---@field walkSpeed Single
---@field selfNowShadowPass Single
---@field PrevFrameCanStandUp Single
---@field selfClimateCond Single
---@field sidewaysSwivelAngle Single
---@field DeadNotify Single
---@field CurrentControls Single
---@field AllowDespawn Single
---@field hideClothing Single
---@field World Single
---@field Api Single
---@field PhysicsUpdateWatcher Single
---@field ActivityTimers Single
---@field Pos Single
---@field ServerPos Single
---@field PreviousServerPos Single
---@field PositionBeforeFalling Single
---@field InChunkIndex3d Single
---@field CollisionBox Single
---@field OriginCollisionBox Single
---@field SelectionBox Single
---@field OriginSelectionBox Single
---@field Teleporting Single
---@field IsTeleport Single
---@field EntityId Single
---@field SimulationRange Single
---@field ClimbingOnFace Single
---@field ClimbingIntoFace Single
---@field ClimbingOnCollBox Single
---@field OnGround Single
---@field FeetInLiquid Single
---@field InLava Single
---@field InLavaBeginTotalMs Single
---@field OnFireBeginTotalMs Single
---@field Swimming Single
---@field CollidedVertically Single
---@field CollidedHorizontally Single
---@field State Single
---@field DespawnReason Single
---@field WatchedAttributes Single
---@field DebugAttributes Single
---@field Attributes Single
---@field IsRendered Single
---@field IsShadowRendered Single
---@field Stats Single
---@field touchDistanceSq Single
---@field ownPosRepulse Single
---@field hasRepulseBehavior Single
---@field packet Single
---@field minRangeToClient Single
---@field Code Single
---@field VariantStrict Single
---@field Variant Single
---@field Class Single
EntityPlayer = {}
