---@meta

-- Same as block behavior but allows even more control over a block, such as the blocks collision boxes and world gen behavior. These are not part of default block behaviors for performance reasons. Requires the block to use the GenericBlock block class (or inherit from it)
---@class StrongBlockBehavior: BlockBehavior, BlockBehavior, CollectibleBehavior
---@field ClientSideOptional boolean If true, this behavior is not required on the client. This is here because copygirl doesn't stop asking for it. Probably breaks things. If it breaks things, complain to copygirl please :p
---@field block Block The block for this behavior instance.
---@field collObj CollectibleObject The collectible object (item or block) for this behavior instance.
---@field propertiesAtString string The properties of this block behavior.
StrongBlockBehavior = {}


---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param decalTexSource ITexPositionSource An interface that can supply texture atlas positions 
---@param decalModelData MeshData&
---@param blockModelData MeshData&
---@param handled EnumHandling&
function StrongBlockBehavior.GetDecal(world, pos, decalTexSource, decalModelData, blockModelData, handled) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param handled EnumHandling&
---@return Cuboidf[] # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function StrongBlockBehavior.GetParticleCollisionBoxes(blockAccessor, pos, handled) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param handled EnumHandling&
---@return Cuboidf[] # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function StrongBlockBehavior.GetCollisionBoxes(blockAccessor, pos, handled) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param handled EnumHandling&
---@return Cuboidf[] # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function StrongBlockBehavior.GetSelectionBoxes(blockAccessor, pos, handled) end

---@param blockAccess IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param handled EnumHandling&
---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function StrongBlockBehavior.GetParticleBreakBox(blockAccess, pos, facing, handled) end

---@param world IWorldAccessor Important interface to access the game world.
---@param decalMesh MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param handled EnumHandling&
function StrongBlockBehavior.OnDecalTesselation(world, decalMesh, pos, handled) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onBlockFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param worldgenRandom LCGRandom An lcg random generator, particularly suitable for worldgen See also https://en.wikipedia.org/wiki/Linear_congruential_generator
---@param handled EnumHandling&
---@return boolean
function StrongBlockBehavior.TryPlaceBlockForWorldGen(blockAccessor, pos, onBlockFace, worldgenRandom, handled) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param handled EnumHandling&
---@return boolean
function StrongBlockBehavior.DoParticalSelection(world, pos, handled) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byPlayer IPlayer Represents a player
---@param handling EnumHandling&
function StrongBlockBehavior.OnBlockBroken(world, pos, byPlayer, handling) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param handling EnumHandling&
---@return ItemStack
function StrongBlockBehavior.OnPickBlock(world, pos, handling) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byPlayer IPlayer Represents a player
---@param dropChanceMultiplier number
---@param handling EnumHandling&
---@return ItemStack[]
function StrongBlockBehavior.GetDrops(world, pos, byPlayer, dropChanceMultiplier, handling) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param neibpos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param handling EnumHandling&
function StrongBlockBehavior.OnNeighbourBlockChange(world, pos, neibpos, handling) end

---@param world IBlockAccessor Provides read/write access to the blocks of a world
---@param block Block Basic class for a placeable block
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param blockFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param handling EnumHandling&
---@param attachmentArea? Cuboidi
---@return boolean
function StrongBlockBehavior.CanAttachBlockAt(world, block, pos, blockFace, handling, attachmentArea) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param type EntityProperties
---@param sc BaseSpawnConditions
---@param handling EnumHandling&
---@return boolean
function StrongBlockBehavior.CanCreatureSpawnOn(blockAccessor, pos, type, sc, handling) end

---@param angle number
---@param handling EnumHandling&
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function StrongBlockBehavior.GetRotatedBlockCode(angle, handling) end

---@param handling EnumHandling&
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function StrongBlockBehavior.GetVerticallyFlippedBlockCode(handling) end

---@param axis EnumAxis Represents an axis in the cartesian coordinate system
---@param handling EnumHandling&
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function StrongBlockBehavior.GetHorizontallyFlippedBlockCode(axis, handling) end

---@param block Block Basic class for a placeable block
---@param handling EnumHandling&
---@return boolean
function StrongBlockBehavior.IsReplacableBy(block, handling) end

---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param handling EnumHandling&
---@return boolean
function StrongBlockBehavior.ShouldReceiveClientParticleTicks(world, byPlayer, pos, handling) end

---@param manager IAsyncParticleManager
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param windAffectednessAtPos number
---@param secondsTicking number
function StrongBlockBehavior.OnAsyncClientParticleTick(manager, pos, windAffectednessAtPos, secondsTicking) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param handling EnumHandling&
function StrongBlockBehavior.OnBlockRemoved(world, pos, handling) end

---@param world IWorldAccessor Important interface to access the game world.
---@param caller Caller
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param activationArgs ITreeAttribute Represents a List of nestable Attributes
---@param handled EnumHandling&
function StrongBlockBehavior.Activate(world, caller, blockSel, activationArgs, handled) end

---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param handling EnumHandling&
---@return boolean
function StrongBlockBehavior.OnBlockInteractStart(world, byPlayer, blockSel, handling) end

-- Called by the block info HUD for displaying additional information
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param forPlayer IPlayer Represents a player
---@return string
function StrongBlockBehavior.GetPlacedBlockInfo(world, pos, forPlayer) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param explosionCenter BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param blastType EnumBlastType
---@param handling EnumHandling&
function StrongBlockBehavior.OnBlockExploded(world, pos, explosionCenter, blastType, handling) end

---@param world IWorldAccessor Important interface to access the game world.
---@param selection BlockSelection Contains all the information for a players block selection event
---@param forPlayer IPlayer Represents a player
---@param handling EnumHandling&
---@return WorldInteraction[]
function StrongBlockBehavior.GetPlacedBlockInteractionHelp(world, selection, forPlayer, handling) end

---@param secondsUsed number
---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param handling EnumHandling&
function StrongBlockBehavior.OnBlockInteractStop(secondsUsed, world, byPlayer, blockSel, handling) end

---@param secondsUsed number
---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param handling EnumHandling&
---@return boolean
function StrongBlockBehavior.OnBlockInteractStep(secondsUsed, world, byPlayer, blockSel, handling) end

---@param secondsUsed number
---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param handling EnumHandling&
---@return boolean
function StrongBlockBehavior.OnBlockInteractCancel(secondsUsed, world, byPlayer, blockSel, handling) end

---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param itemstack ItemStack
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param handling EnumHandling&
---@param failureCode string
---@return boolean
function StrongBlockBehavior.TryPlaceBlock(world, byPlayer, itemstack, blockSel, handling, failureCode) end

---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param handling EnumHandling&
---@param failureCode string
---@return boolean
function StrongBlockBehavior.CanPlaceBlock(world, byPlayer, blockSel, handling, failureCode) end

---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param byItemStack ItemStack
---@param handling EnumHandling&
---@return boolean
function StrongBlockBehavior.DoPlaceBlock(world, byPlayer, blockSel, byItemStack, handling) end

---@param world IWorldAccessor Important interface to access the game world.
---@param blockPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param handling EnumHandling&
function StrongBlockBehavior.OnBlockPlaced(world, blockPos, handling) end

---@param allInputslots ItemSlot[] The default item slot to item stacks
---@param outputSlot ItemSlot The default item slot to item stacks
---@param byRecipe GridRecipe Represents a crafting recipe
---@param handled EnumHandling&
function StrongBlockBehavior.OnCreatedByCrafting(allInputslots, outputSlot, byRecipe, handled) end

---@param world IWorldAccessor Important interface to access the game world.
---@param inSlot ItemSlot The default item slot to item stacks
---@return string
function StrongBlockBehavior.GetHeldBlockInfo(world, inSlot) end

---@param snowLevel number
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function StrongBlockBehavior.GetSnowCoveredBlockCode(snowLevel) end

-- If this is less than 1.0, will slow down mining of the given block  (e.g. used for reinforced blocks)
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byPlayer IPlayer Represents a player
---@return number
function StrongBlockBehavior.GetMiningSpeedModifier(world, pos, byPlayer) end

---@param sb string
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function StrongBlockBehavior.GetPlacedBlockName(sb, world, pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param handled EnumHandling&
---@return number
function StrongBlockBehavior.GetHeatRetention(pos, facing, handled) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param type EnumRetentionType
---@param handled EnumHandling&
---@return number
function StrongBlockBehavior.GetRetention(pos, facing, type, handled) end

---@param face BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param handled EnumHandling&
---@return number
function StrongBlockBehavior.GetLiquidBarrierHeightOnSide(face, pos, handled) end

---@return boolean
function StrongBlockBehavior.get_ClientSideOptional() end

-- Called right after the block behavior was created, must call base method
---@param properties JsonObject Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function StrongBlockBehavior.Initialize(properties) end

-- Server Side: Called once the collectible has been registered
-- Client Side: Called once the collectible has been loaded from server packet
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function StrongBlockBehavior.OnLoaded(api) end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function StrongBlockBehavior.OnUnloaded(api) end

---@param itemstack ItemStack
---@param handling EnumHandling&
---@return EnumItemStorageFlags # Determines the kinds of storage types the item can be put into
function StrongBlockBehavior.GetStorageFlags(itemstack, handling) end

---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param handHandling EnumHandHandling&
---@param handling EnumHandling&
function StrongBlockBehavior.OnHeldAttackStart(slot, byEntity, blockSel, entitySel, handHandling, handling) end

---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param cancelReason EnumItemUseCancelReason
---@param handling EnumHandling&
---@return boolean
function StrongBlockBehavior.OnHeldAttackCancel(secondsPassed, slot, byEntity, blockSelection, entitySel, cancelReason, handling) end

---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param handling EnumHandling&
---@return boolean
function StrongBlockBehavior.OnHeldAttackStep(secondsPassed, slot, byEntity, blockSelection, entitySel, handling) end

---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param handling EnumHandling&
function StrongBlockBehavior.OnHeldAttackStop(secondsPassed, slot, byEntity, blockSelection, entitySel, handling) end

---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param firstEvent boolean
---@param handHandling EnumHandHandling&
---@param handling EnumHandling&
function StrongBlockBehavior.OnHeldInteractStart(slot, byEntity, blockSel, entitySel, firstEvent, handHandling, handling) end

---@param secondsUsed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param handling EnumHandling&
---@return boolean
function StrongBlockBehavior.OnHeldInteractStep(secondsUsed, slot, byEntity, blockSel, entitySel, handling) end

---@param secondsUsed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param handling EnumHandling&
function StrongBlockBehavior.OnHeldInteractStop(secondsUsed, slot, byEntity, blockSel, entitySel, handling) end

---@param secondsUsed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param cancelReason EnumItemUseCancelReason
---@param handled EnumHandling&
---@return boolean
function StrongBlockBehavior.OnHeldInteractCancel(secondsUsed, slot, byEntity, blockSel, entitySel, cancelReason, handled) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param itemstack ItemStack
---@param target EnumItemRenderTarget The render taget for an item stack
---@param renderinfo ItemRenderInfo&
function StrongBlockBehavior.OnBeforeRender(capi, itemstack, target, renderinfo) end

---@param inSlot ItemSlot The default item slot to item stacks
---@param handling EnumHandling&
---@return WorldInteraction[]
function StrongBlockBehavior.GetHeldInteractionHelp(inSlot, handling) end

-- Called when the tool mode (F) key is pressed to generate the GUI
---@param slot ItemSlot The default item slot to item stacks
---@param forPlayer IClientPlayer A client side player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@return SkillItem[]
function StrongBlockBehavior.GetToolModes(slot, forPlayer, blockSel) end

-- Should return the current items tool mode.
---@param slot ItemSlot The default item slot to item stacks
---@param byPlayer IPlayer Represents a player
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@return number
function StrongBlockBehavior.GetToolMode(slot, byPlayer, blockSelection) end

-- Should set given toolmode
---@param slot ItemSlot The default item slot to item stacks
---@param byPlayer IPlayer Represents a player
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param toolMode number
function StrongBlockBehavior.SetToolMode(slot, byPlayer, blockSelection, toolMode) end

---@param inSlot ItemSlot The default item slot to item stacks
---@param dsc string
---@param world IWorldAccessor Important interface to access the game world.
---@param withDebugInfo boolean
function StrongBlockBehavior.GetHeldItemInfo(inSlot, dsc, world, withDebugInfo) end

---@param sb string
---@param itemStack ItemStack
function StrongBlockBehavior.GetHeldItemName(sb, itemStack) end

---@param world IWorldAccessor Important interface to access the game world.
---@param byEntity Entity The basic class for all entities in the game
---@param itemslot ItemSlot The default item slot to item stacks
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param dropQuantityMultiplier number
---@param bhHandling EnumHandling&
---@return boolean
function StrongBlockBehavior.OnBlockBrokenWith(world, byEntity, itemslot, blockSel, dropQuantityMultiplier, bhHandling) end

---@param player IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param itemslot ItemSlot The default item slot to item stacks
---@param remainingResistance number
---@param dt number
---@param counter number
---@param handled EnumHandling&
---@return number
function StrongBlockBehavior.OnBlockBreaking(player, blockSel, itemslot, remainingResistance, dt, counter, handled) end

---@param slot ItemSlot The default item slot to item stacks
---@param byEntity Entity The basic class for all entities in the game
---@param bhHandling EnumHandling&
---@return string
function StrongBlockBehavior.GetHeldTpHitAnimation(slot, byEntity, bhHandling) end

---@param activeHotbarSlot ItemSlot The default item slot to item stacks
---@param forEntity Entity The basic class for all entities in the game
---@param hand EnumHand
---@param bhHandling EnumHandling&
---@return string
function StrongBlockBehavior.GetHeldReadyAnimation(activeHotbarSlot, forEntity, hand, bhHandling) end

---@param activeHotbarSlot ItemSlot The default item slot to item stacks
---@param forEntity Entity The basic class for all entities in the game
---@param hand EnumHand
---@param bhHandling EnumHandling&
---@return string
function StrongBlockBehavior.GetHeldTpIdleAnimation(activeHotbarSlot, forEntity, hand, bhHandling) end

---@param activeHotbarSlot ItemSlot The default item slot to item stacks
---@param forEntity Entity The basic class for all entities in the game
---@param bhHandling EnumHandling&
---@return string
function StrongBlockBehavior.GetHeldTpUseAnimation(activeHotbarSlot, forEntity, bhHandling) end

---@return userdata
function StrongBlockBehavior.GetType() end

---@return string
function StrongBlockBehavior.ToString() end

---@param obj userdata
---@return boolean
function StrongBlockBehavior.Equals(obj) end

---@return number
function StrongBlockBehavior.GetHashCode() end


