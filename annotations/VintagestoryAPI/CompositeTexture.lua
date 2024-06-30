---@meta

-- A single block texture
---@class CompositeTexture
---@field Overlays AssetLocation[] (legacy setter, used BlendedOverlays instead) The base texture may be overlayed with any quantity of textures. These are baked together during texture atlas creation
---@field AnyWildCardNoFiles AssetLocation
---@field Base AssetLocation The basic texture for this composite texture
---@field BlendedOverlays BlendedOverlayTexture[] The base texture may be overlayed with any quantity of textures. These are baked together during texture atlas creation
---@field Alternates CompositeTexture[] The texture may consists of any amount of alternatives, one of which will be randomly chosen when the block is placed in the world.
---@field Tiles CompositeTexture[]
---@field TilesWidth number
---@field Baked BakedCompositeTexture BakedCompositeTexture is an expanded, atlas friendly version of CompositeTexture. Required during texture atlas generation.
---@field Rotation number Rotation of the texture may only be a multiple of 90
---@field Alpha number Can be used to modify the opacity of the texture
---@field WildCardNoFiles AssetLocation
---@field basicTexturesCache table
---@field wildcardsCache table
---@field AlphaSeparator string
---@field AlphaSeparatorRegexSearch string
CompositeTexture = {}

---@return CompositeTexture
function CompositeTexture.ctor() end
---@param Base AssetLocation Defines a complete path to an assets, including it's domain
---@return CompositeTexture
function CompositeTexture.ctor(Base) end

---@param value AssetLocation[] Defines a complete path to an assets, including it's domain
function CompositeTexture.set_Overlays(value) end

---@return AssetLocation # Defines a complete path to an assets, including it's domain
function CompositeTexture.get_AnyWildCardNoFiles() end

-- Creates a deep copy of the texture
---@return CompositeTexture # A single block texture
function CompositeTexture.Clone() end

-- Tests whether this is a basic CompositeTexture with an asset location only, no rotation, alpha, alternates or overlays
---@return boolean
function CompositeTexture.IsBasic() end

-- Expands the Composite Texture to a texture atlas friendly version and populates the Baked field. This method is called by the texture atlas managers.
-- Won't have any effect if called after the texture atlasses have been created.
---@param assetManager IAssetManager Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
function CompositeTexture.Bake(assetManager) end

-- Expands the Composite Texture to a texture atlas friendly version and populates the Baked field. This method can be called after the game world has loaded.
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param intoAtlas ITextureAtlasAPI Entity texture Atlas.
function CompositeTexture.RuntimeBake(capi, intoAtlas) end

---@return string
function CompositeTexture.ToString() end

---@param search string
---@param replace string
function CompositeTexture.FillPlaceholder(search, replace) end

---@return userdata
function CompositeTexture.GetType() end

---@param obj userdata
---@return boolean
function CompositeTexture.Equals(obj) end

---@return number
function CompositeTexture.GetHashCode() end


