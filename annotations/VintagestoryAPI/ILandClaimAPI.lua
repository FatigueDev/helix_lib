---@meta

---@class ILandClaimAPI
---@field All table List of all claims on the server. Same as WorldManager.SaveGame.Claims.
ILandClaimAPI = {}


---@return table
function ILandClaimAPI.get_All() end

-- Checks with the permission system if given player has use or place/break permissions on supplied position. Returns always true when called on the client!
---@param player IPlayer Represents a player
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param accessFlag EnumBlockAccessFlags
---@return EnumWorldAccessResponse
function ILandClaimAPI.TestAccess(player, pos, accessFlag) end

-- Same as TestAccess but also sends an error message to the player and executes a MarkDirty() event the block. Returns always true when called on the client!
---@param player IPlayer Represents a player
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param accessFlag EnumBlockAccessFlags
---@return boolean
function ILandClaimAPI.TryAccess(player, pos, accessFlag) end

-- Get all claims registered at this position
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return LandClaim[]
function ILandClaimAPI.Get(pos) end

-- Add a new claim. 
---@param claim LandClaim
function ILandClaimAPI.Add(claim) end

-- Remove a claim. Returns false if no such claim was registered
---@param claim LandClaim
---@return boolean
function ILandClaimAPI.Remove(claim) end


