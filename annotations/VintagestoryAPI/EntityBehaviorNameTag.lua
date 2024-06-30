---@meta

---@class EntityBehaviorNameTag: EntityBehavior, EntityBehavior
---@field DisplayName string The display name for the entity.
---@field ShowOnlyWhenTargeted boolean Whether or not to show the nametag constantly or only when being looked at.
---@field RenderRange number
---@field ProfilerName string
---@field entity Entity
EntityBehaviorNameTag = {}

---@param entity Entity The basic class for all entities in the game
---@return EntityBehaviorNameTag
function EntityBehaviorNameTag.ctor(entity) end

---@return string
function EntityBehaviorNameTag.get_DisplayName() end

---@return boolean
function EntityBehaviorNameTag.get_ShowOnlyWhenTargeted() end

---@param value boolean
function EntityBehaviorNameTag.set_ShowOnlyWhenTargeted(value) end

---@return number
function EntityBehaviorNameTag.get_RenderRange() end

---@param value number
function EntityBehaviorNameTag.set_RenderRange(value) end

---@param entityType EntityProperties
---@param attributes JsonObject Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function EntityBehaviorNameTag.Initialize(entityType, attributes) end

function EntityBehaviorNameTag.OnEntitySpawn() end

-- Sets the display name of the entity to playername.
---@param playername string
function EntityBehaviorNameTag.SetName(playername) end

---@return string
function EntityBehaviorNameTag.PropertyName() end

---@return string
function EntityBehaviorNameTag.get_ProfilerName() end

-- Called after initializing all the behaviors in case they need to cross-refer to each other or set some initial values only at spawn-time
---@param onFirstSpawn boolean
function EntityBehaviorNameTag.AfterInitialized(onFirstSpawn) end

-- The event fired when a game ticks over.
---@param deltaTime number
function EntityBehaviorNameTag.OnGameTick(deltaTime) end

-- The event fired when the entity is loaded from disk (not called during spawn)
function EntityBehaviorNameTag.OnEntityLoaded() end

-- The event fired when the entity is despawned.
---@param despawn EntityDespawnData
function EntityBehaviorNameTag.OnEntityDespawn(despawn) end

---@param damageSource DamageSource
---@param damage number
function EntityBehaviorNameTag.OnEntityReceiveDamage(damageSource, damage) end

-- When the entity got revived (only for players and traders currently)
function EntityBehaviorNameTag.OnEntityRevive() end

-- The event fired when the entity falls to the ground.
---@param lastTerrainContact Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param withYMotion number
function EntityBehaviorNameTag.OnFallToGround(lastTerrainContact, withYMotion) end

-- The event fired when the entity recieves saturation.
---@param saturation number
---@param foodCat? EnumFoodCategory
---@param saturationLossDelay? number
---@param nutritionGainMultiplier? number
function EntityBehaviorNameTag.OnEntityReceiveSaturation(saturation, foodCat, saturationLossDelay, nutritionGainMultiplier) end

---@param isTeleport boolean
---@param handled EnumHandling&
function EntityBehaviorNameTag.OnReceivedServerPos(isTeleport, handled) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byPlayer IPlayer Represents a player
---@param handling EnumHandling&
---@return ItemStack[]
function EntityBehaviorNameTag.GetDrops(world, pos, byPlayer, handling) end

---@param beforeState EnumEntityState
---@param handling EnumHandling&
function EntityBehaviorNameTag.OnStateChanged(beforeState, handling) end

-- The notify method bubbled up from entity.Notify()
---@param key string
---@param data userdata
function EntityBehaviorNameTag.Notify(key, data) end

-- Gets the information text when highlighting this entity.
---@param infotext string
function EntityBehaviorNameTag.GetInfoText(infotext) end

-- The event fired when the entity dies.
---@param damageSourceForDeath DamageSource
function EntityBehaviorNameTag.OnEntityDeath(damageSourceForDeath) end

---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param itemslot ItemSlot The default item slot to item stacks
---@param hitPosition Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param mode EnumInteractMode
---@param handled EnumHandling&
function EntityBehaviorNameTag.OnInteract(byEntity, itemslot, hitPosition, mode, handled) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param packetid number
---@param data number
---@param handled EnumHandling&
function EntityBehaviorNameTag.OnReceivedClientPacket(player, packetid, data, handled) end

---@param packetid number
---@param data number
---@param handled EnumHandling&
function EntityBehaviorNameTag.OnReceivedServerPacket(packetid, data, handled) end

-- Fired when the pathfinder does not find a path to given target
---@param target Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function EntityBehaviorNameTag.OnNoPath(target) end

---@param world IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@param es EntitySelection
---@param player IClientPlayer A client side player
---@param handled EnumHandling&
---@return WorldInteraction[]
function EntityBehaviorNameTag.GetInteractionHelp(world, es, player, handled) end

---@param source DamageSource
---@param targetEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param handled EnumHandling&
function EntityBehaviorNameTag.DidAttack(source, targetEntity, handled) end

---@param blockIdMapping table
---@param itemIdMapping table
function EntityBehaviorNameTag.OnStoreCollectibleMappings(blockIdMapping, itemIdMapping) end

---@param worldForNewMappings IWorldAccessor Important interface to access the game world.
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
function EntityBehaviorNameTag.OnLoadCollectibleMappings(worldForNewMappings, oldBlockIdMapping, oldItemIdMapping) end

---@param worldForNewMappings IWorldAccessor Important interface to access the game world.
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
---@param resolveImports boolean
function EntityBehaviorNameTag.OnLoadCollectibleMappings(worldForNewMappings, oldBlockIdMapping, oldItemIdMapping, resolveImports) end

---@param forClient boolean
function EntityBehaviorNameTag.ToBytes(forClient) end

-- This method is not called on the server side
---@param isSync boolean
function EntityBehaviorNameTag.FromBytes(isSync) end

-- Can be used by the /entity command or maybe other commands, to test behaviors
-- The argument will be an object provided by TextCommandCallingArgs, which can then be cast to the desired type e.g. int
---@param arg userdata
function EntityBehaviorNameTag.TestCommand(arg) end

---@return userdata
function EntityBehaviorNameTag.GetType() end

---@return string
function EntityBehaviorNameTag.ToString() end

---@param obj userdata
---@return boolean
function EntityBehaviorNameTag.Equals(obj) end

---@return number
function EntityBehaviorNameTag.GetHashCode() end


