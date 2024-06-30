---@meta

-- Base of a system, which is part of a code mod. Takes care of setting up, registering and handling all sorts of things. You may choose to split up a mod into multiple distinct systems if you so choose, but there may also be just one.
---@class ModSystem
---@field Mod Mod Gets the Mod this mod system is part of.
ModSystem = {}


---@return Mod # Represents a mod in the mod manager. May contain zero to multiple ModSystem instances within it.
function ModSystem.get_Mod() end

-- Returns if this mod should be loaded for the given app side.
---@param forSide EnumAppSide
---@return boolean
function ModSystem.ShouldLoad(forSide) end

-- If you need mods to be executed in a certain order, adjust this methods return value.
-- The server will call each Mods StartPre() and Start() methods in ascending order of each mods execute order value. And thus, as long as every mod registers it's event handlers in the Start() method, all event handlers will be called in the same execution order.
-- Default execute order of some survival mod parts
-- Worldgen:
-- - GenTerra: 0 
-- - RockStrata: 0.1
-- - Deposits: 0.2
-- - Caves: 0.3
-- - Blocklayers: 0.4
-- AssetsLoaded event
-- - JsonPatch loader: 0.05
-- - Load hardcoded mantle block: 0.1
-- - Block and Item Loader: 0.2
-- - Recipes (Smithing, Knapping, Clayforming, Grid recipes, Alloys) Loader: 1
---@return number
function ModSystem.ExecuteOrder() end

-- Called during intial mod loading, called before any mod receives the call to Start()
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function ModSystem.StartPre(api) end

-- Start method, called on both server and client after all mods already received a call to StartPre(), but before Blocks/Items/Entities/Recipes etc are loaded and some time before StartServerSide / StartClientSide.
-- Typically used to register for events and network packets etc
-- Typically also used in a mod's core to register the classes for your blocks, items, entities, blockentities, behaviors etc, prior to loading assets
-- Do not make calls to api.Assets at this stage, the assets may not be found, resulting in errors (even if the json file exists on disk). Use AssetsLoaded() stage instead.
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function ModSystem.Start(api) end

-- Called on the server or the client; implementing code may need to check which side it is.
-- On a server, called only after all mods have received Start(), and after asset JSONs have been read from disk and patched, but before runphase ModsAndConfigReady.
-- Asset files are now available to load using api.Assets.TryGet() calls or similar. If your execute order is below 0.2, blocks and items are not yet registered at this point, if below 0.6 recipes are not yet registered.
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function ModSystem.AssetsLoaded(api) end

-- When called on a server, all Block.OnLoaded() methods etc. have already been called, this is for any final asset set-up steps to be done after that.  See VSSurvivalMod system BlockReinforcement.cs for an example.
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function ModSystem.AssetsFinalize(api) end

-- Full start to the mod on the client side.
-- Note, in multiplayer games, the server assets (blocks, items, entities, recipes) have not yet been received and so no blocks etc. are yet registered
-- For code that must run only after we have blocks, items, entities and recipes all registered and loaded, add your method to event BlockTexturesLoaded
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
function ModSystem.StartClientSide(api) end

-- Full start to the mod on the server side
-- Note: preferably, your code which adds or updates behaviors or attributes or other fixed properties of any block, item or entity, should have been run before now.
-- For example, code which needs to do that could be placed in an overridden AssetsFinalize() method. See VSSurvivalMod system BlockReinforcement.cs for an example.
---@param api ICoreServerAPI The core api implemented by the server. The main interface for accessing the server. Contains all sub components and some miscellaneous methods.
function ModSystem.StartServerSide(api) end

-- If this mod allows runtime reloading, you must implement this method to unregister any listeners / handlers
function ModSystem.Dispose() end

---@return userdata
function ModSystem.GetType() end

---@return string
function ModSystem.ToString() end

---@param obj userdata
---@return boolean
function ModSystem.Equals(obj) end

---@return number
function ModSystem.GetHashCode() end


