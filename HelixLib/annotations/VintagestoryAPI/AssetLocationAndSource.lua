---@meta

-- Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@class AssetLocationAndSource: AssetLocation, AssetLocation
---@field Domain string
---@field Path string
---@field IsWildCard boolean
---@field EndsWithWildCard boolean
---@field Valid boolean Returns true if this is a valid path. For an asset location to be valid it needs to  have any string as domain, any string as path, the domain may not contain slashes, and the path may not contain 2 consecutive slashes
---@field Category AssetCategory Gets the category of the asset.
---@field AddToAllAtlasses boolean
---@field Source SourceStringComponents The source of a given asset.
---@field loadedAlready number Used to avoid duplication when loading colormaps and shapes
AssetLocationAndSource = {}

---@param location string
---@return AssetLocationAndSource
function AssetLocationAndSource.ctor(location) end
---@param loc AssetLocation Defines a complete path to an assets, including it's domain
---@return AssetLocationAndSource
function AssetLocationAndSource.ctor(loc) end
---@param loc AssetLocation Defines a complete path to an assets, including it's domain
---@param message string
---@param sourceLoc AssetLocation Defines a complete path to an assets, including it's domain
---@param alternateNo? number
---@return AssetLocationAndSource
function AssetLocationAndSource.ctor(loc, message, sourceLoc, alternateNo) end
---@param domain string
---@param path string
---@param message string
---@param sourceDomain string
---@param sourcePath string
---@param alternateNo? number
---@return AssetLocationAndSource
function AssetLocationAndSource.ctor(domain, path, message, sourceDomain, sourcePath, alternateNo) end
---@param loc AssetLocation Defines a complete path to an assets, including it's domain
---@param source SourceStringComponents For performance, don't build and store new concatenated strings for every block variant, item and entity, when these will only be used (if ever) for error logging
---@return AssetLocationAndSource
function AssetLocationAndSource.ctor(loc, source) end
---@param domain string
---@param path string
---@param source SourceStringComponents For performance, don't build and store new concatenated strings for every block variant, item and entity, when these will only be used (if ever) for error logging
---@return AssetLocationAndSource
function AssetLocationAndSource.ctor(domain, path, source) end
---@param loc AssetLocation Defines a complete path to an assets, including it's domain
---@param oldStyleSource string
---@return AssetLocationAndSource
function AssetLocationAndSource.ctor(loc, oldStyleSource) end
---@param domain string
---@param path string
---@param oldStyleSource string
---@return AssetLocationAndSource
function AssetLocationAndSource.ctor(domain, path, oldStyleSource) end

---@return string
function AssetLocationAndSource.get_Domain() end

---@param value string
function AssetLocationAndSource.set_Domain(value) end

---@return string
function AssetLocationAndSource.get_Path() end

---@param value string
function AssetLocationAndSource.set_Path(value) end

---@return boolean
function AssetLocationAndSource.get_IsWildCard() end

---@return boolean
function AssetLocationAndSource.get_EndsWithWildCard() end

---@return boolean
function AssetLocationAndSource.get_Valid() end

---@param Location AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function AssetLocationAndSource.IsChild(Location) end

---@param domain string
---@param partialPath string
---@return boolean
function AssetLocationAndSource.BeginsWith(domain, partialPath) end

---@param partialPath string
---@return boolean
function AssetLocationAndSource.PathStartsWith(partialPath) end

---@return string
function AssetLocationAndSource.ToShortString() end

---@return string
function AssetLocationAndSource.ShortDomain() end

-- Returns the n-th path part
---@param posFromLeft? number
---@return string
function AssetLocationAndSource.FirstPathPart(posFromLeft) end

---@return string
function AssetLocationAndSource.FirstCodePart() end

---@return string
function AssetLocationAndSource.SecondCodePart() end

---@return string
function AssetLocationAndSource.CodePartsAfterSecond() end

---@return AssetCategory
function AssetLocationAndSource.get_Category() end

---@param prefix string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocationAndSource.WithPathPrefix(prefix) end

---@param prefix string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocationAndSource.WithPathPrefixOnce(prefix) end

---@param prefix AssetLocation Defines a complete path to an assets, including it's domain
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocationAndSource.WithLocationPrefixOnce(prefix) end

---@param appendix string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocationAndSource.WithPathAppendix(appendix) end

---@param appendix string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocationAndSource.WithoutPathAppendix(appendix) end

---@param appendix string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocationAndSource.WithPathAppendixOnce(appendix) end

-- Whether or not the Asset has a domain.
---@return boolean
function AssetLocationAndSource.HasDomain() end

-- Gets the name of the asset.
---@return string
function AssetLocationAndSource.GetName() end

-- Removes the file ending from the asset path.
function AssetLocationAndSource.RemoveEnding() end

---@param prefix string
---@param suffix string
---@return string
function AssetLocationAndSource.PathOmittingPrefixAndSuffix(prefix, suffix) end

-- Returns the code of the last variant in the path, for example for a path of "water-still-7" it would return "7"
---@return string
function AssetLocationAndSource.EndVariant() end

-- Clones this asset.
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocationAndSource.Clone() end

---@param prefixLength number
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocationAndSource.CloneWithoutPrefixAndEnding(prefixLength) end

-- Makes a copy of the asset with a modified path.
---@param path string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocationAndSource.CopyWithPath(path) end

---@param prefix string
---@param appendix string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocationAndSource.CopyWithPathPrefixAndAppendix(prefix, appendix) end

---@param prefix string
---@param appendix string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocationAndSource.CopyWithPathPrefixAndAppendixOnce(prefix, appendix) end

-- Sets the path of the asset location
---@param path string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function AssetLocationAndSource.WithPath(path) end

---@return number
function AssetLocationAndSource.GetHashCode() end

---@param other AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function AssetLocationAndSource.Equals(other) end

---@param obj userdata
---@return boolean
function AssetLocationAndSource.Equals(obj) end

---@return string
function AssetLocationAndSource.ToString() end

---@param other AssetLocation Defines a complete path to an assets, including it's domain
---@return number
function AssetLocationAndSource.CompareTo(other) end

---@return userdata
function AssetLocationAndSource.GetType() end


