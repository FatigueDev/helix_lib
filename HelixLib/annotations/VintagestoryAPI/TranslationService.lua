---@meta

-- A service, which provides access to translated strings, based on key/value pairs read from JSON files.
---@class TranslationService:  ITranslationService
---@field LineBreakBehavior EnumLinebreakBehavior
---@field LanguageCode string Gets the language code that this translation service caters for.
TranslationService = {}

---@param languageCode string
---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param assetManager? IAssetManager Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
---@param lbBehavior? EnumLinebreakBehavior
---@return TranslationService
function TranslationService.ctor(languageCode, logger, assetManager, lbBehavior) end

---@return EnumLinebreakBehavior
function TranslationService.get_LineBreakBehavior() end

---@param value EnumLinebreakBehavior
function TranslationService.set_LineBreakBehavior(value) end

---@return string
function TranslationService.get_LanguageCode() end

-- Loads translation key/value pairs from all relevant JSON files within the Asset Manager.
---@param lazyLoad? boolean
function TranslationService.Load(lazyLoad) end

-- Loads only the vanilla JSON files, without dealing with mods, or resource-packs.
---@param assetsPath string
---@param lazyLoad? boolean
function TranslationService.PreLoad(assetsPath, lazyLoad) end

-- Sets the loaded flag to false, so that the next lookup causes it to reload all translation entries
function TranslationService.Invalidate() end

-- Gets a translation for a given key, if any matching wildcarded keys are found within the cache.
---@param key string
---@param args userdata
---@return string
function TranslationService.GetIfExists(key, args) end

-- Gets a translation for a given key.
---@param key string
---@param args userdata
---@return string
function TranslationService.Get(key, args) end

-- Retrieves a list of all translation entries within the cache.
---@return IDictionary`2
function TranslationService.GetAllEntries() end

-- Gets the raw, unformatted translated value for the key provided.
---@param key string
---@return string
function TranslationService.GetUnformatted(key) end

-- Gets a translation for a given key, if any matching wildcarded keys are found within the cache.
---@param key string
---@param args userdata
---@return string
function TranslationService.GetMatching(key, args) end

-- Determines whether the specified key has a translation.
---@param key string
---@param findWildcarded? boolean
---@return boolean
function TranslationService.HasTranslation(key, findWildcarded) end

-- Determines whether the specified key has a translation.
---@param key string
---@param findWildcarded boolean
---@param logErrors boolean
---@return boolean
function TranslationService.HasTranslation(key, findWildcarded, logErrors) end

-- Specifies an asset manager to use, when the service has been lazy-loaded.
---@param assetManager IAssetManager Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
function TranslationService.UseAssetManager(assetManager) end

-- Gets a translation for a given key, if any matching wildcarded keys are found within the cache.
---@param key string
---@param args userdata
---@return string
function TranslationService.GetMatchingIfExists(key, args) end

function TranslationService.InitialiseSearch() end

---@return userdata
function TranslationService.GetType() end

---@return string
function TranslationService.ToString() end

---@param obj userdata
---@return boolean
function TranslationService.Equals(obj) end

---@return number
function TranslationService.GetHashCode() end


