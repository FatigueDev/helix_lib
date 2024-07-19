---@meta

-- Contains some global constants and static values
---@class GlobalConstants
---@field FoodSpoilHealthLossMulHandler FoodSpoilageCalcDelegate
---@field FoodSpoilSatLossMulHandler FoodSpoilageCalcDelegate
---@field DefaultCultureInfo CultureInfo
---@field MaxAnimatedElements number Max. amount of "bones" for animated model. Limited by max amount of shader uniforms of around 60, but depends on the gfx card
---@field CaveArtColsPerRow number
---@field PhysicsFrameTime number Frame time for physics simulation
---@field MaxPhysicsIntervalInSlowTicks number Limits the amount of world time that can be simulated by the physics engine if the server is ticking slowly: if ticks are slower than this, entities will seem to slow down (viewed on client might even jump backwards)  Recommended range 0.1f to 0.4f
---@field GravityStrengthParticle number A multiplier applied to the y motion of all particles affected by gravity.
---@field DefaultAttackRange number Attack range when using hands
---@field OverallSpeedMultiplier number Multiplied to all motions and animation speeds
---@field BaseMoveSpeed number Multiplier applied to the players movement motion
---@field BaseJumpForce number Multiplier applied to the players jump motion
---@field SneakSpeedMultiplier number Multiplier applied to the players sneaking motion
---@field SprintSpeedMultiplier number Multiplier applied to the players sprinting motion
---@field AirDragAlways number Multiplier applied to entity motion while on the ground or in air
---@field AirDragFlying number Multiplier applied to entity motion while flying (creative mode)
---@field WaterDrag number Multiplier applied to entity motion while walking in water
---@field GravityPerSecond number Amount of gravity per tick applied to all entities affected by gravity
---@field DefaultSimulationRange number Range in blocks at where this entity is simulated on the server (MagicNum.cs sets this value)
---@field DefaultPickingRange number Range in blocks a player can interact with blocks (break, use, place)
---@field TimeToDespawnPlayerInventoryDrops number Time in seconds for dropped items to remain when dropped after player death; overrides the despawn time set in item.json
---@field CurrentWindSpeedClient Vec3f Set by the WeatherSimulation System in the survival mod at the players position
---@field CurrentDistanceToRainfallClient number Set by the SystemPlayerEnvAwarenessTracker System in the engine at the players position, once every second. 12 horizontal, 4 vertical search distance
---@field CurrentNearbyRelLeavesCountClient number Set by the game client at the players position
---@field MeltingFreezingEnabled boolean Set by the weather simulation system to determine if snowed variants of blocks should melt. Used a static var to improve performance and reduce memory usage
---@field GuiGearRotJitter number
---@field playerColorByEntitlement table
---@field playerTagBackgroundByEntitlement table
---@field DefaultChatGroups number
---@field GeneralChatGroup number Channel name for the general chat
---@field ServerInfoChatGroup number Channel name for the general chat
---@field DamageLogChatGroup number Channel name for the damage chat log
---@field InfoLogChatGroup number Channel name for the info chat log
---@field CurrentChatGroup number Special channel key typically to reply a Command inside the same the channel the player sent it
---@field AllChatGroups number Special channel key typically to reply a Command inside the same the channel the player sent it
---@field ConsoleGroup number Special channel key for message sent via server console
---@field AllowedChatGroupChars string Allowed characters for a player group name
---@field SinglePlayerEntitlements string Bit of a helper thing for single player servers to display the correct entitlements
---@field EntityItemTypeCode AssetLocation The entity class used when spawning items in the world
---@field EntityPlayerTypeCode AssetLocation The entity class used when spawning players
---@field EntityBlockFallingTypeCode AssetLocation The entity class used when spawning falling blocks
---@field IgnoredStackAttributes string Default Itemstack attributes that should be ignored during a stack.Collectible.Equals() comparison
---@field PerishSpeedModifier number Global modifier to change the spoil rate of foods. Can be changed during run-time. The value is multiplied to the normal spoilage rate (default: 1)
---@field HungerSpeedModifier number Global modifier to change the rate of player hunger. Can be changed during run-time. The value is multiplied to the normal spoilage rate (default: 1)
---@field CreatureDamageModifier number Global modifier to change the damage melee attacks from creatures inflict. Can be changed during run-time. The value is multiplied to the normal damage value (default: 1)
---@field ToolMiningSpeedModifier number Global modifier to change the block breaking speed of all tools. Can be changed during run-time. The value is multiplied to the breaking speed (default: 1)
---@field DefaultDomain string Prefix for all default asset locations
---@field MaxWorldSizeXZ number Hard-enforced world size limit, above this the code may break
---@field MaxWorldSizeY number Hard-enforced world height limit, above this the code may break.
---@field ChunkSize number Now a hard-coded constant
---@field DimensionSizeInChunks number Used in various places if the dimension of a chunk is combined into the chunk's y value.
---@field MaxColorMaps number Max. amount of "bones" for color maps. Limited by max amount of shader uniforms, but depends on the gfx card
---@field MaxViewDistanceForLodBiases number
---@field WorldSaveExtension string
---@field hotBarInvClassName string
---@field creativeInvClassName string
---@field backpackInvClassName string
---@field groundInvClassName string
---@field mousecursorInvClassName string
---@field characterInvClassName string
---@field craftingInvClassName string
GlobalConstants = {}

---@return GlobalConstants
function GlobalConstants.ctor() end

-- Returns true if the player fell out of the world (which is map boundaries + 30 blocks in every direction)
---@param x number
---@param y number
---@param z number
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@return boolean
function GlobalConstants.OutsideWorld(x, y, z, blockAccessor) end

-- Returns true if the player fell out of the world (which is map boundaries + 30 blocks in every direction)
---@param x number
---@param y number
---@param z number
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@return boolean
function GlobalConstants.OutsideWorld(x, y, z, blockAccessor) end

---@return FoodSpoilageCalcDelegate
function GlobalConstants.get_FoodSpoilHealthLossMulHandler() end

---@return FoodSpoilageCalcDelegate
function GlobalConstants.get_FoodSpoilSatLossMulHandler() end

---@param spoilState number
---@param stack ItemStack
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@return number
function GlobalConstants.FoodSpoilageHealthLossMul(spoilState, stack, byEntity) end

---@param spoilState number
---@param stack ItemStack
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@return number
function GlobalConstants.FoodSpoilageSatLossMul(spoilState, stack, byEntity) end

---@return userdata
function GlobalConstants.GetType() end

---@return string
function GlobalConstants.ToString() end

---@param obj userdata
---@return boolean
function GlobalConstants.Equals(obj) end

---@return number
function GlobalConstants.GetHashCode() end


