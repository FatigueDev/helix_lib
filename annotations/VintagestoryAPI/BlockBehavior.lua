---@meta

-- Allows for definitions of behaviors of a block that can be applied to any block
---@class BlockBehavior: CollectibleBehavior, CollectibleBehavior
---@field ClientSideOptional boolean If true, this behavior is not required on the client. This is here because copygirl doesn't stop asking for it. Probably breaks things. If it breaks things, complain to copygirl please :p
---@field block Block The block for this behavior instance.
---@field collObj CollectibleObject The collectible object (item or block) for this behavior instance.
---@field propertiesAtString string The properties of this block behavior.
BlockBehavior = {}

---@param block Block Basic class for a placeable block
---@return BlockBehavior
function BlockBehavior.ctor(block) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byPlayer IPlayer Represents a player
---@param handling EnumHandling&
function BlockBehavior.OnBlockBroken(world, pos, byPlayer, handling) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param handling EnumHandling&
---@return ItemStack
function BlockBehavior.OnPickBlock(world, pos, handling) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byPlayer IPlayer Represents a player
---@param dropChanceMultiplier number
---@param handling EnumHandling&
---@return ItemStack[]
function BlockBehavior.GetDrops(world, pos, byPlayer, dropChanceMultiplier, handling) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param neibpos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param handling EnumHandling&
function BlockBehavior.OnNeighbourBlockChange(world, pos, neibpos, handling) end

---@param world IBlockAccessor Provides read/write access to the blocks of a world
---@param block Block Basic class for a placeable block
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param blockFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param handling EnumHandling&
---@param attachmentArea? Cuboidi
---@return boolean
function BlockBehavior.CanAttachBlockAt(world, block, pos, blockFace, handling, attachmentArea) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param type EntityProperties
---@param sc BaseSpawnConditions
---@param handling EnumHandling&
---@return boolean
function BlockBehavior.CanCreatureSpawnOn(blockAccessor, pos, type, sc, handling) end

---@param angle number
---@param handling EnumHandling&
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function BlockBehavior.GetRotatedBlockCode(angle, handling) end

---@param handling EnumHandling&
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function BlockBehavior.GetVerticallyFlippedBlockCode(handling) end

---@param axis EnumAxis Represents an axis in the cartesian coordinate system
---@param handling EnumHandling&
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function BlockBehavior.GetHorizontallyFlippedBlockCode(axis, handling) end

---@param block Block Basic class for a placeable block
---@param handling EnumHandling&
---@return boolean
function BlockBehavior.IsReplacableBy(block, handling) end

---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param handling EnumHandling&
---@return boolean
function BlockBehavior.ShouldReceiveClientParticleTicks(world, byPlayer, pos, handling) end

---@param manager IAsyncParticleManager
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param windAffectednessAtPos number
---@param secondsTicking number
function BlockBehavior.OnAsyncClientParticleTick(manager, pos, windAffectednessAtPos, secondsTicking) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param handling EnumHandling&
function BlockBehavior.OnBlockRemoved(world, pos, handling) end

---@param world IWorldAccessor Important interface to access the game world.
---@param caller Caller
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param activationArgs ITreeAttribute Represents a List of nestable Attributes
---@param handled EnumHandling&
function BlockBehavior.Activate(world, caller, blockSel, activationArgs, handled) end

---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param handling EnumHandling&
---@return boolean
function BlockBehavior.OnBlockInteractStart(world, byPlayer, blockSel, handling) end

-- Called by the block info HUD for displaying additional information
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param forPlayer IPlayer Represents a player
---@return string
function BlockBehavior.GetPlacedBlockInfo(world, pos, forPlayer) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param explosionCenter BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param blastType EnumBlastType
---@param handling EnumHandling&
function BlockBehavior.OnBlockExploded(world, pos, explosionCenter, blastType, handling) end

---@param world IWorldAccessor Important interface to access the game world.
---@param selection BlockSelection Contains all the information for a players block selection event
---@param forPlayer IPlayer Represents a player
---@param handling EnumHandling&
---@return WorldInteraction[]
function BlockBehavior.GetPlacedBlockInteractionHelp(world, selection, forPlayer, handling) end

---@param secondsUsed number
---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param handling EnumHandling&
function BlockBehavior.OnBlockInteractStop(secondsUsed, world, byPlayer, blockSel, handling) end

---@param secondsUsed number
---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param handling EnumHandling&
---@return boolean
function BlockBehavior.OnBlockInteractStep(secondsUsed, world, byPlayer, blockSel, handling) end

---@param secondsUsed number
---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param handling EnumHandling&
---@return boolean
function BlockBehavior.OnBlockInteractCancel(secondsUsed, world, byPlayer, blockSel, handling) end

---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param itemstack ItemStack
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param handling EnumHandling&
---@param failureCode string
---@return boolean
function BlockBehavior.TryPlaceBlock(world, byPlayer, itemstack, blockSel, handling, failureCode) end

---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param handling EnumHandling&
---@param failureCode string
---@return boolean
function BlockBehavior.CanPlaceBlock(world, byPlayer, blockSel, handling, failureCode) end

---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param byItemStack ItemStack
---@param handling EnumHandling&
---@return boolean
function BlockBehavior.DoPlaceBlock(world, byPlayer, blockSel, byItemStack, handling) end

---@param world IWorldAccessor Important interface to access the game world.
---@param blockPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param handling EnumHandling&
function BlockBehavior.OnBlockPlaced(world, blockPos, handling) end

---@param allInputslots ItemSlot[] The default item slot to item stacks
---@param outputSlot ItemSlot The default item slot to item stacks
---@param byRecipe GridRecipe Represents a crafting recipe
---@param handled EnumHandling&
function BlockBehavior.OnCreatedByCrafting(allInputslots, outputSlot, byRecipe, handled) end

---@param world IWorldAccessor Important interface to access the game world.
---@param inSlot ItemSlot The default item slot to item stacks
---@return string
function BlockBehavior.GetHeldBlockInfo(world, inSlot) end

---@param snowLevel number
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function BlockBehavior.GetSnowCoveredBlockCode(snowLevel) end

-- If this is less than 1.0, will slow down mining of the given block  (e.g. used for reinforced blocks)
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byPlayer IPlayer Represents a player
---@return number
function BlockBehavior.GetMiningSpeedModifier(world, pos, byPlayer) end

---@param sb string
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockBehavior.GetPlacedBlockName(sb, world, pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param handled EnumHandling&
---@return number
function BlockBehavior.GetHeatRetention(pos, facing, handled) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param type EnumRetentionType
---@param handled EnumHandling&
---@return number
function BlockBehavior.GetRetention(pos, facing, type, handled) end

---@param face BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param handled EnumHandling&
---@return number
function BlockBehavior.GetLiquidBarrierHeightOnSide(face, pos, handled) end

---@return boolean
function BlockBehavior.get_ClientSideOptional() end

-- Called right after the block behavior was created, must call base method
---@param properties JsonObject Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function BlockBehavior.Initialize(properties) end

-- Server Side: Called once the collectible has been registered
-- Client Side: Called once the collectible has been loaded from server packet
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function BlockBehavior.OnLoaded(api) end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function BlockBehavior.OnUnloaded(api) end

---@param itemstack ItemStack
---@param handling EnumHandling&
---@return EnumItemStorageFlags # Determines the kinds of storage types the item can be put into
function BlockBehavior.GetStorageFlags(itemstack, handling) end

---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param handHandling EnumHandHandling&
---@param handling EnumHandling&
function BlockBehavior.OnHeldAttackStart(slot, byEntity, blockSel, entitySel, handHandling, handling) end

---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param cancelReason EnumItemUseCancelReason
---@param handling EnumHandling&
---@return boolean
function BlockBehavior.OnHeldAttackCancel(secondsPassed, slot, byEntity, blockSelection, entitySel, cancelReason, handling) end

---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param handling EnumHandling&
---@return boolean
function BlockBehavior.OnHeldAttackStep(secondsPassed, slot, byEntity, blockSelection, entitySel, handling) end

---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param handling EnumHandling&
function BlockBehavior.OnHeldAttackStop(secondsPassed, slot, byEntity, blockSelection, entitySel, handling) end

---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param firstEvent boolean
---@param handHandling EnumHandHandling&
---@param handling EnumHandling&
function BlockBehavior.OnHeldInteractStart(slot, byEntity, blockSel, entitySel, firstEvent, handHandling, handling) end

---@param secondsUsed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param handling EnumHandling&
---@return boolean
function BlockBehavior.OnHeldInteractStep(secondsUsed, slot, byEntity, blockSel, entitySel, handling) end

---@param secondsUsed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param handling EnumHandling&
function BlockBehavior.OnHeldInteractStop(secondsUsed, slot, byEntity, blockSel, entitySel, handling) end

---@param secondsUsed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param cancelReason EnumItemUseCancelReason
---@param handled EnumHandling&
---@return boolean
function BlockBehavior.OnHeldInteractCancel(secondsUsed, slot, byEntity, blockSel, entitySel, cancelReason, handled) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param itemstack ItemStack
---@param target EnumItemRenderTarget The render taget for an item stack
---@param renderinfo ItemRenderInfo&
function BlockBehavior.OnBeforeRender(capi, itemstack, target, renderinfo) end

---@param inSlot ItemSlot The default item slot to item stacks
---@param handling EnumHandling&
---@return WorldInteraction[]
function BlockBehavior.GetHeldInteractionHelp(inSlot, handling) end

-- Called when the tool mode (F) key is pressed to generate the GUI
---@param slot ItemSlot The default item slot to item stacks
---@param forPlayer IClientPlayer A client side player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@return SkillItem[]
function BlockBehavior.GetToolModes(slot, forPlayer, blockSel) end

-- Should return the current items tool mode.
---@param slot ItemSlot The default item slot to item stacks
---@param byPlayer IPlayer Represents a player
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@return number
function BlockBehavior.GetToolMode(slot, byPlayer, blockSelection) end

-- Should set given toolmode
---@param slot ItemSlot The default item slot to item stacks
---@param byPlayer IPlayer Represents a player
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param toolMode number
function BlockBehavior.SetToolMode(slot, byPlayer, blockSelection, toolMode) end

---@param inSlot ItemSlot The default item slot to item stacks
---@param dsc string
---@param world IWorldAccessor Important interface to access the game world.
---@param withDebugInfo boolean
function BlockBehavior.GetHeldItemInfo(inSlot, dsc, world, withDebugInfo) end

---@param sb string
---@param itemStack ItemStack
function BlockBehavior.GetHeldItemName(sb, itemStack) end

---@param world IWorldAccessor Important interface to access the game world.
---@param byEntity Entity The basic class for all entities in the game
---@param itemslot ItemSlot The default item slot to item stacks
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param dropQuantityMultiplier number
---@param bhHandling EnumHandling&
---@return boolean
function BlockBehavior.OnBlockBrokenWith(world, byEntity, itemslot, blockSel, dropQuantityMultiplier, bhHandling) end

---@param player IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param itemslot ItemSlot The default item slot to item stacks
---@param remainingResistance number
---@param dt number
---@param counter number
---@param handled EnumHandling&
---@return number
function BlockBehavior.OnBlockBreaking(player, blockSel, itemslot, remainingResistance, dt, counter, handled) end

---@param slot ItemSlot The default item slot to item stacks
---@param byEntity Entity The basic class for all entities in the game
---@param bhHandling EnumHandling&
---@return string
function BlockBehavior.GetHeldTpHitAnimation(slot, byEntity, bhHandling) end

---@param activeHotbarSlot ItemSlot The default item slot to item stacks
---@param forEntity Entity The basic class for all entities in the game
---@param hand EnumHand
---@param bhHandling EnumHandling&
---@return string
function BlockBehavior.GetHeldReadyAnimation(activeHotbarSlot, forEntity, hand, bhHandling) end

---@param activeHotbarSlot ItemSlot The default item slot to item stacks
---@param forEntity Entity The basic class for all entities in the game
---@param hand EnumHand
---@param bhHandling EnumHandling&
---@return string
function BlockBehavior.GetHeldTpIdleAnimation(activeHotbarSlot, forEntity, hand, bhHandling) end

---@param activeHotbarSlot ItemSlot The default item slot to item stacks
---@param forEntity Entity The basic class for all entities in the game
---@param bhHandling EnumHandling&
---@return string
function BlockBehavior.GetHeldTpUseAnimation(activeHotbarSlot, forEntity, bhHandling) end

---@return userdata
function BlockBehavior.GetType() end

---@return string
function BlockBehavior.ToString() end

---@param obj userdata
---@return boolean
function BlockBehavior.Equals(obj) end

---@return number
function BlockBehavior.GetHashCode() end


