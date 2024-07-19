---@meta

-- Utility class for enabling i18n. Loads language entries from assets/[locale].json
---@class Lang
---@field AvailableLanguages table
---@field CurrentLocale string Gets the language code that this currently used to translate values.
---@field DefaultLocale string
Lang = {}


---@return table
function Lang.get_AvailableLanguages() end

---@return string
function Lang.get_CurrentLocale() end

---@return string
function Lang.get_DefaultLocale() end

---@param value string
function Lang.set_DefaultLocale(value) end

-- Loads all translations
---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param assetManager IAssetManager Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
---@param language? string
function Lang.Load(logger, assetManager, language) end

-- Changes the current language for the game.
---@param languageCode string
function Lang.ChangeLanguage(languageCode) end

-- Loads translation key/value pairs from all relevant JSON files within the Asset Manager.
---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param assetManager IAssetManager Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
---@param languageCode? string
---@param lazyLoad? boolean
---@param lbBehavior? EnumLinebreakBehavior
function Lang.LoadLanguage(logger, assetManager, languageCode, lazyLoad, lbBehavior) end

-- Loads only the vanilla JSON files, without dealing with mods, or resource-packs.
---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param assetsPath string
---@param defaultLanguage? string
function Lang.PreLoad(logger, assetsPath, defaultLanguage) end

-- Gets a translation entry for given key, if any matching wildcarded keys are found within the cache.
---@param key string
---@param args userdata
---@return string
function Lang.GetIfExists(key, args) end

-- Gets a translation entry for given key using given locale
---@param langcode string
---@param key string
---@param args userdata
---@return string
function Lang.GetL(langcode, key, args) end

---@param langcode string
---@param key string
---@param args userdata
---@return string
function Lang.GetMatchingL(langcode, key, args) end

-- Gets a translation entry for given key using the current locale
---@param key string
---@param args userdata
---@return string
function Lang.Get(key, args) end

-- Gets the raw, unformatted translated value for the key provided.
---@param key string
---@return string
function Lang.GetUnformatted(key) end

-- Gets a translation for a given key, if any matching wildcarded keys are found within the cache.
---@param key string
---@param args userdata
---@return string
function Lang.GetMatching(key, args) end

-- Gets a translation entry for given key, if any matching wildcarded keys are found within the cache.
---@param key string
---@param args userdata
---@return string
function Lang.GetMatchingIfExists(key, args) end

-- Retrieves a list of all translation entries within the cache.
---@return IDictionary`2
function Lang.GetAllEntries() end

-- Determines whether the specified key has a translation.
---@param key string
---@param findWildcarded? boolean
---@param logErrors? boolean
---@return boolean
function Lang.HasTranslation(key, findWildcarded, logErrors) end

function Lang.InitialiseSearch() end

---@param code AssetLocation Defines a complete path to an assets, including it's domain
---@return string
function Lang.GetNamePlaceHolder(code) end

---@return userdata
function Lang.GetType() end

---@return string
function Lang.ToString() end

---@param obj userdata
---@return boolean
function Lang.Equals(obj) end

---@return number
function Lang.GetHashCode() end


