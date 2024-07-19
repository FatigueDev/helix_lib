---@meta

-- Implementation of Semantic Verisoning standard, version 2.0.0. See https://semver.org/ for specifications.             
---@class SemVer
---@field Major number
---@field Minor number
---@field Patch number
---@field PreReleaseIdentifiers string
---@field BuildMetadataIdentifiers string
---@field PreRelease string
---@field BuildMetadata string
SemVer = {}

---@param major number
---@param minor number
---@param patch number
---@return SemVer
function SemVer.ctor(major, minor, patch) end
---@param major number
---@param minor number
---@param patch number
---@param preRelease? string
---@param buildMetadata? string
---@return SemVer
function SemVer.ctor(major, minor, patch, preRelease, buildMetadata) end
---@param major number
---@param minor number
---@param patch number
---@param preReleaseIdentifiers? string
---@param buildMetadataIdentifiers? string
---@return SemVer
function SemVer.ctor(major, minor, patch, preReleaseIdentifiers, buildMetadataIdentifiers) end

---@return number
function SemVer.get_Major() end

---@return number
function SemVer.get_Minor() end

---@return number
function SemVer.get_Patch() end

---@return string
function SemVer.get_PreReleaseIdentifiers() end

---@return string
function SemVer.get_BuildMetadataIdentifiers() end

---@return string
function SemVer.get_PreRelease() end

---@return string
function SemVer.get_BuildMetadata() end

-- Converts the specified string representation of a
-- semantic version to its SemVer equivalent.
--             
---@param s string
---@return SemVer # Implementation of Semantic Verisoning standard, version 2.0.0. See https://semver.org/ for specifications.             
function SemVer.Parse(s) end

---@param s string
---@param result SemVer&
---@return boolean
function SemVer.TryParse(s, result) end

---@param s string
---@param result SemVer&
---@param error string
---@return boolean
function SemVer.TryParse(s, result, error) end

---@return string
function SemVer.ToString() end

---@param left SemVer Implementation of Semantic Verisoning standard, version 2.0.0. See https://semver.org/ for specifications.             
---@param right SemVer Implementation of Semantic Verisoning standard, version 2.0.0. See https://semver.org/ for specifications.             
---@return boolean
function SemVer.op_Equality(left, right) end

---@param left SemVer Implementation of Semantic Verisoning standard, version 2.0.0. See https://semver.org/ for specifications.             
---@param right SemVer Implementation of Semantic Verisoning standard, version 2.0.0. See https://semver.org/ for specifications.             
---@return boolean
function SemVer.op_Inequality(left, right) end

---@param left SemVer Implementation of Semantic Verisoning standard, version 2.0.0. See https://semver.org/ for specifications.             
---@param right SemVer Implementation of Semantic Verisoning standard, version 2.0.0. See https://semver.org/ for specifications.             
---@return boolean
function SemVer.op_GreaterThan(left, right) end

---@param left SemVer Implementation of Semantic Verisoning standard, version 2.0.0. See https://semver.org/ for specifications.             
---@param right SemVer Implementation of Semantic Verisoning standard, version 2.0.0. See https://semver.org/ for specifications.             
---@return boolean
function SemVer.op_LessThan(left, right) end

---@param left SemVer Implementation of Semantic Verisoning standard, version 2.0.0. See https://semver.org/ for specifications.             
---@param right SemVer Implementation of Semantic Verisoning standard, version 2.0.0. See https://semver.org/ for specifications.             
---@return boolean
function SemVer.op_GreaterThanOrEqual(left, right) end

---@param left SemVer Implementation of Semantic Verisoning standard, version 2.0.0. See https://semver.org/ for specifications.             
---@param right SemVer Implementation of Semantic Verisoning standard, version 2.0.0. See https://semver.org/ for specifications.             
---@return boolean
function SemVer.op_LessThanOrEqual(left, right) end

---@param other SemVer Implementation of Semantic Verisoning standard, version 2.0.0. See https://semver.org/ for specifications.             
---@return number
function SemVer.CompareTo(other) end

---@param left SemVer Implementation of Semantic Verisoning standard, version 2.0.0. See https://semver.org/ for specifications.             
---@param right SemVer Implementation of Semantic Verisoning standard, version 2.0.0. See https://semver.org/ for specifications.             
---@return number
function SemVer.Compare(left, right) end

---@param other SemVer Implementation of Semantic Verisoning standard, version 2.0.0. See https://semver.org/ for specifications.             
---@return boolean
function SemVer.Equals(other) end

---@param obj userdata
---@return boolean
function SemVer.Equals(obj) end

---@return number
function SemVer.GetHashCode() end

---@return userdata
function SemVer.GetType() end


