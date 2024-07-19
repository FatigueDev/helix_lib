---@meta

-- Basic class for a placeable block
---@class Block: CollectibleObject, CollectibleObject, RegistryObject
---@field Id number Returns the block id
---@field ItemClass EnumItemClass Returns EnumItemClass.Block
---@field ForFluidsLayer boolean Return true if this block should be stored in the fluids layer in chunks instead of the solid blocks layer (e.g. water, flowing water, lake ice)
---@field RemapToLiquidsLayer string Return non-null if this block should have water (or ice) placed in its position in the fluids layer when updating from 1.16 to 1.17
---@field FirstTextureInventory CompositeTexture Returns the first textures in the TexturesInventory dictionary
---@field PushVector Vec3d Entity pushing while an entity is inside this block. Read from attributes because i'm lazy.
---@field ClimateColorMapForMap string
---@field SeasonColorMapForMap string
---@field AllSidesOpaque boolean Sets the whole SideOpaque array to true
---@field IsMissing boolean This value is set the the BlockId or ItemId-Remapper if it encounters a block/item in the savegame, but no longer exists as a loaded block/item
---@field MiningTier number
---@field BlockId number Unique number of the block. Same as Id. This number depends on the order in which the blocks are order. The numbering is however always ensured to remain the same on a per world basis.
---@field DrawType EnumDrawType If not set to JSON it will use an efficient hardcoded model
---@field RenderPass EnumChunkRenderPass During which render pass this block should be rendered
---@field Ambientocclusion boolean Currently not used
---@field WalkSpeedMultiplier number Walk speed when standing or inside this block
---@field DragMultiplier number Drag multiplier applied to entities standing on it
---@field PartialSelection boolean If true, players can target individual selection boxes of the block
---@field Sounds BlockSounds The sounds played for this block during step, break, build and walk. Use GetSounds() to query if not performance critical.
---@field VertexFlags VertexFlags Data thats passed on to the graphics card for every vertex of the blocks model
---@field Frostable boolean A bit uploaded to the shader to add a frost overlay below freezing temperature
---@field LightAbsorption number For light blocking blocks. Any value above 32 will completely block all light.
---@field PlacedPriorityInteract boolean If true, when the player holds the sneak key and right clicks this block, calls the blocks OnBlockInteractStart first, the items OnHeldInteractStart second. Without it the order is reversed.
---@field LightTraversable boolean 0: West-East 1: Up-Down 2: North-South
---@field Replaceable number A value usually between 0-9999 that indicates which blocks may be replaced with others. - Any block with replaceable value above 5000 will be washed away by water - Any block with replaceable value above 6000 will replaced when the player tries to place a block Examples: 0 = Bedrock 6000 = Tallgrass 9000 = Lava 9500 = Water 9999 = Air
---@field Fertility number 0 = nothing can grow, 10 = some tallgrass and small trees can be grow on it, 100 = all grass and trees can grow on it
---@field RequiredMiningTier number The mining tier required to break this block
---@field Resistance number How long it takes to break this block in seconds. Use GetResistance() to query if not performance critical.
---@field BlockMaterial EnumBlockMaterial A way to categorize blocks. Used for getting the mining speed for each tool type, amongst other things. Use GetBlockMaterial() to query if not performance critical.
---@field RandomizeAxes EnumRandomizeAxes Random texture selection - whether or not to use the Y axis during randomization (for multiblock plants)
---@field RandomDrawOffset number If true then the block will be randomly offseted by 1/3 of a block when placed
---@field RandomizeRotations boolean
---@field RandomSizeAdjust number
---@field alternatingVOffset boolean If true, the block will render with a UV offset enabling it to use the "other half" of a 64 x 64 texture on each alternate block position  (e.g. Redwood trunk)
---@field alternatingVOffsetFaces number Bit flags for the direction in which the alternatingVOffset is to be applied e.g. 0x30 to apply alternatingVOffset as the y position moves up and down
---@field ShapeInventory CompositeShape The block shape to be used when displayed in the inventory gui, held in hand or dropped on the ground
---@field Shape CompositeShape The default json block shape to be used when drawtype==JSON
---@field Lod0Shape CompositeShape
---@field Lod2Shape CompositeShape
---@field Lod0Mesh MeshData
---@field Lod2Mesh MeshData
---@field DoNotRenderAtLod2 boolean
---@field Textures IDictionary`2 Default textures to be used for this block (may be null, on servers prior to reading blockType, on clients prior to receipt of server assets)
---@field FastTextureVariants BakedCompositeTexture[][] Fast array of texture variants, for use by cube (or similar) tesselators if the block has alternate shapes The outer array is indexed based on the 6 BlockFacing.Index numerals; the inner array is the variants
---@field TexturesInventory IDictionary`2 Textures to be used for this block in the inventory gui, held in hand or dropped on the ground (may be null, on servers prior to reading blockType, on clients prior to receipt of server assets)
---@field SideOpaque boolean Defines which of the 6 block sides are completely opaque. Used to determine which block faces can be culled during tesselation.
---@field SideSolid SmallBoolArray Defines which of the 6 block side are solid. Used to determine if attachable blocks can be attached to this block. Also used to determine if snow can rest on top of this block.
---@field SideAo boolean Defines which of the 6 block side should be shaded with ambient occlusion
---@field EmitSideAo number Defines which of the 6 block neighbours should receive AO if this block is in front of them
---@field AllowSpawnCreatureGroups string Defines what creature groups may spawn on this block
---@field AllCreaturesAllowed boolean
---@field FaceCullMode EnumFaceCullMode Determines which sides of the blocks should be rendered
---@field ClimateColorMap string The color map for climate color mapping. Leave null for no coloring by climate
---@field ClimateColorMapResolved ColorMap
---@field SeasonColorMap string The color map for season color mapping. Leave null for no coloring by season
---@field SeasonColorMapResolved ColorMap
---@field ShapeUsesColormap boolean Internal value that's set during if the block shape has any tint indexes for use in chunk tesselation and stuff O_O
---@field LoadColorMapAnyway boolean
---@field ExtraColorBits number Three extra color / season bits which may have meaning for specific blocks, such as leaves
---@field CollisionBoxes Cuboidf[] Defines the area with which the player character collides with.
---@field SelectionBoxes Cuboidf[] Defines the area which the players mouse pointer collides with for selection.
---@field ParticleCollisionBoxes Cuboidf[] Defines the area with which particles collide with (if null, will be the same as CollisionBoxes).
---@field Climbable boolean Used for ladders. If true, walking against this blocks collisionbox will make the player climb
---@field RainPermeable boolean Will be used for not rendering rain below this block
---@field LiquidLevel number Value between 0..7 for Liquids to determine the height of the liquid
---@field LiquidCode string If this block is or contains a liquid, this should be the code (or "identifier") of the liquid
---@field HasAlternates boolean A flag set during texture block shape tesselation
---@field HasTiles boolean
---@field BlockBehaviors BlockBehavior[] Modifiers that can alter the behavior of a block, particularly when being placed or removed
---@field BlockEntityBehaviors BlockEntityBehaviorType[] Modifiers that can alter the behavior of a block entity
---@field Drops BlockDropItemStack[] The items that should drop from breaking this block
---@field SplitDropStacks boolean If true, a blocks drops will be split into stacks of stacksize 1 for more game juice. This field is only used in OnBlockBroken() and OnBlockExploded()
---@field CropProps BlockCropProperties Information about the blocks as a crop
---@field EntityClass string If this block has a block entity attached to it, this will store it's code
---@field CustomBlockLayerHandler boolean
---@field TraversalCost number
---@field CanStep boolean
---@field AllowStepWhenStuck boolean
---@field decorBehaviorFlags number To allow Decor Behavior settings to be accessed through the Block API.  See DecorFlags class for interpretation.
---@field DecorThickness number Used to adjust selection box of parent block
---@field InteractionHelpYOffset number
---@field TextureSubIdForBlockColor number
---@field notSnowCovered Block
---@field snowCovered1 Block
---@field snowCovered2 Block
---@field snowCovered3 Block
---@field snowLevel number
---@field DefaultCollisionBox Cuboidf Default Full Block Collision Box
---@field MatterState EnumMatterState Liquids are handled and rendered differently than solid blocks.
---@field MaxStackSize number Max amount of collectible that one default inventory slot can hold
---@field Durability number How many uses does this collectible has when being used. Item disappears at durability 0
---@field Dimensions Size3f Physical size of this collectible, 0.5 x 0.5 x 0.5 meters by default
---@field LiquidSelectable boolean When true, liquids become selectable to the player when being held in hands
---@field AttackPower number How much damage this collectible deals when used as a weapon
---@field HeldPriorityInteract boolean If true, when the player holds the sneak key and right clicks with this item in hand, calls OnHeldInteractStart first. Without it, the order is reversed. Takes precedence over priority interact placed blocks.
---@field AttackRange number Until how for away can you attack entities using this collectibe
---@field DamagedBy EnumItemDamageSource[] From which damage sources does the item takes durability damage
---@field MiningSpeed table Modifies how fast the player can break a block when holding this item
---@field ToolTier number What tier this block can mine when held in hands
---@field HeldSounds HeldSounds
---@field CreativeInventoryTabs string List of creative tabs in which this collectible should appear in
---@field CreativeInventoryStacks CreativeTabAndStackList[] If you want to add itemstacks with custom attributes to the creative inventory, add them to this list
---@field RenderAlphaTest number Alpha test value for rendering in gui, fp hand, tp hand or on the ground
---@field GuiTransform ModelTransform Used for scaling, rotation or offseting the block when rendered in guis
---@field FpHandTransform ModelTransform Used for scaling, rotation or offseting the block when rendered in the first person mode hand
---@field TpHandTransform ModelTransform Used for scaling, rotation or offseting the block when rendered in the third person mode hand
---@field TpOffHandTransform ModelTransform Used for scaling, rotation or offseting the block when rendered in the third person mode offhand
---@field GroundTransform ModelTransform Used for scaling, rotation or offseting the rendered as a dropped item on the ground
---@field Attributes JsonObject Custom Attributes that's always assiociated with this item
---@field CombustibleProps CombustibleProperties Information about the burnable states
---@field NutritionProps FoodNutritionProperties Information about the nutrition states
---@field TransitionableProps TransitionableProperties[] Information about the transitionable states
---@field GrindingProps GrindingProperties If set, the collectible can be ground into something else
---@field CrushingProps CrushingProperties If set, the collectible can be crushed into something else
---@field ParticleProperties AdvancedParticleProperties[] Particles that should spawn in regular intervals from this block or item when held in hands
---@field TopMiddlePos Vec3f The origin point from which particles are being spawned
---@field Tool Nullable`1 If set, this item will be classified as given tool
---@field StorageFlags EnumItemStorageFlags Determines in which kind of bags the item can be stored in
---@field MaterialDensity number Determines on whether an object floats on liquids or not. Water has a density of 1000
---@field HeldTpHitAnimation string The animation to play in 3rd person mod when hitting with this collectible
---@field HeldRightTpIdleAnimation string The animation to play in 3rd person mod when holding this collectible in the right hand
---@field HeldLeftTpIdleAnimation string The animation to play in 3rd person mod when holding this collectible in the left hand
---@field HeldLeftReadyAnimation string
---@field HeldRightReadyAnimation string
---@field HeldTpUseAnimation string The animation to play in 3rd person mod when using this collectible
---@field CollectibleBehaviors CollectibleBehavior[] Modifiers that can alter the behavior of the item or block, mostly for held interaction
---@field LightHsv number For light emitting collectibles: hue, saturation and brightness value
---@field Code AssetLocation A unique domain + code of the object. Must be globally unique for all items / all blocks / all entities.
---@field VariantStrict OrderedDictionary`2 Variant values as resolved from blocktype/itemtype.  NOT set for entities - use entity.Properties.VariantStrict instead.
---@field Variant RelaxedReadOnlyDictionary`2 Variant values as resolved from blocktype/itemtype. Will not throw an null pointer exception when the key does not exist, but return null instead. NOT set for entities - use entity.Properties.Variant instead
---@field Class string The class handeling the object
Block = {}

---@return Block
function Block.ctor() end

---@return number
function Block.get_Id() end

---@return EnumItemClass
function Block.get_ItemClass() end

---@return boolean
function Block.get_ForFluidsLayer() end

---@return string
function Block.get_RemapToLiquidsLayer() end

---@return CompositeTexture # A single block texture
function Block.get_FirstTextureInventory() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Block.get_PushVector() end

---@param value Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Block.set_PushVector(value) end

---@return string
function Block.get_ClimateColorMapForMap() end

---@return string
function Block.get_SeasonColorMapForMap() end

-- Called when this block was loaded by the server or the client
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function Block.OnLoaded(api) end

function Block.LoadTextureSubIdForBlockColor() end

---@param value boolean
function Block.set_AllSidesOpaque(value) end

---@return boolean
function Block.get_AllSidesOpaque() end

-- Called for example when the player places a block inside a liquid block. Needs to return true if the liquid should get removed.
---@param blockAccess IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function Block.DisplacesLiquids(blockAccess, pos) end

-- Does the side APPEAR fully solid?  Called for example when deciding to render water edges at a position, or not
-- Note: Worldgen code uses the blockAccessor-aware overload of this method
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param faceIndex number
---@return boolean
function Block.SideIsSolid(pos, faceIndex) end

-- Is the side solid or almost fully solid (in the case of chiselled blocks)?  Called for example when deciding to place loose stones or boulders above this during worldgen
---@param blockAccess IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param faceIndex number
---@return boolean
function Block.SideIsSolid(blockAccess, pos, faceIndex) end

-- This method gets called when facecull mode is set to 'Callback'. Curently used for custom behaviors when merging ice
---@param facingIndex number
---@param neighbourBlock Block Basic class for a placeable block
---@param intraChunkIndex3d number
---@return boolean
function Block.ShouldMergeFace(facingIndex, neighbourBlock, intraChunkIndex3d) end

-- The cuboid used to determine where to spawn particles when breaking the block
---@param blockAccess IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function Block.GetParticleBreakBox(blockAccess, pos, facing) end

-- Returns the blocks selection boxes at this position in the world.
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Cuboidf[] # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function Block.GetSelectionBoxes(blockAccessor, pos) end

-- Returns the blocks collision box. Warning: This method may get called by different threads, so it has to be thread safe.
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Cuboidf[] # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function Block.GetCollisionBoxes(blockAccessor, pos) end

-- Returns the blocks particle collision box. Warning: This method may get called by different threads, so it has to be thread safe.
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Cuboidf[] # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function Block.GetParticleCollisionBoxes(blockAccessor, pos) end

-- Should return the blocks material
-- Warning: This method is may get called in a background thread. Please make sure your code in here is thread safe.
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param stack? ItemStack
---@return EnumBlockMaterial # Material of which a block my be made of Currently only used for mining speed for tools
function Block.GetBlockMaterial(blockAccessor, pos, stack) end

-- Should return the blocks resistance to breaking
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function Block.GetResistance(blockAccessor, pos) end

-- Should returns the blocks sounds
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param stack? ItemStack
---@return BlockSounds
function Block.GetSounds(blockAccessor, pos, stack) end

-- Position-aware version of Attributes, for example can be used by BlockMultiblock
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return JsonObject # Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function Block.GetAttributes(blockAccessor, pos) end

---@param caller IGeometryTester Used for blocks (e.g. chiselled blocks) where the basic block geometry: AO shading, side opaque etc - depends on the individual block or blockEntity
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return boolean
function Block.DoEmitSideAo(caller, facing) end

---@param caller IGeometryTester Used for blocks (e.g. chiselled blocks) where the basic block geometry: AO shading, side opaque etc - depends on the individual block or blockEntity
---@param vec Vec3iAndFacingFlags
---@param flags number
---@return boolean
function Block.DoEmitSideAoByFlag(caller, vec, flags) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function Block.GetLightAbsorption(blockAccessor, pos) end

---@param chunk IWorldChunk
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function Block.GetLightAbsorption(chunk, pos) end

-- If this block is or contains a liquid, it should return the code of it. Used for example by farmland to check if a nearby block is water
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return string
function Block.GetLiquidCode(blockAccessor, pos) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param decalTexSource ITexPositionSource An interface that can supply texture atlas positions 
---@param decalModelData MeshData&
---@param blockModelData MeshData&
function Block.GetDecal(world, pos, decalTexSource, decalModelData, blockModelData) end

-- Used by torches and other blocks to check if it can attach itself to that block
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param block Block Basic class for a placeable block
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param blockFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param attachmentArea? Cuboidi
---@return boolean
function Block.CanAttachBlockAt(blockAccessor, block, pos, blockFace, attachmentArea) end

-- Should return if supplied entitytype is allowed to spawn on this block
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param type EntityProperties
---@param sc BaseSpawnConditions
---@return boolean
function Block.CanCreatureSpawnOn(blockAccessor, pos, type, sc) end

-- Currently used for wildvines and saguaro cactus
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onBlockFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param worldgenRandom LCGRandom An lcg random generator, particularly suitable for worldgen See also https://en.wikipedia.org/wiki/Linear_congruential_generator
---@return boolean
function Block.TryPlaceBlockForWorldGen(blockAccessor, pos, onBlockFace, worldgenRandom) end

---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param itemstack ItemStack
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param failureCode string
---@return boolean
function Block.TryPlaceBlock(world, byPlayer, itemstack, blockSel, failureCode) end

---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param failureCode string
---@return boolean
function Block.CanPlaceBlock(world, byPlayer, blockSel, failureCode) end

-- Called by TryPlaceBlock if placement is possible
---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param byItemStack ItemStack
---@return boolean
function Block.DoPlaceBlock(world, byPlayer, blockSel, byItemStack) end

-- Called by the server and the client when the player currently looks at this block. Gets called continously every tick.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param firstTick boolean
function Block.OnBeingLookedAt(byPlayer, blockSel, firstTick) end

-- Player is breaking this block. Has to reduce remainingResistance by the amount of time it should be broken. This method is called only client side, every 40ms during breaking.
---@param player IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param itemslot ItemSlot The default item slot to item stacks
---@param remainingResistance number
---@param dt number
---@param counter number
---@return number
function Block.OnGettingBroken(player, blockSel, itemslot, remainingResistance, dt, counter) end

---@param world IWorldAccessor Important interface to access the game world.
---@return number
function Block.RandomSoundPitch(world) end

-- Called when a survival player has broken the block. This method needs to remove the block.
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byPlayer IPlayer Represents a player
---@param dropQuantityMultiplier? number
function Block.OnBlockBroken(world, pos, byPlayer, dropQuantityMultiplier) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function Block.SpawnBlockBrokenParticles(pos) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param side BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function Block.OnBrokenAsDecor(world, pos, side) end

---@param allInputslots ItemSlot[] The default item slot to item stacks
---@param outputSlot ItemSlot The default item slot to item stacks
---@param byRecipe GridRecipe Represents a crafting recipe
function Block.OnCreatedByCrafting(allInputslots, outputSlot, byRecipe) end

-- Should return all of the blocks drops for display in the handbook
---@param handbookStack ItemStack
---@param forPlayer IPlayer Represents a player
---@return BlockDropItemStack[] # Represents an itemstack that is dropped by chance when breaking a block
function Block.GetDropsForHandbook(handbookStack, forPlayer) end

-- Is called before a block is broken, should return what items this block should drop. Return null or empty array for no drops.
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byPlayer IPlayer Represents a player
---@param dropQuantityMultiplier? number
---@return ItemStack[]
function Block.GetDrops(world, pos, byPlayer, dropQuantityMultiplier) end

-- When the player has presed the middle mouse click on the block
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return ItemStack
function Block.OnPickBlock(world, pos) end

-- Always called when a block has been removed through whatever method, except during worldgen or via ExchangeBlock()
-- For Worldgen you might be able to use TryPlaceBlockForWorldGen() to attach custom behaviors during placement/removal
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function Block.OnBlockRemoved(world, pos) end

-- Always called when a block has been placed through whatever method, except during worldgen or via ExchangeBlock()
-- For Worldgen you might be able to use TryPlaceBlockForWorldGen() to attach custom behaviors during placement/removal
---@param world IWorldAccessor Important interface to access the game world.
---@param blockPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byItemStack? ItemStack
function Block.OnBlockPlaced(world, blockPos, byItemStack) end

-- Called when any of its 6 neighbour blocks has been changed
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param neibpos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function Block.OnNeighbourBlockChange(world, pos, neibpos) end

-- When a player does a right click while targeting this placed block. Should return true if the event is handled, so that other events can occur, e.g. eating a held item if the block is not interactable with.
---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@return boolean
function Block.OnBlockInteractStart(world, byPlayer, blockSel) end

-- When a Command Block, console command or (perhaps in future) non-player entity wants to activate this placed block
---@param world IWorldAccessor Important interface to access the game world.
---@param caller Caller
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param activationArgs? ITreeAttribute Represents a List of nestable Attributes
function Block.Activate(world, caller, blockSel, activationArgs) end

-- Called every frame while the player is using this block. Return false to stop the interaction.
---@param secondsUsed number
---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@return boolean
function Block.OnBlockInteractStep(secondsUsed, world, byPlayer, blockSel) end

-- Called when the player successfully completed the using action, always called once an interaction is over
---@param secondsUsed number
---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
function Block.OnBlockInteractStop(secondsUsed, world, byPlayer, blockSel) end

-- When the player released the right mouse button. Return false to deny the cancellation (= will keep using the block until OnBlockInteractStep returns false).
---@param secondsUsed number
---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param cancelReason EnumItemUseCancelReason
---@return boolean
function Block.OnBlockInteractCancel(secondsUsed, world, byPlayer, blockSel, cancelReason) end

-- When an entity is inside a block 1x1x1 space, independent of of its selection box or collision box
---@param world IWorldAccessor Important interface to access the game world.
---@param entity Entity The basic class for all entities in the game
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function Block.OnEntityInside(world, entity, pos) end

-- Whenever an entity collides with the collision box of the block
---@param world IWorldAccessor Important interface to access the game world.
---@param entity Entity The basic class for all entities in the game
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param collideSpeed Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param isImpact boolean
function Block.OnEntityCollide(world, entity, pos, facing, collideSpeed, isImpact) end

-- Called when a falling block falls onto this one. Return true to cancel default behavior.
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param block Block Basic class for a placeable block
---@param blockEntityAttributes TreeAttribute A datastructure to hold generic data for most primitives (int, string, float, etc.). But can also hold generic data using the ByteArrayAttribute + class serialization
---@return boolean
function Block.OnFallOnto(world, pos, block, blockEntityAttributes) end

---@param world IWorldAccessor Important interface to access the game world.
---@param player IPlayer Represents a player
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param isWindAffected boolean
---@return boolean
function Block.ShouldReceiveClientParticleTicks(world, player, pos, isWindAffected) end

-- Extra check on whether the ambient sound defined by the block should be played at this location
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function Block.ShouldPlayAmbientSound(world, pos) end

-- Called evey 25ms if the block is in range (32 blocks) and block returned true on ShouldReceiveClientGameTicks(). Takes a few seconds for the game to register the block.
---@param manager IAsyncParticleManager
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param windAffectednessAtPos number
---@param secondsTicking number
function Block.OnAsyncClientParticleTick(manager, pos, windAffectednessAtPos, secondsTicking) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param offThreadRandom Random
---@param extra userdata
---@return boolean
function Block.ShouldReceiveServerGameTicks(world, pos, offThreadRandom, extra) end

-- Called by the main server thread if and only if this block returned true in ShouldReceiveServerGameTicks.
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param extra? userdata
function Block.OnServerGameTick(world, pos, extra) end

---@param world IWorldAccessor Important interface to access the game world.
---@param decalMesh MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function Block.OnDecalTesselation(world, decalMesh, pos) end

---@param sourceMesh MeshData&
---@param lightRgbsByCorner number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param chunkExtBlocks Block[] Basic class for a placeable block
---@param extIndex3d number
function Block.OnJsonTesselation(sourceMesh, lightRgbsByCorner, pos, chunkExtBlocks, extIndex3d) end

---@param light number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param chunkExtBlocks Block[] Basic class for a placeable block
---@param extIndex3d number
---@param sideDisableWindwave number
---@return number
function Block.OnInstancedTesselation(light, pos, chunkExtBlocks, extIndex3d, sideDisableWindwave) end

-- Used as base position for particles.
function Block.DetermineTopMiddlePos() end

-- Used to determine if a block should be treated like air when placing blocks. (e.g. used for tallgrass)
---@param block Block Basic class for a placeable block
---@return boolean
function Block.IsReplacableBy(block) end

-- Returns a horizontal and vertical orientation which should be used for oriented blocks like stairs during placement.
---@param byPlayer IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@return BlockFacing[] # Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function Block.SuggestedHVOrientation(byPlayer, blockSel) end

-- Called in the servers main thread
---@param ba IBulkBlockAccessor Useful for setting many blocks at once efficiently
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param newBlock Block Basic class for a placeable block
---@param snowLevel number
function Block.PerformSnowLevelUpdate(ba, pos, newBlock, snowLevel) end

-- Should return the snow covered block code for given snow level. Return null if snow cover is not supported for this block. If not overridden, it will check if Variant["cover"] exists and return its snow covered variant.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param snowLevel number
---@return Block # Basic class for a placeable block
function Block.GetSnowCoveredVariant(pos, snowLevel) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function Block.GetSnowLevel(pos) end

-- Return a positive integer if the block retains heat (for warm rooms or greenhouses) or a negative integer if it preserves cool (for cellars)
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return number
function Block.GetHeatRetention(pos, facing) end

-- Return a positive integer if the block retains something, e.g. (for warm rooms or greenhouses) or a negative integer if something can pass through, e.g. cool for cellars
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param type EnumRetentionType
---@return number
function Block.GetRetention(pos, facing, type) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function Block.IsClimbable(pos) end

-- For any block that can be rotated, this method should be implemented to return the correct rotated block code. It is used by the world edit tool for allowing block data rotations
---@param angle number
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Block.GetRotatedBlockCode(angle) end

-- For any block that can be flipped upside down, this method should be implemented to return the correctly flipped block code. It is used by the world edit tool for allowing block data rotations
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Block.GetVerticallyFlippedBlockCode() end

-- For any block that can be flipped vertically, this method should be implemented to return the correctly flipped block code. It is used by the world edit tool for allowing block data rotations
---@param axis EnumAxis Represents an axis in the cartesian coordinate system
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Block.GetHorizontallyFlippedBlockCode(axis) end

-- Returns the blocks behavior of given type, if it has such behavior
---@param type userdata
---@param withInheritance boolean
---@return BlockBehavior # Allows for definitions of behaviors of a block that can be applied to any block
function Block.GetBehavior(type, withInheritance) end

-- Called by the block info HUD for display the interaction help besides the crosshair
---@param world IWorldAccessor Important interface to access the game world.
---@param selection BlockSelection Contains all the information for a players block selection event
---@param forPlayer IPlayer Represents a player
---@return WorldInteraction[]
function Block.GetPlacedBlockInteractionHelp(world, selection, forPlayer) end

-- Called by the block info HUD for displaying the blocks name
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return string
function Block.GetPlacedBlockName(world, pos) end

-- Called by the block info HUD for displaying additional information
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param forPlayer IPlayer Represents a player
---@return string
function Block.GetPlacedBlockInfo(world, pos, forPlayer) end

---@param sb string
function Block.AddMiningTierInfo(sb) end

-- Called by the inventory system when you hover over an item stack. This is the text that is getting displayed.
---@param inSlot ItemSlot The default item slot to item stacks
---@param dsc string
---@param world IWorldAccessor Important interface to access the game world.
---@param withDebugInfo boolean
function Block.GetHeldItemInfo(inSlot, dsc, world, withDebugInfo) end

-- Opportunity for blocks to add additional lines to the Held Item info _prior to_ the behaviors output (such as nutrition properties or block reinforcement)
---@param inSlot ItemSlot The default item slot to item stacks
---@param dsc string
---@param world IWorldAccessor Important interface to access the game world.
function Block.AddExtraHeldItemInfoPostMaterial(inSlot, dsc, world) end

-- If true, the player can select invdividual selection boxes of this block
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function Block.DoParticalSelection(world, pos) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Vec4f
function Block.GetSelectionColor(capi, pos) end

-- Called by the texture atlas manager when building up the block atlas. Has to add all of the blocks texture
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param textureDict ITextureLocationDictionary
function Block.OnCollectTextures(api, textureDict) end

-- Should return the blocks blast resistance. Default behavior is to return BlockMaterialUtil.MaterialBlastResistance(blastType, BlockMaterial);
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param blastDirectionVector Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param blastType EnumBlastType
---@return number
function Block.GetBlastResistance(world, pos, blastDirectionVector, blastType) end

-- Should return the chance of the block dropping its upon upon being exploded. Default behavior is to return BlockMaterialUtil.MaterialBlastDropChances(blastType, BlockMaterial);
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param blastType EnumBlastType
---@return number
function Block.ExplosionDropChance(world, pos, blastType) end

-- Called when the block was blown up by explosives
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param explosionCenter BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param blastType EnumBlastType
function Block.OnBlockExploded(world, pos, explosionCenter, blastType) end

-- Should return the color to be used for the block particle coloring
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param rndIndex? number
---@return number
function Block.GetRandomColor(capi, pos, facing, rndIndex) end

-- Should return a random pixel within the items/blocks texture
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param stack ItemStack
---@return number
function Block.GetRandomColor(capi, stack) end

-- Should return an RGB color for this block. Current use: In the world map. Default behavior: The 2 averaged pixels at 40%/40% ad 60%/60% position
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function Block.GetColor(capi, pos) end

-- Tint less version of GetColor. Used for map color export
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function Block.GetColorWithoutTint(capi, pos) end

---@param world IWorldAccessor Important interface to access the game world.
---@param blockPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function Block.AllowSnowCoverage(world, blockPos) end

---@param blockSel BlockSelection Contains all the information for a players block selection event
---@return T
function Block.GetBlockEntity(blockSel) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return T
function Block.GetBlockEntity(position) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return T
function Block.GetBEBehavior(pos) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return T
function Block.GetInterface(world, pos) end

-- Creates a deep copy of the block
---@return Block # Basic class for a placeable block
function Block.Clone() end

---@param withInheritance? boolean
---@return boolean
function Block.HasBlockBehavior(withInheritance) end

---@param withInheritance? boolean
---@return boolean
function Block.HasBehavior(withInheritance) end

---@param type string
---@param classRegistry IClassRegistryAPI Interface for creating instances
---@return boolean
function Block.HasBehavior(type, classRegistry) end

---@param type userdata
---@param withInheritance? boolean
---@return boolean
function Block.HasBehavior(type, withInheritance) end

-- Return a decimal between 0.0 and 1.0 indicating - if this block is solid enough to block liquid flow on that side - how high the barrier is
---@param face BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function Block.GetLiquidBarrierHeightOnSide(face, pos) end

-- Simple string representation for debugging
---@return string
function Block.ToString() end

---@return boolean
function Block.get_IsMissing() end

---@param value boolean
function Block.set_IsMissing(value) end

-- For blocks and items, the hashcode is the id - useful when building HashSets
---@return number
function Block.GetHashCode() end

---@return number
function Block.get_MiningTier() end

---@param value number
function Block.set_MiningTier(value) end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function Block.OnLoadedNative(api) end

-- Called when the client/server is shutting down
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function Block.OnUnloaded(api) end

-- Should return the light HSV values.
-- Warning: This method is likely to get called in a background thread. Please make sure your code in here is thread safe.
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param stack? ItemStack
---@return number
function Block.GetLightHsv(blockAccessor, pos, stack) end

-- Should return the nutrition properties of the item/block
---@param world IWorldAccessor Important interface to access the game world.
---@param itemstack ItemStack
---@param forEntity Entity The basic class for all entities in the game
---@return FoodNutritionProperties
function Block.GetNutritionProperties(world, itemstack, forEntity) end

-- Should return the transition properties of the item/block when in itemstack form
---@param world IWorldAccessor Important interface to access the game world.
---@param itemstack ItemStack
---@param forEntity Entity The basic class for all entities in the game
---@return TransitionableProperties[]
function Block.GetTransitionableProperties(world, itemstack, forEntity) end

-- Should returns true if this collectible requires UpdateAndGetTransitionStates() to be called when ticking.
-- Typical usage: true if this collectible itself has transitionable properties, or true for collectibles which hold other itemstacks with transitionable properties (for example, a cooked food container)
---@param world IWorldAccessor Important interface to access the game world.
---@param itemstack ItemStack
---@return boolean
function Block.RequiresTransitionableTicking(world, itemstack) end

-- Should return in which storage containers this item can be placed in
---@param itemstack ItemStack
---@return EnumItemStorageFlags # Determines the kinds of storage types the item can be put into
function Block.GetStorageFlags(itemstack) end

-- Returns a hardcoded rgb color (green->yellow->red) that is representative for its remaining durability vs total durability
---@param itemstack ItemStack
---@return number
function Block.GetItemDamageColor(itemstack) end

-- Return true if remaining durability != total durability
---@param itemstack ItemStack
---@return boolean
function Block.ShouldDisplayItemDamage(itemstack) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param itemstack ItemStack
---@param target EnumItemRenderTarget The render taget for an item stack
---@param renderinfo ItemRenderInfo&
function Block.OnBeforeRender(capi, itemstack, target, renderinfo) end

---@param itemstack IItemStack Represents a stack of items or blocks
---@return number
function Block.GetDurability(itemstack) end

-- Returns the items total durability
---@param itemstack ItemStack
---@return number
function Block.GetMaxDurability(itemstack) end

---@param itemstack ItemStack
---@return number
function Block.GetRemainingDurability(itemstack) end

-- The amount of damage dealt when used as a weapon
---@param withItemStack IItemStack Represents a stack of items or blocks
---@return number
function Block.GetAttackPower(withItemStack) end

-- The the attack range when used as a weapon
---@param withItemStack IItemStack Represents a stack of items or blocks
---@return number
function Block.GetAttackRange(withItemStack) end

-- Player is holding this collectible and breaks the targeted block
---@param player IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param itemslot ItemSlot The default item slot to item stacks
---@param remainingResistance number
---@param dt number
---@param counter number
---@return number
function Block.OnBlockBreaking(player, blockSel, itemslot, remainingResistance, dt, counter) end

-- Whenever the collectible was modified while inside a slot, usually when it was moved, split or merged.
---@param world IWorldAccessor Important interface to access the game world.
---@param slot ItemSlot The default item slot to item stacks
---@param extractedStack? ItemStack
function Block.OnModifiedInInventorySlot(world, slot, extractedStack) end

-- Player has broken a block while holding this collectible. Return false if you want to cancel the block break event.
---@param world IWorldAccessor Important interface to access the game world.
---@param byEntity Entity The basic class for all entities in the game
---@param itemslot ItemSlot The default item slot to item stacks
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param dropQuantityMultiplier? number
---@return boolean
function Block.OnBlockBrokenWith(world, byEntity, itemslot, blockSel, dropQuantityMultiplier) end

-- Called every game tick when the player breaks a block with this item in his hands. Returns the mining speed for given block.
---@param itemstack IItemStack Represents a stack of items or blocks
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param block Block Basic class for a placeable block
---@param forPlayer IPlayer Represents a player
---@return number
function Block.GetMiningSpeed(itemstack, blockSel, block, forPlayer) end

-- Not implemented yet
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity Entity The basic class for all entities in the game
---@return ModelTransformKeyFrame[] # A keyframe for model transformation.  
function Block.GeldHeldFpHitAnimation(slot, byEntity) end

-- Called when an entity uses this item to hit something in 3rd person mode
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity Entity The basic class for all entities in the game
---@return string
function Block.GetHeldTpHitAnimation(slot, byEntity) end

-- Called when an entity holds this item in hands in 3rd person mode
---@param activeHotbarSlot ItemSlot The default item slot to item stacks
---@param forEntity Entity The basic class for all entities in the game
---@param hand EnumHand
---@return string
function Block.GetHeldReadyAnimation(activeHotbarSlot, forEntity, hand) end

-- Called when an entity holds this item in hands in 3rd person mode
---@param activeHotbarSlot ItemSlot The default item slot to item stacks
---@param forEntity Entity The basic class for all entities in the game
---@param hand EnumHand
---@return string
function Block.GetHeldTpIdleAnimation(activeHotbarSlot, forEntity, hand) end

-- Called when an entity holds this item in hands in 3rd person mode
---@param activeHotbarSlot ItemSlot The default item slot to item stacks
---@param forEntity Entity The basic class for all entities in the game
---@return string
function Block.GetHeldTpUseAnimation(activeHotbarSlot, forEntity) end

-- An entity used this collectibe to attack something
---@param world IWorldAccessor Important interface to access the game world.
---@param byEntity Entity The basic class for all entities in the game
---@param attackedEntity Entity The basic class for all entities in the game
---@param itemslot ItemSlot The default item slot to item stacks
function Block.OnAttackingWith(world, byEntity, attackedEntity, itemslot) end

-- Called when this collectible is attempted to being used as part of a crafting recipe and should get consumed now. Return false if it doesn't match the ingredient
---@param inputStack ItemStack
---@param gridRecipe GridRecipe Represents a crafting recipe
---@param ingredient CraftingRecipeIngredient A crafting recipe ingredient
---@return boolean
function Block.MatchesForCrafting(inputStack, gridRecipe, ingredient) end

-- Called when this collectible is being used as part of a crafting recipe and should get consumed now
---@param allInputSlots ItemSlot[] The default item slot to item stacks
---@param stackInSlot ItemSlot The default item slot to item stacks
---@param gridRecipe GridRecipe Represents a crafting recipe
---@param fromIngredient CraftingRecipeIngredient A crafting recipe ingredient
---@param byPlayer IPlayer Represents a player
---@param quantity number
function Block.OnConsumedByCrafting(allInputSlots, stackInSlot, gridRecipe, fromIngredient, byPlayer, quantity) end

-- Called after the player has taken out the item from the output slot
---@param slots ItemSlot[] The default item slot to item stacks
---@param outputSlot ItemSlot The default item slot to item stacks
---@param matchingRecipe GridRecipe Represents a crafting recipe
---@return boolean
function Block.ConsumeCraftingIngredients(slots, outputSlot, matchingRecipe) end

-- Causes the item to be damaged. Will play a breaking sound and removes the itemstack if no more durability is left
---@param world IWorldAccessor Important interface to access the game world.
---@param byEntity Entity The basic class for all entities in the game
---@param itemslot ItemSlot The default item slot to item stacks
---@param amount? number
function Block.DamageItem(world, byEntity, itemslot, amount) end

---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param matcher function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function Block.RefillSlotIfEmpty(slot, byEntity, matcher) end

---@param slot ItemSlot The default item slot to item stacks
---@param forPlayer IClientPlayer A client side player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@return SkillItem[]
function Block.GetToolModes(slot, forPlayer, blockSel) end

-- Should return the current items tool mode.
---@param slot ItemSlot The default item slot to item stacks
---@param byPlayer IPlayer Represents a player
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@return number
function Block.GetToolMode(slot, byPlayer, blockSelection) end

-- Should set given toolmode
---@param slot ItemSlot The default item slot to item stacks
---@param byPlayer IPlayer Represents a player
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param toolMode number
function Block.SetToolMode(slot, byPlayer, blockSelection, toolMode) end

-- This method is called during the opaque render pass when this item or block is being held in hands
---@param inSlot ItemSlot The default item slot to item stacks
---@param byPlayer IClientPlayer A client side player
function Block.OnHeldRenderOpaque(inSlot, byPlayer) end

-- This method is called during the order independent transparency render pass when this item or block is being held in hands
---@param inSlot ItemSlot The default item slot to item stacks
---@param byPlayer IClientPlayer A client side player
function Block.OnHeldRenderOit(inSlot, byPlayer) end

-- This method is called during the ortho (for 2D GUIs) render pass when this item or block is being held in hands
---@param inSlot ItemSlot The default item slot to item stacks
---@param byPlayer IClientPlayer A client side player
function Block.OnHeldRenderOrtho(inSlot, byPlayer) end

-- Called every frame when the player is holding this collectible in his hands. Is not called during OnUsing() or OnAttacking()
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
function Block.OnHeldIdle(slot, byEntity) end

---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param type EnumHandInteract
function Block.OnHeldActionAnimStart(slot, byEntity, type) end

-- Called every game tick when this collectible is in dropped form in the world (i.e. as EntityItem)
---@param entityItem EntityItem
function Block.OnGroundIdle(entityItem) end

-- Called every frame when this item is being displayed in the gui
---@param world IWorldAccessor Important interface to access the game world.
---@param stack ItemStack
function Block.InGuiIdle(world, stack) end

-- Called when this item was collected by an entity
---@param stack ItemStack
---@param entity Entity The basic class for all entities in the game
function Block.OnCollected(stack, entity) end

---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param useType EnumHandInteract
---@param firstEvent boolean
---@param handling EnumHandHandling&
function Block.OnHeldUseStart(slot, byEntity, blockSel, entitySel, useType, firstEvent, handling) end

-- General cancel use access. Override OnHeldAttackCancel or OnHeldInteractCancel to alter the behavior.
---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param cancelReason EnumItemUseCancelReason
---@return EnumHandInteract
function Block.OnHeldUseCancel(secondsPassed, slot, byEntity, blockSel, entitySel, cancelReason) end

-- General using access. Override OnHeldAttackStep or OnHeldInteractStep to alter the behavior.
---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@return EnumHandInteract
function Block.OnHeldUseStep(secondsPassed, slot, byEntity, blockSel, entitySel) end

-- General use over access. Override OnHeldAttackStop or OnHeldInteractStop to alter the behavior.
---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param useType EnumHandInteract
function Block.OnHeldUseStop(secondsPassed, slot, byEntity, blockSel, entitySel, useType) end

---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param handling EnumHandHandling&
function Block.OnHeldAttackStart(slot, byEntity, blockSel, entitySel, handling) end

-- When the player has canceled a custom attack action. Return false to deny action cancellation.
---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param cancelReason EnumItemUseCancelReason
---@return boolean
function Block.OnHeldAttackCancel(secondsPassed, slot, byEntity, blockSelection, entitySel, cancelReason) end

-- Called continously when a custom attack action is playing. Return false to stop the action.
---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@return boolean
function Block.OnHeldAttackStep(secondsPassed, slot, byEntity, blockSelection, entitySel) end

-- Called when a custom attack action is finished
---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
function Block.OnHeldAttackStop(secondsPassed, slot, byEntity, blockSelection, entitySel) end

---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param firstEvent boolean
---@param handling EnumHandHandling&
function Block.OnHeldInteractStart(slot, byEntity, blockSel, entitySel, firstEvent, handling) end

-- Called every frame while the player is using this collectible. Return false to stop the interaction.
---@param secondsUsed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@return boolean
function Block.OnHeldInteractStep(secondsUsed, slot, byEntity, blockSel, entitySel) end

-- Called when the player successfully completed the using action, always called once an interaction is over
---@param secondsUsed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
function Block.OnHeldInteractStop(secondsUsed, slot, byEntity, blockSel, entitySel) end

-- When the player released the right mouse button. Return false to deny the cancellation (= will keep using the item until OnHeldInteractStep returns false).
---@param secondsUsed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param cancelReason EnumItemUseCancelReason
---@return boolean
function Block.OnHeldInteractCancel(secondsUsed, slot, byEntity, blockSel, entitySel, cancelReason) end

---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param slot ItemSlot The default item slot to item stacks
---@param quantity number
---@param handling EnumHandling&
function Block.OnHeldDropped(world, byPlayer, slot, quantity, handling) end

-- Called by the inventory system when you hover over an item stack. This is the item stack name that is getting displayed.
---@param itemStack ItemStack
---@return string
function Block.GetHeldItemName(itemStack) end

---@return string
function Block.GetItemDescText() end

-- Interaction help thats displayed above the hotbar, when the player puts this item/block in his active hand slot
---@param inSlot ItemSlot The default item slot to item stacks
---@return WorldInteraction[]
function Block.GetHeldInteractionHelp(inSlot) end

---@param inSlot ItemSlot The default item slot to item stacks
---@param dsc string
---@param world IWorldAccessor Important interface to access the game world.
---@return number
function Block.AppendPerishableInfoText(inSlot, dsc, world) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param recipe GridRecipe Represents a crafting recipe
---@param slot ItemSlot The default item slot to item stacks
---@param x number
---@param y number
---@param z number
---@param size number
function Block.OnHandbookRecipeRender(capi, recipe, slot, x, y, z, size) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return table
function Block.GetHandBookStacks(capi) end

-- Should return true if the stack can be placed into given slot
---@param stack ItemStack
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function Block.CanBePlacedInto(stack, slot) end

-- Should return the max. number of items that can be placed from sourceStack into the sinkStack
---@param sinkStack ItemStack
---@param sourceStack ItemStack
---@param priority EnumMergePriority
---@return number
function Block.GetMergableQuantity(sinkStack, sourceStack, priority) end

-- Is always called on the sink slots item
---@param op ItemStackMergeOperation
function Block.TryMergeStacks(op) end

-- If the item is smeltable, this is the time it takes to smelt at smelting point
---@param world IWorldAccessor Important interface to access the game world.
---@param cookingSlotsProvider ISlotProvider
---@param inputSlot ItemSlot The default item slot to item stacks
---@return number
function Block.GetMeltingDuration(world, cookingSlotsProvider, inputSlot) end

-- If the item is smeltable, this is its melting point
---@param world IWorldAccessor Important interface to access the game world.
---@param cookingSlotsProvider ISlotProvider
---@param inputSlot ItemSlot The default item slot to item stacks
---@return number
function Block.GetMeltingPoint(world, cookingSlotsProvider, inputSlot) end

-- Should return true if this collectible is smeltable in an open fire
---@param world IWorldAccessor Important interface to access the game world.
---@param cookingSlotsProvider ISlotProvider
---@param inputStack ItemStack
---@param outputStack ItemStack
---@return boolean
function Block.CanSmelt(world, cookingSlotsProvider, inputStack, outputStack) end

-- Transform the item to it's smelted variant
---@param world IWorldAccessor Important interface to access the game world.
---@param cookingSlotsProvider ISlotProvider
---@param inputSlot ItemSlot The default item slot to item stacks
---@param outputSlot ItemSlot The default item slot to item stacks
function Block.DoSmelt(world, cookingSlotsProvider, inputSlot, outputSlot) end

-- Returns true if the stack can spoil
---@param itemstack ItemStack
---@return boolean
function Block.CanSpoil(itemstack) end

-- Returns the transition state of given transition type
---@param world IWorldAccessor Important interface to access the game world.
---@param inslot ItemSlot The default item slot to item stacks
---@param type EnumTransitionType
---@return TransitionState
function Block.UpdateAndGetTransitionState(world, inslot, type) end

---@param stack ItemStack
---@param type EnumTransitionType
---@param transitionedHours number
function Block.SetTransitionState(stack, type, transitionedHours) end

---@param world IWorldAccessor Important interface to access the game world.
---@param inSlot ItemSlot The default item slot to item stacks
---@param transType EnumTransitionType
---@return number
function Block.GetTransitionRateMul(world, inSlot, transType) end

-- Returns a list of the current transition states of this item, redirects to UpdateAndGetTransitionStatesNative
---@param world IWorldAccessor Important interface to access the game world.
---@param inslot ItemSlot The default item slot to item stacks
---@return TransitionState[]
function Block.UpdateAndGetTransitionStates(world, inslot) end

-- Called when any of its TransitionableProperties causes the stack to transition to another stack. Default behavior is to return props.TransitionedStack.ResolvedItemstack and set the stack size according to the transition rtio
---@param slot ItemSlot The default item slot to item stacks
---@param props TransitionableProperties
---@return ItemStack
function Block.OnTransitionNow(slot, props) end

-- Test is failed for Perish-able items which have less than 50% of their fresh state remaining (or are already starting to spoil)
---@param world IWorldAccessor Important interface to access the game world.
---@param itemstack ItemStack
---@return boolean
function Block.IsReasonablyFresh(world, itemstack) end

-- Returns true if the stack has a temperature attribute
---@param itemstack IItemStack Represents a stack of items or blocks
---@return boolean
function Block.HasTemperature(itemstack) end

-- Returns the stacks item temperature in degree celsius
---@param world IWorldAccessor Important interface to access the game world.
---@param itemstack ItemStack
---@return number
function Block.GetTemperature(world, itemstack) end

-- Sets the stacks item temperature in degree celsius
---@param world IWorldAccessor Important interface to access the game world.
---@param itemstack ItemStack
---@param temperature number
---@param delayCooldown? boolean
function Block.SetTemperature(world, itemstack, temperature, delayCooldown) end

-- Should return true if given stacks are equal, ignoring their stack size.
---@param thisStack ItemStack
---@param otherStack ItemStack
---@param ignoreAttributeSubTrees string
---@return boolean
function Block.Equals(thisStack, otherStack, ignoreAttributeSubTrees) end

-- Should return true if thisStack is a satisfactory replacement of otherStack. It's bascially an Equals() test, but it ignores any additional attributes that exist in otherStack
---@param thisStack ItemStack
---@param otherStack ItemStack
---@return boolean
function Block.Satisfies(thisStack, otherStack) end

-- This method is for example called by chests when they are being exported as part of a block schematic. Has to store all the currents block/item id mappings so it can be correctly imported again. By default it puts itself into the mapping and searches the itemstack attributes for attributes of type ItemStackAttribute and adds those to the mapping as well.
---@param world IWorldAccessor Important interface to access the game world.
---@param inSlot ItemSlot The default item slot to item stacks
---@param blockIdMapping table
---@param itemIdMapping table
function Block.OnStoreCollectibleMappings(world, inSlot, blockIdMapping, itemIdMapping) end

-- This method is called after a block/item like this has been imported as part of a block schematic. Has to restore fix the block/item id mappings as they are probably different compared to the world from where they were exported. By default iterates over all the itemstacks attributes and searches for attribute sof type ItenStackAttribute and calls .FixMapping() on them.
---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param inSlot ItemSlot The default item slot to item stacks
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
function Block.OnLoadCollectibleMappings(worldForResolve, inSlot, oldBlockIdMapping, oldItemIdMapping) end

-- This method is called after a block/item like this has been imported as part of a block schematic. Has to restore fix the block/item id mappings as they are probably different compared to the world from where they were exported. By default iterates over all the itemstacks attributes and searches for attribute sof type ItenStackAttribute and calls .FixMapping() on them.
---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param inSlot ItemSlot The default item slot to item stacks
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
---@param resolveImports boolean
function Block.OnLoadCollectibleMappings(worldForResolve, inSlot, oldBlockIdMapping, oldItemIdMapping, resolveImports) end

-- Returns true if this blocks matterstate is liquid.  (Liquid blocks should also implement IBlockFlowing)
-- 
-- IMPORTANT: Calling code should have looked up the block using IBlockAccessor.GetBlock(pos, EnumBlockLayersAccess.LiquidOnly) !!!
---@return boolean
function Block.IsLiquid() end

-- Returns the blocks behavior of given type, if it has such behavior
---@param type userdata
---@param withInheritance boolean
---@return CollectibleBehavior
function Block.GetCollectibleBehavior(type, withInheritance) end

---@param withInheritance boolean
---@return T
function Block.GetCollectibleBehavior(withInheritance) end

-- Returns the blocks behavior of given type, if it has such behavior
---@param type userdata
---@return CollectibleBehavior
function Block.GetBehavior(type) end

---@return T
function Block.GetBehavior() end

-- Called immediately prior to a firepit or similar testing whether this Collectible can be smelted
-- Returns true if the caller should be marked dirty
---@param inventorySmelting InventoryBase Basic class representing an item inventory
---@return boolean
function Block.OnSmeltAttempt(inventorySmelting) end

-- Returns a new assetlocation with an equal domain and the given path
---@param path string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Block.CodeWithPath(path) end

-- Removes componentsToRemove parts from the blocks code end by splitting it up at every occurence of a dash ('-'). Right to left.
---@param componentsToRemove number
---@return string
function Block.CodeWithoutParts(componentsToRemove) end

-- Removes componentsToRemove parts from the blocks code beginning by splitting it up at every occurence of a dash ('-'). Left to Right
---@param componentsToRemove number
---@return string
function Block.CodeEndWithoutParts(componentsToRemove) end

-- Replaces the last parts from the blocks code and replaces it with components by splitting it up at every occurence of a dash ('-')
---@param components string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Block.CodeWithParts(components) end

-- More efficient version of CodeWithParts if there is only a single parameter
---@param component string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Block.CodeWithParts(component) end

---@param type string
---@param value string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Block.CodeWithVariant(type, value) end

---@param valuesByType table
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Block.CodeWithVariants(valuesByType) end

---@param types string
---@param values string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Block.CodeWithVariants(types, values) end

-- Replaces one part from the blocks code and replaces it with components by splitting it up at every occurence of a dash ('-')
---@param part string
---@param atPosition? number
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Block.CodeWithPart(part, atPosition) end

-- Returns the n-th code part in inverse order. If the code contains no dash ('-') the whole code is returned. Returns null if posFromRight is too high.
---@param posFromRight? number
---@return string
function Block.LastCodePart(posFromRight) end

-- Returns the n-th code part. If the code contains no dash ('-') the whole code is returned. Returns null if posFromLeft is too high.
---@param posFromLeft? number
---@return string
function Block.FirstCodePart(posFromLeft) end

-- Returns true if any given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildcards AssetLocation[] Defines a complete path to an assets, including it's domain
---@return boolean
function Block.WildCardMatch(wildcards) end

-- Returns true if given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildCard AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function Block.WildCardMatch(wildCard) end

-- Returns true if any given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildcards string
---@return boolean
function Block.WildCardMatch(wildcards) end

-- Returns true if given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildCard string
---@return boolean
function Block.WildCardMatch(wildCard) end

---@return userdata
function Block.GetType() end

---@param obj userdata
---@return boolean
function Block.Equals(obj) end


