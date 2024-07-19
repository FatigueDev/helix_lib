---@meta

-- Represents a service, which provides access to translated strings, based on key/value pairs read from JSON files.             
---@class ITranslationService
---@field LineBreakBehavior EnumLinebreakBehavior
---@field LanguageCode string Gets the language code that this translation service caters for.             
ITranslationService = {}


---@return EnumLinebreakBehavior
function ITranslationService.get_LineBreakBehavior() end

---@return string
function ITranslationService.get_LanguageCode() end

-- Loads translation key/value pairs from all relevant JSON files within the Asset Manager.
--             
---@param lazyload? boolean
function ITranslationService.Load(lazyload) end

-- Loads only the vanilla JSON files, without dealing with mods, or resource-packs.
--             
---@param assetsPath string
---@param lazyLoad? boolean
function ITranslationService.PreLoad(assetsPath, lazyLoad) end

-- Gets a translation for a given key, if any matching wildcarded keys are found within the cache.
--             
---@param key string
---@param args userdata
---@return string
function ITranslationService.GetIfExists(key, args) end

-- Gets a translation for a given key.
--             
---@param key string
---@param args userdata
---@return string
function ITranslationService.Get(key, args) end

-- Retrieves a list of all translation entries within the cache.
--             
---@return IDictionary`2
function ITranslationService.GetAllEntries() end

-- Gets the raw, unformatted translated value for the key provided.
--             
---@param key string
---@return string
function ITranslationService.GetUnformatted(key) end

-- Gets a translation for a given key, if any matching wildcarded keys are found within the cache.
--             
---@param key string
---@param args userdata
---@return string
function ITranslationService.GetMatching(key, args) end

-- Gets a translation for a given key, if any matching wildcarded keys are found within the cache.
--             
---@param key string
---@param args userdata
---@return string
function ITranslationService.GetMatchingIfExists(key, args) end

-- Determines whether the specified key has a translation.
--             
---@param key string
---@param findWildcarded? boolean
---@return boolean
function ITranslationService.HasTranslation(key, findWildcarded) end

-- Determines whether the specified key has a translation.
--             
---@param key string
---@param findWildcarded boolean
---@param logErrors boolean
---@return boolean
function ITranslationService.HasTranslation(key, findWildcarded, logErrors) end

-- Specifies an asset manager to use, when the service has been lazy-loaded.
--             
---@param assetManager IAssetManager Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
function ITranslationService.UseAssetManager(assetManager) end

-- Used to compile the regexes, to save time on the first 'actual' wildcard search - saves about 300ms
--             
function ITranslationService.InitialiseSearch() end

-- Sets the loaded flag to false, so that the next lookup causes it to reload all translation entries
function ITranslationService.Invalidate() end


