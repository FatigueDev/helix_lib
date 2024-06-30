---@meta

---@class WildcardUtil
WildcardUtil = {}


-- Returns a new AssetLocation with the wildcards (*) being filled with the blocks other Code parts, if the wildcard matches. 
-- Example this block is trapdoor-up-north. search is *-up-*, replace is *-down-*, in this case this method will return trapdoor-down-north.
---@param code AssetLocation Defines a complete path to an assets, including it's domain
---@param search AssetLocation Defines a complete path to an assets, including it's domain
---@param replace AssetLocation Defines a complete path to an assets, including it's domain
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function WildcardUtil.WildCardReplace(code, search, replace) end

---@param needle string
---@param haystack string
---@return boolean
function WildcardUtil.Match(needle, haystack) end

---@param needles string
---@param haystack string
---@return boolean
function WildcardUtil.Match(needles, haystack) end

---@param needle AssetLocation Defines a complete path to an assets, including it's domain
---@param haystack AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function WildcardUtil.Match(needle, haystack) end

-- Checks whether or not the wildcard matches for inCode, for example, returns true for wildcard rock-* and inCode rock-granite
---@param wildCard AssetLocation Defines a complete path to an assets, including it's domain
---@param inCode AssetLocation Defines a complete path to an assets, including it's domain
---@param allowedVariants string
---@return boolean
function WildcardUtil.Match(wildCard, inCode, allowedVariants) end

---@param wildCard AssetLocation Defines a complete path to an assets, including it's domain
---@param inCode AssetLocation Defines a complete path to an assets, including it's domain
---@param allowedVariants string
---@return boolean
function WildcardUtil.MatchesVariants(wildCard, inCode, allowedVariants) end

-- Extract the value matched by the wildcard. For exammple for rock-* and inCode rock-granite, this method will return 'granite'
-- Returns null if the wildcard does not match
---@param wildCard AssetLocation Defines a complete path to an assets, including it's domain
---@param inCode AssetLocation Defines a complete path to an assets, including it's domain
---@return string
function WildcardUtil.GetWildcardValue(wildCard, inCode) end

---@return userdata
function WildcardUtil.GetType() end

---@return string
function WildcardUtil.ToString() end

---@param obj userdata
---@return boolean
function WildcardUtil.Equals(obj) end

---@return number
function WildcardUtil.GetHashCode() end


