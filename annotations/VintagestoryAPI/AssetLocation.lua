---@meta

-- Defines a complete path to an assets, including it's domain
---@class AssetLocation
---@field Domain string
---@field Path string
---@field IsWildCard boolean
---@field EndsWithWildCard boolean
---@field Valid boolean Returns true if this is a valid path. For an asset location to be valid it needs to  have any string as domain, any string as path, the domain may not contain slashes, and the path may not contain 2 consecutive slashes
---@field Category AssetCategory Gets the category of the asset.
---@field LocationSeparator string
AssetLocation = {}

---@return AssetLocation
function AssetLocation.ctor() end
---@param domainAndPath string
---@return AssetLocation
function AssetLocation.ctor(domainAndPath) end
---@param domain string
---@param path string
---@return AssetLocation
function AssetLocation.ctor(domain, path) end

---@return string
function AssetLocation.get_Domain() end

---@param value string
function AssetLocation.set_Domain(value) end

---@return string
function AssetLocation.get_Path() end

---@param value string
function AssetLocation.set_Path(value) end

---@return boolean
function AssetLocation.get_IsWildCard() end

---@return boolean
function AssetLocation.get_EndsWithWildCard() end

-- Create an Asset Location from a string which may optionally have no prefixed domain: - in which case the defaultDomain is used.
-- This may be used to create an AssetLocation from any string (e.g. from custom Attributes in a JSON file).  For safety and consistency it ensures the domainAndPath string is lowercase.
-- BUT: the calling code has the responsibility to ensure the defaultDomain parameter is lowercase (normally the defaultDomain will be taken from another existing AssetLocation, in which case it should already be lowercase).
---@param domainAndPath string
---@param defaultDomain? string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocation.Create(domainAndPath, defaultDomain) end

---@return boolean
function AssetLocation.get_Valid() end

---@param Location AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function AssetLocation.IsChild(Location) end

---@param domain string
---@param partialPath string
---@return boolean
function AssetLocation.BeginsWith(domain, partialPath) end

---@param partialPath string
---@return boolean
function AssetLocation.PathStartsWith(partialPath) end

---@return string
function AssetLocation.ToShortString() end

---@return string
function AssetLocation.ShortDomain() end

-- Returns the n-th path part
---@param posFromLeft? number
---@return string
function AssetLocation.FirstPathPart(posFromLeft) end

---@return string
function AssetLocation.FirstCodePart() end

---@return string
function AssetLocation.SecondCodePart() end

---@return string
function AssetLocation.CodePartsAfterSecond() end

---@return AssetCategory
function AssetLocation.get_Category() end

---@param prefix string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocation.WithPathPrefix(prefix) end

---@param prefix string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocation.WithPathPrefixOnce(prefix) end

---@param prefix AssetLocation Defines a complete path to an assets, including it's domain
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocation.WithLocationPrefixOnce(prefix) end

---@param appendix string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocation.WithPathAppendix(appendix) end

---@param appendix string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocation.WithoutPathAppendix(appendix) end

---@param appendix string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocation.WithPathAppendixOnce(appendix) end

-- Whether or not the Asset has a domain.
---@return boolean
function AssetLocation.HasDomain() end

-- Gets the name of the asset.
---@return string
function AssetLocation.GetName() end

-- Removes the file ending from the asset path.
function AssetLocation.RemoveEnding() end

---@param prefix string
---@param suffix string
---@return string
function AssetLocation.PathOmittingPrefixAndSuffix(prefix, suffix) end

-- Returns the code of the last variant in the path, for example for a path of "water-still-7" it would return "7"
---@return string
function AssetLocation.EndVariant() end

-- Clones this asset.
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocation.Clone() end

---@param prefixLength number
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocation.CloneWithoutPrefixAndEnding(prefixLength) end

-- Makes a copy of the asset with a modified path.
---@param path string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocation.CopyWithPath(path) end

---@param prefix string
---@param appendix string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocation.CopyWithPathPrefixAndAppendix(prefix, appendix) end

---@param prefix string
---@param appendix string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocation.CopyWithPathPrefixAndAppendixOnce(prefix, appendix) end

-- Sets the path of the asset location
---@param path string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocation.WithPath(path) end

-- Converts a collection of paths to AssetLocations.
---@param names string
---@return AssetLocation[] # Defines a complete path to an assets, including it's domain
function AssetLocation.toLocations(names) end

---@return number
function AssetLocation.GetHashCode() end

---@param other AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function AssetLocation.Equals(other) end

---@param obj userdata
---@return boolean
function AssetLocation.Equals(obj) end

---@param left AssetLocation Defines a complete path to an assets, including it's domain
---@param right AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function AssetLocation.op_Equality(left, right) end

---@param left AssetLocation Defines a complete path to an assets, including it's domain
---@param right AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function AssetLocation.op_Inequality(left, right) end

---@return string
function AssetLocation.ToString() end

---@param other AssetLocation Defines a complete path to an assets, including it's domain
---@return number
function AssetLocation.CompareTo(other) end

---@return userdata
function AssetLocation.GetType() end


