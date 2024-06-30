---@meta

---@class LandClaim
---@field Center BlockPos
---@field SizeXZ number
---@field SizeXYZ number
---@field Areas table
---@field ProtectionLevel number
---@field OwnedByEntityId number
---@field OwnedByPlayerUid string
---@field OwnedByPlayerGroupUid number
---@field LastKnownOwnerName string
---@field Description string
---@field PermittedPlayerGroupIds table Other groups allowed to use this land
---@field PermittedPlayerUids table Other players allowed to use this land
---@field PermittedPlayerLastKnownPlayerName table Other players allowed to use this land, name of the player at the time the privilege was granted
---@field AllowUseEveryone boolean
LandClaim = {}

---@return LandClaim
function LandClaim.ctor() end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function LandClaim.get_Center() end

---@return number
function LandClaim.get_SizeXZ() end

---@return number
function LandClaim.get_SizeXYZ() end

---@param player IPlayer Represents a player
---@param protectionLevel? number
---@return LandClaim
function LandClaim.CreateClaim(player, protectionLevel) end

---@param entity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param protectionLevel? number
---@return LandClaim
function LandClaim.CreateClaim(entity, protectionLevel) end

---@param ownerName string
---@param protectionLevel? number
---@return LandClaim
function LandClaim.CreateClaim(ownerName, protectionLevel) end

---@param player IPlayer Represents a player
---@param claimFlag EnumBlockAccessFlags
---@return EnumPlayerAccessResult
function LandClaim.TestPlayerAccess(player, claimFlag) end

---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function LandClaim.PositionInside(position) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function LandClaim.PositionInside(position) end

---@param cuboidi Cuboidi
---@return EnumClaimError
function LandClaim.AddArea(cuboidi) end

---@param cuboidi Cuboidi
---@return boolean
function LandClaim.Intersects(cuboidi) end

-- Ignores y-values
---@param rec HorRectanglei
---@return boolean
function LandClaim.Intersects2d(rec) end

---@return LandClaim
function LandClaim.Clone() end

---@return userdata
function LandClaim.GetType() end

---@return string
function LandClaim.ToString() end

---@param obj userdata
---@return boolean
function LandClaim.Equals(obj) end

---@return number
function LandClaim.GetHashCode() end


