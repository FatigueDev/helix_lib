---@meta

---@class CollectibleBehavior
---@field ClientSideOptional boolean If true, this behavior is not required on the client. This is here because copygirl doesn't stop asking for it. Probably breaks things. If it breaks things, complain to copygirl please :p
---@field collObj CollectibleObject The collectible object (item or block) for this behavior instance.
---@field propertiesAtString string The properties of this block behavior.
CollectibleBehavior = {}

---@param collObj CollectibleObject Contains all properties shared by Blocks and Items
---@return CollectibleBehavior
function CollectibleBehavior.ctor(collObj) end

---@return boolean
function CollectibleBehavior.get_ClientSideOptional() end

-- Called right after the block behavior was created, must call base method
---@param properties JsonObject Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function CollectibleBehavior.Initialize(properties) end

-- Server Side: Called once the collectible has been registered
-- Client Side: Called once the collectible has been loaded from server packet
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function CollectibleBehavior.OnLoaded(api) end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function CollectibleBehavior.OnUnloaded(api) end

---@param itemstack ItemStack
---@param handling EnumHandling&
---@return EnumItemStorageFlags # Determines the kinds of storage types the item can be put into
function CollectibleBehavior.GetStorageFlags(itemstack, handling) end

---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param handHandling EnumHandHandling&
---@param handling EnumHandling&
function CollectibleBehavior.OnHeldAttackStart(slot, byEntity, blockSel, entitySel, handHandling, handling) end

---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param cancelReason EnumItemUseCancelReason
---@param handling EnumHandling&
---@return boolean
function CollectibleBehavior.OnHeldAttackCancel(secondsPassed, slot, byEntity, blockSelection, entitySel, cancelReason, handling) end

---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param handling EnumHandling&
---@return boolean
function CollectibleBehavior.OnHeldAttackStep(secondsPassed, slot, byEntity, blockSelection, entitySel, handling) end

---@param secondsPassed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param handling EnumHandling&
function CollectibleBehavior.OnHeldAttackStop(secondsPassed, slot, byEntity, blockSelection, entitySel, handling) end

---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param firstEvent boolean
---@param handHandling EnumHandHandling&
---@param handling EnumHandling&
function CollectibleBehavior.OnHeldInteractStart(slot, byEntity, blockSel, entitySel, firstEvent, handHandling, handling) end

---@param secondsUsed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param handling EnumHandling&
---@return boolean
function CollectibleBehavior.OnHeldInteractStep(secondsUsed, slot, byEntity, blockSel, entitySel, handling) end

---@param secondsUsed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param handling EnumHandling&
function CollectibleBehavior.OnHeldInteractStop(secondsUsed, slot, byEntity, blockSel, entitySel, handling) end

---@param secondsUsed number
---@param slot ItemSlot The default item slot to item stacks
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param cancelReason EnumItemUseCancelReason
---@param handled EnumHandling&
---@return boolean
function CollectibleBehavior.OnHeldInteractCancel(secondsUsed, slot, byEntity, blockSel, entitySel, cancelReason, handled) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param itemstack ItemStack
---@param target EnumItemRenderTarget The render taget for an item stack
---@param renderinfo ItemRenderInfo&
function CollectibleBehavior.OnBeforeRender(capi, itemstack, target, renderinfo) end

---@param inSlot ItemSlot The default item slot to item stacks
---@param handling EnumHandling&
---@return WorldInteraction[]
function CollectibleBehavior.GetHeldInteractionHelp(inSlot, handling) end

-- Called when the tool mode (F) key is pressed to generate the GUI
---@param slot ItemSlot The default item slot to item stacks
---@param forPlayer IClientPlayer A client side player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@return SkillItem[]
function CollectibleBehavior.GetToolModes(slot, forPlayer, blockSel) end

-- Should return the current items tool mode.
---@param slot ItemSlot The default item slot to item stacks
---@param byPlayer IPlayer Represents a player
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@return number
function CollectibleBehavior.GetToolMode(slot, byPlayer, blockSelection) end

-- Should set given toolmode
---@param slot ItemSlot The default item slot to item stacks
---@param byPlayer IPlayer Represents a player
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param toolMode number
function CollectibleBehavior.SetToolMode(slot, byPlayer, blockSelection, toolMode) end

---@param inSlot ItemSlot The default item slot to item stacks
---@param dsc string
---@param world IWorldAccessor Important interface to access the game world.
---@param withDebugInfo boolean
function CollectibleBehavior.GetHeldItemInfo(inSlot, dsc, world, withDebugInfo) end

---@param sb string
---@param itemStack ItemStack
function CollectibleBehavior.GetHeldItemName(sb, itemStack) end

---@param world IWorldAccessor Important interface to access the game world.
---@param byEntity Entity The basic class for all entities in the game
---@param itemslot ItemSlot The default item slot to item stacks
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param dropQuantityMultiplier number
---@param bhHandling EnumHandling&
---@return boolean
function CollectibleBehavior.OnBlockBrokenWith(world, byEntity, itemslot, blockSel, dropQuantityMultiplier, bhHandling) end

---@param player IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param itemslot ItemSlot The default item slot to item stacks
---@param remainingResistance number
---@param dt number
---@param counter number
---@param handled EnumHandling&
---@return number
function CollectibleBehavior.OnBlockBreaking(player, blockSel, itemslot, remainingResistance, dt, counter, handled) end

---@param slot ItemSlot The default item slot to item stacks
---@param byEntity Entity The basic class for all entities in the game
---@param bhHandling EnumHandling&
---@return string
function CollectibleBehavior.GetHeldTpHitAnimation(slot, byEntity, bhHandling) end

---@param activeHotbarSlot ItemSlot The default item slot to item stacks
---@param forEntity Entity The basic class for all entities in the game
---@param hand EnumHand
---@param bhHandling EnumHandling&
---@return string
function CollectibleBehavior.GetHeldReadyAnimation(activeHotbarSlot, forEntity, hand, bhHandling) end

---@param activeHotbarSlot ItemSlot The default item slot to item stacks
---@param forEntity Entity The basic class for all entities in the game
---@param hand EnumHand
---@param bhHandling EnumHandling&
---@return string
function CollectibleBehavior.GetHeldTpIdleAnimation(activeHotbarSlot, forEntity, hand, bhHandling) end

---@param activeHotbarSlot ItemSlot The default item slot to item stacks
---@param forEntity Entity The basic class for all entities in the game
---@param bhHandling EnumHandling&
---@return string
function CollectibleBehavior.GetHeldTpUseAnimation(activeHotbarSlot, forEntity, bhHandling) end

---@return userdata
function CollectibleBehavior.GetType() end

---@return string
function CollectibleBehavior.ToString() end

---@param obj userdata
---@return boolean
function CollectibleBehavior.Equals(obj) end

---@return number
function CollectibleBehavior.GetHashCode() end


