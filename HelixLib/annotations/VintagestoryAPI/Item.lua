---@meta

-- Represents an in game Item of Vintage Story
---@class Item: CollectibleObject, CollectibleObject, RegistryObject
---@field Id number The unique number of the item, dynamically assigned by the game
---@field ItemClass EnumItemClass The type of the collectible object
---@field FirstTexture CompositeTexture Returns the first texture in Textures
---@field IsMissing boolean This value is set the the BlockId or ItemId-Remapper if it encounters a block/item in the savegame, but no longer exists as a loaded block/item
---@field MiningTier number
---@field ItemId number The unique number of the item, dynamically assigned by the game
---@field Shape CompositeShape The items shape. Null for automatic shape based on the texture.
---@field Textures table Default textures to be used for this block
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
Item = {}

---@return Item
function Item.ctor() end
---@param itemId number
---@return Item
function Item.ctor(itemId) end

---@return number
function Item.get_Id() end

---@return EnumItemClass
function Item.get_ItemClass() end

---@return CompositeTexture # A single block texture
function Item.get_FirstTexture() end

-- Should return a random pixel within the items/blocks texture
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param stack ItemStack
---@return number
function Item.GetRandomColor(capi, stack) end

-- Creates a deep copy of the item
---@return Item # Represents an in game Item of Vintage Story
function Item.Clone() end

---@return boolean
function Item.get_IsMissing() end

---@param value boolean
function Item.set_IsMissing(value) end

-- For blocks and items, the hashcode is the id - useful when building HashSets
---@return number
function Item.GetHashCode() end

---@return number
function Item.get_MiningTier() end

---@param value number
function Item.set_MiningTier(value) end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function Item.OnLoadedNative(api) end

-- Server Side: Called one the collectible has been registered
-- Client Side: Called once the collectible has been loaded from server packet
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function Item.OnLoaded(api) end

-- Called when the client/server is shutting down
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function Item.OnUnloaded(api) end

-- Should return the light HSV values.
-- Warning: This method is likely to get called in a background thread. Please make sure your code in here is thread safe.
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param stack? ItemStack
---@return number
function Item.GetLightHsv(blockAccessor, pos, stack) end

-- Should return the nutrition properties of the item/block
---@param world IWorldAccessor Important interface to access the game world.
---@param itemstack ItemStack
---@param forEntity Entity The basic class for all entities in the game
---@return FoodNutritionProperties
function Item.GetNutritionProperties(world, itemstack, forEntity) end

-- Should return the transition properties of the item/block when in itemstack form
---@param world IWorldAccessor Important interface to access the game world.
---@param itemstack ItemStack
---@param forEntity Entity The basic class for all entities in the game
---@return TransitionableProperties[]
function Item.GetTransitionableProperties(world, itemstack, forEntity) end

-- Should returns true if this collectible requires UpdateAndGetTransitionStates() to be called when ticking.
-- Typical usage: true if this collectible itself has transitionable properties, or true for collectibles which hold other itemstacks with transitionable properties (for example, a cooked food container)
---@param world IWorldAccessor Important interface to access the game world.
---@param itemstack ItemStack
---@return boolean
function Item.RequiresTransitionableTicking(world, itemstack) end

-- Should return in which storage containers this item can be placed in
---@param itemstack ItemStack
---@return EnumItemStorageFlags # Determines the kinds of storage types the item can be put into
function Item.GetStorageFlags(itemstack) end

-- Returns a hardcoded rgb color (green->yellow->red) that is representative for its remaining durability vs total durability
---@param itemstack ItemStack
---@return number
function Item.GetItemDamageColor(itemstack) end

-- Return true if remaining durability != total durability
---@param itemstack ItemStack
---@return boolean
function Item.ShouldDisplayItemDamage(itemstack) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param itemstack ItemStack
---@param target EnumItemRenderTarget The render taget for an item stack
---@param renderinfo ItemRenderInfo&
function Item.OnBeforeRender(capi, itemstack, target, renderinfo) end

---@param itemstack IItemStack Represents a stack of items or blocks
---@return number
function Item.GetDurability(itemstack) end

-- Returns the items total durability
---@param itemstack ItemStack
---@return number
function Item.GetMaxDurability(itemstack) end

---@param itemstack ItemStack
---@return number
function Item.GetRemainingDurability(itemstack) end

-- The amount of damage dealt when used as a weapon
---@param withItemStack IItemStack Represents a stack of items or blocks
---@return number
function Item.GetAttackPower(withItemStack) end

-- The the attack range when used as a weapon
---@param withItemStack IItemStack Represents a stack of items or blocks
---@return number
function Item.GetAttackRange(withItemStack) end

-- Player is holding this collectible and breaks the targeted block
---@param player IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param itemslot ItemSlot The default item slot to item stacks
---@param remainingResistance number
---@param dt number
---@param counter number
---@return number
function Item.OnBlockBreaking(player, blockSel, itemslot, remainingResistance, dt, counter) end

-- Whenever the collectible was modified while inside a slot, usually when it was moved, split or merged.
---@param world IWorldAccessor Important interface to access the game world.
---@param slot ItemSlot The default item slot to item stacks
---@param extractedStack? ItemStack
function Item.OnModifiedInInventorySlot(world, slot, extractedStack) end

-- Player has broken a block while holding this collectible. Return false if you want to cancel the block break event.
---@param world IWorldAccessor Important interface to access the game world.
---@param byEntity Entity The basic class for all entities in the game
---@param itemslot ItemSlot The default item slot to item stacks
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param dropQuantityMultiplier? number
---@return boolean
function Item.OnBlockBrokenWith(world, byEntity, itemslot, blockSel, dropQuantityMultiplier) end

-- Called every game tick when the player breaks a block with this item in his hands. Returns the mining speed for given block.
---@param itemstack IItemStack Represents a stack of items or blocks
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param block Block Basic class for a placeable block
---@param forPlayer IPlayer Represents a player
---@return number
function Item.GetMiningSpeed(itemstack, blockSel, block, forPlayer) end

-- Not implemented yet
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity Entity The basic class for all entities in the game
---@return ModelTransformKeyFrame[] # A keyframe for model transformation.  
function Item.GeldHeldFpHitAnimation(slot, byEntity) end

-- Called when an entity uses this item to hit something in 3rd person mode
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity Entity The basic class for all entities in the game
---@return string
function Item.GetHeldTpHitAnimation(slot, byEntity) end

-- Called when an entity holds this item in hands in 3rd person mode
---@param activeHotbarSlot ItemSlot The default item slot to item stacks
---@param forEntity Entity The basic class for all entities in the game
---@param hand EnumHand
---@return string
function Item.GetHeldReadyAnimation(activeHotbarSlot, forEntity, hand) end

-- Called when an entity holds this item in hands in 3rd person mode
---@param activeHotbarSlot ItemSlot The default item slot to item stacks
---@param forEntity Entity The basic class for all entities in the game
---@param hand EnumHand
---@return string
function Item.GetHeldTpIdleAnimation(activeHotbarSlot, forEntity, hand) end

-- Called when an entity holds this item in hands in 3rd person mode
---@param activeHotbarSlot ItemSlot The default item slot to item stacks
---@param forEntity Entity The basic class for all entities in the game
---@return string
function Item.GetHeldTpUseAnimation(activeHotbarSlot, forEntity) end

-- An entity used this collectibe to attack something
---@param world IWorldAccessor Important interface to access the game world.
---@param byEntity Entity The basic class for all entities in the game
---@param attackedEntity Entity The basic class for all entities in the game
---@param itemslot ItemSlot The default item slot to item stacks
function Item.OnAttackingWith(world, byEntity, attackedEntity, itemslot) end

-- Called when this collectible is attempted to being used as part of a crafting recipe and should get consumed now. Return false if it doesn't match the ingredient
---@param inputStack ItemStack
---@param gridRecipe GridRecipe Represents a crafting recipe
---@param ingredient CraftingRecipeIngredient A crafting recipe ingredient
---@return boolean
function Item.MatchesForCrafting(inputStack, gridRecipe, ingredient) end

-- Called when this collectible is being used as part of a crafting recipe and should get consumed now
---@param allInputSlots ItemSlot[] The default item slot to item stacks
---@param stackInSlot ItemSlot The default item slot to item stacks
---@param gridRecipe GridRecipe Represents a crafting recipe
---@param fromIngredient CraftingRecipeIngredient A crafting recipe ingredient
---@param byPlayer IPlayer Represents a player
---@param quantity number
function Item.OnConsumedByCrafting(allInputSlots, stackInSlot, gridRecipe, fromIngredient, byPlayer, quantity) end

-- Called when a matching grid recipe has been found and an item is placed into the crafting output slot (which is still before the player clicks on the output slot to actually craft the item and consume the ingredients)
---@param allInputslots ItemSlot[] The default item slot to item stacks
---@param outputSlot ItemSlot The default item slot to item stacks
---@param byRecipe GridRecipe Represents a crafting recipe
function Item.OnCreatedByCrafting(allInputslots, outputSlot, byRecipe) end

-- Called after the player has taken out the item from the output slot
---@param slots ItemSlot[] The default item slot to item stacks
---@param outputSlot ItemSlot The default item slot to item stacks
---@param matchingRecipe GridRecipe Represents a crafting recipe
---@return boolean
function Item.ConsumeCraftingIngredients(slots, outputSlot, matchingRecipe) end

-- Causes the item to be damaged. Will play a breaking sound and removes the itemstack if no more durability is left
---@param world IWorldAccessor Important interface to access the game world.
---@param byEntity Entity The basic class for all entities in the game
---@param itemslot ItemSlot The default item slot to item stacks
---@param amount? number
function Item.DamageItem(world, byEntity, itemslot, amount) end

---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param matcher function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function Item.RefillSlotIfEmpty(slot, byEntity, matcher) end

---@param slot ItemSlot The default item slot to item stacks
---@param forPlayer IClientPlayer A client side player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@return SkillItem[]
function Item.GetToolModes(slot, forPlayer, blockSel) end

-- Should return the current items tool mode.
---@param slot ItemSlot The default item slot to item stacks
---@param byPlayer IPlayer Represents a player
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@return number
function Item.GetToolMode(slot, byPlayer, blockSelection) end

-- Should set given toolmode
---@param slot ItemSlot The default item slot to item stacks
---@param byPlayer IPlayer Represents a player
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param toolMode number
function Item.SetToolMode(slot, byPlayer, blockSelection, toolMode) end

-- This method is called during the opaque render pass when this item or block is being held in hands
---@param inSlot ItemSlot The default item slot to item stacks
---@param byPlayer IClientPlayer A client side player
function Item.OnHeldRenderOpaque(inSlot, byPlayer) end

-- This method is called during the order independent transparency render pass when this item or block is being held in hands
---@param inSlot ItemSlot The default item slot to item stacks
---@param byPlayer IClientPlayer A client side player
function Item.OnHeldRenderOit(inSlot, byPlayer) end

-- This method is called during the ortho (for 2D GUIs) render pass when this item or block is being held in hands
---@param inSlot ItemSlot The default item slot to item stacks
---@param byPlayer IClientPlayer A client side player
function Item.OnHeldRenderOrtho(inSlot, byPlayer) end

-- Called every frame when the player is holding this collectible in his hands. Is not called during OnUsing() or OnAttacking()
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
function Item.OnHeldIdle(slot, byEntity) end

---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param type EnumHandInteract
function Item.OnHeldActionAnimStart(slot, byEntity, type) end

-- Called every game tick when this collectible is in dropped form in the world (i.e. as EntityItem)
---@param entityItem EntityItem
function Item.OnGroundIdle(entityItem) end

-- Called every frame when this item is being displayed in the gui
---@param world IWorldAccessor Important interface to access the game world.
---@param stack ItemStack
function Item.InGuiIdle(world, stack) end

-- Called when this item was collected by an entity
---@param stack ItemStack
---@param entity Entity The basic class for all entities in the game
function Item.OnCollected(stack, entity) end

---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param useType EnumHandInteract
---@param firstEvent boolean
---@param handling EnumHandHandling&
function Item.OnHeldUseStart(slot, byEntity, blockSel, entitySel, useType, firstEvent, handling) end

-- General cancel use access. Override OnHeldAttackCancel or OnHeldInteractCancel to alter the behavior.
---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param cancelReason EnumItemUseCancelReason
---@return EnumHandInteract
function Item.OnHeldUseCancel(secondsPassed, slot, byEntity, blockSel, entitySel, cancelReason) end

-- General using access. Override OnHeldAttackStep or OnHeldInteractStep to alter the behavior.
---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@return EnumHandInteract
function Item.OnHeldUseStep(secondsPassed, slot, byEntity, blockSel, entitySel) end

-- General use over access. Override OnHeldAttackStop or OnHeldInteractStop to alter the behavior.
---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param useType EnumHandInteract
function Item.OnHeldUseStop(secondsPassed, slot, byEntity, blockSel, entitySel, useType) end

---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param handling EnumHandHandling&
function Item.OnHeldAttackStart(slot, byEntity, blockSel, entitySel, handling) end

-- When the player has canceled a custom attack action. Return false to deny action cancellation.
---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param cancelReason EnumItemUseCancelReason
---@return boolean
function Item.OnHeldAttackCancel(secondsPassed, slot, byEntity, blockSelection, entitySel, cancelReason) end

-- Called continously when a custom attack action is playing. Return false to stop the action.
---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@return boolean
function Item.OnHeldAttackStep(secondsPassed, slot, byEntity, blockSelection, entitySel) end

-- Called when a custom attack action is finished
---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
function Item.OnHeldAttackStop(secondsPassed, slot, byEntity, blockSelection, entitySel) end

---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param firstEvent boolean
---@param handling EnumHandHandling&
function Item.OnHeldInteractStart(slot, byEntity, blockSel, entitySel, firstEvent, handling) end

-- Called every frame while the player is using this collectible. Return false to stop the interaction.
---@param secondsUsed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@return boolean
function Item.OnHeldInteractStep(secondsUsed, slot, byEntity, blockSel, entitySel) end

-- Called when the player successfully completed the using action, always called once an interaction is over
---@param secondsUsed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
function Item.OnHeldInteractStop(secondsUsed, slot, byEntity, blockSel, entitySel) end

-- When the player released the right mouse button. Return false to deny the cancellation (= will keep using the item until OnHeldInteractStep returns false).
---@param secondsUsed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param cancelReason EnumItemUseCancelReason
---@return boolean
function Item.OnHeldInteractCancel(secondsUsed, slot, byEntity, blockSel, entitySel, cancelReason) end

---@param world IWorldAccessor Important interface to access the game world.
---@param byPlayer IPlayer Represents a player
---@param slot ItemSlot The default item slot to item stacks
---@param quantity number
---@param handling EnumHandling&
function Item.OnHeldDropped(world, byPlayer, slot, quantity, handling) end

-- Called by the inventory system when you hover over an item stack. This is the item stack name that is getting displayed.
---@param itemStack ItemStack
---@return string
function Item.GetHeldItemName(itemStack) end

-- Called by the inventory system when you hover over an item stack. This is the text that is getting displayed.
---@param inSlot ItemSlot The default item slot to item stacks
---@param dsc string
---@param world IWorldAccessor Important interface to access the game world.
---@param withDebugInfo boolean
function Item.GetHeldItemInfo(inSlot, dsc, world, withDebugInfo) end

---@return string
function Item.GetItemDescText() end

-- Interaction help thats displayed above the hotbar, when the player puts this item/block in his active hand slot
---@param inSlot ItemSlot The default item slot to item stacks
---@return WorldInteraction[]
function Item.GetHeldInteractionHelp(inSlot) end

---@param inSlot ItemSlot The default item slot to item stacks
---@param dsc string
---@param world IWorldAccessor Important interface to access the game world.
---@return number
function Item.AppendPerishableInfoText(inSlot, dsc, world) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param recipe GridRecipe Represents a crafting recipe
---@param slot ItemSlot The default item slot to item stacks
---@param x number
---@param y number
---@param z number
---@param size number
function Item.OnHandbookRecipeRender(capi, recipe, slot, x, y, z, size) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return table
function Item.GetHandBookStacks(capi) end

-- Should return true if the stack can be placed into given slot
---@param stack ItemStack
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function Item.CanBePlacedInto(stack, slot) end

-- Should return the max. number of items that can be placed from sourceStack into the sinkStack
---@param sinkStack ItemStack
---@param sourceStack ItemStack
---@param priority EnumMergePriority
---@return number
function Item.GetMergableQuantity(sinkStack, sourceStack, priority) end

-- Is always called on the sink slots item
---@param op ItemStackMergeOperation
function Item.TryMergeStacks(op) end

-- If the item is smeltable, this is the time it takes to smelt at smelting point
---@param world IWorldAccessor Important interface to access the game world.
---@param cookingSlotsProvider ISlotProvider
---@param inputSlot ItemSlot The default item slot to item stacks
---@return number
function Item.GetMeltingDuration(world, cookingSlotsProvider, inputSlot) end

-- If the item is smeltable, this is its melting point
---@param world IWorldAccessor Important interface to access the game world.
---@param cookingSlotsProvider ISlotProvider
---@param inputSlot ItemSlot The default item slot to item stacks
---@return number
function Item.GetMeltingPoint(world, cookingSlotsProvider, inputSlot) end

-- Should return true if this collectible is smeltable in an open fire
---@param world IWorldAccessor Important interface to access the game world.
---@param cookingSlotsProvider ISlotProvider
---@param inputStack ItemStack
---@param outputStack ItemStack
---@return boolean
function Item.CanSmelt(world, cookingSlotsProvider, inputStack, outputStack) end

-- Transform the item to it's smelted variant
---@param world IWorldAccessor Important interface to access the game world.
---@param cookingSlotsProvider ISlotProvider
---@param inputSlot ItemSlot The default item slot to item stacks
---@param outputSlot ItemSlot The default item slot to item stacks
function Item.DoSmelt(world, cookingSlotsProvider, inputSlot, outputSlot) end

-- Returns true if the stack can spoil
---@param itemstack ItemStack
---@return boolean
function Item.CanSpoil(itemstack) end

-- Returns the transition state of given transition type
---@param world IWorldAccessor Important interface to access the game world.
---@param inslot ItemSlot The default item slot to item stacks
---@param type EnumTransitionType
---@return TransitionState
function Item.UpdateAndGetTransitionState(world, inslot, type) end

---@param stack ItemStack
---@param type EnumTransitionType
---@param transitionedHours number
function Item.SetTransitionState(stack, type, transitionedHours) end

---@param world IWorldAccessor Important interface to access the game world.
---@param inSlot ItemSlot The default item slot to item stacks
---@param transType EnumTransitionType
---@return number
function Item.GetTransitionRateMul(world, inSlot, transType) end

-- Returns a list of the current transition states of this item, redirects to UpdateAndGetTransitionStatesNative
---@param world IWorldAccessor Important interface to access the game world.
---@param inslot ItemSlot The default item slot to item stacks
---@return TransitionState[]
function Item.UpdateAndGetTransitionStates(world, inslot) end

-- Called when any of its TransitionableProperties causes the stack to transition to another stack. Default behavior is to return props.TransitionedStack.ResolvedItemstack and set the stack size according to the transition rtio
---@param slot ItemSlot The default item slot to item stacks
---@param props TransitionableProperties
---@return ItemStack
function Item.OnTransitionNow(slot, props) end

-- Test is failed for Perish-able items which have less than 50% of their fresh state remaining (or are already starting to spoil)
---@param world IWorldAccessor Important interface to access the game world.
---@param itemstack ItemStack
---@return boolean
function Item.IsReasonablyFresh(world, itemstack) end

-- Returns true if the stack has a temperature attribute
---@param itemstack IItemStack Represents a stack of items or blocks
---@return boolean
function Item.HasTemperature(itemstack) end

-- Returns the stacks item temperature in degree celsius
---@param world IWorldAccessor Important interface to access the game world.
---@param itemstack ItemStack
---@return number
function Item.GetTemperature(world, itemstack) end

-- Sets the stacks item temperature in degree celsius
---@param world IWorldAccessor Important interface to access the game world.
---@param itemstack ItemStack
---@param temperature number
---@param delayCooldown? boolean
function Item.SetTemperature(world, itemstack, temperature, delayCooldown) end

-- Should return true if given stacks are equal, ignoring their stack size.
---@param thisStack ItemStack
---@param otherStack ItemStack
---@param ignoreAttributeSubTrees string
---@return boolean
function Item.Equals(thisStack, otherStack, ignoreAttributeSubTrees) end

-- Should return true if thisStack is a satisfactory replacement of otherStack. It's bascially an Equals() test, but it ignores any additional attributes that exist in otherStack
---@param thisStack ItemStack
---@param otherStack ItemStack
---@return boolean
function Item.Satisfies(thisStack, otherStack) end

-- This method is for example called by chests when they are being exported as part of a block schematic. Has to store all the currents block/item id mappings so it can be correctly imported again. By default it puts itself into the mapping and searches the itemstack attributes for attributes of type ItemStackAttribute and adds those to the mapping as well.
---@param world IWorldAccessor Important interface to access the game world.
---@param inSlot ItemSlot The default item slot to item stacks
---@param blockIdMapping table
---@param itemIdMapping table
function Item.OnStoreCollectibleMappings(world, inSlot, blockIdMapping, itemIdMapping) end

-- This method is called after a block/item like this has been imported as part of a block schematic. Has to restore fix the block/item id mappings as they are probably different compared to the world from where they were exported. By default iterates over all the itemstacks attributes and searches for attribute sof type ItenStackAttribute and calls .FixMapping() on them.
---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param inSlot ItemSlot The default item slot to item stacks
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
function Item.OnLoadCollectibleMappings(worldForResolve, inSlot, oldBlockIdMapping, oldItemIdMapping) end

-- This method is called after a block/item like this has been imported as part of a block schematic. Has to restore fix the block/item id mappings as they are probably different compared to the world from where they were exported. By default iterates over all the itemstacks attributes and searches for attribute sof type ItenStackAttribute and calls .FixMapping() on them.
---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param inSlot ItemSlot The default item slot to item stacks
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
---@param resolveImports boolean
function Item.OnLoadCollectibleMappings(worldForResolve, inSlot, oldBlockIdMapping, oldItemIdMapping, resolveImports) end

-- Returns true if this blocks matterstate is liquid.  (Liquid blocks should also implement IBlockFlowing)
-- 
-- IMPORTANT: Calling code should have looked up the block using IBlockAccessor.GetBlock(pos, EnumBlockLayersAccess.LiquidOnly) !!!
---@return boolean
function Item.IsLiquid() end

-- Returns the blocks behavior of given type, if it has such behavior
---@param type userdata
---@param withInheritance boolean
---@return CollectibleBehavior
function Item.GetCollectibleBehavior(type, withInheritance) end

---@param withInheritance boolean
---@return T
function Item.GetCollectibleBehavior(withInheritance) end

---@param withInheritance? boolean
---@return boolean
function Item.HasBehavior(withInheritance) end

-- Returns true if the block has given behavior
---@param type userdata
---@param withInheritance? boolean
---@return boolean
function Item.HasBehavior(type, withInheritance) end

-- Returns true if the block has given behavior
---@param type string
---@param classRegistry IClassRegistryAPI Interface for creating instances
---@return boolean
function Item.HasBehavior(type, classRegistry) end

-- Returns the blocks behavior of given type, if it has such behavior
---@param type userdata
---@return CollectibleBehavior
function Item.GetBehavior(type) end

---@return T
function Item.GetBehavior() end

-- Called immediately prior to a firepit or similar testing whether this Collectible can be smelted
-- Returns true if the caller should be marked dirty
---@param inventorySmelting InventoryBase Basic class representing an item inventory
---@return boolean
function Item.OnSmeltAttempt(inventorySmelting) end

-- Returns a new assetlocation with an equal domain and the given path
---@param path string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Item.CodeWithPath(path) end

-- Removes componentsToRemove parts from the blocks code end by splitting it up at every occurence of a dash ('-'). Right to left.
---@param componentsToRemove number
---@return string
function Item.CodeWithoutParts(componentsToRemove) end

-- Removes componentsToRemove parts from the blocks code beginning by splitting it up at every occurence of a dash ('-'). Left to Right
---@param componentsToRemove number
---@return string
function Item.CodeEndWithoutParts(componentsToRemove) end

-- Replaces the last parts from the blocks code and replaces it with components by splitting it up at every occurence of a dash ('-')
---@param components string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Item.CodeWithParts(components) end

-- More efficient version of CodeWithParts if there is only a single parameter
---@param component string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Item.CodeWithParts(component) end

---@param type string
---@param value string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Item.CodeWithVariant(type, value) end

---@param valuesByType table
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Item.CodeWithVariants(valuesByType) end

---@param types string
---@param values string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Item.CodeWithVariants(types, values) end

-- Replaces one part from the blocks code and replaces it with components by splitting it up at every occurence of a dash ('-')
---@param part string
---@param atPosition? number
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Item.CodeWithPart(part, atPosition) end

-- Returns the n-th code part in inverse order. If the code contains no dash ('-') the whole code is returned. Returns null if posFromRight is too high.
---@param posFromRight? number
---@return string
function Item.LastCodePart(posFromRight) end

-- Returns the n-th code part. If the code contains no dash ('-') the whole code is returned. Returns null if posFromLeft is too high.
---@param posFromLeft? number
---@return string
function Item.FirstCodePart(posFromLeft) end

-- Returns true if any given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildcards AssetLocation[] Defines a complete path to an assets, including it's domain
---@return boolean
function Item.WildCardMatch(wildcards) end

-- Returns true if given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildCard AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function Item.WildCardMatch(wildCard) end

-- Returns true if any given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildcards string
---@return boolean
function Item.WildCardMatch(wildcards) end

-- Returns true if given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildCard string
---@return boolean
function Item.WildCardMatch(wildCard) end

---@return userdata
function Item.GetType() end

---@return string
function Item.ToString() end

---@param obj userdata
---@return boolean
function Item.Equals(obj) end


