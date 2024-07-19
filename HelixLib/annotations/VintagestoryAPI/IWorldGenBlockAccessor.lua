---@meta

---@class IWorldGenBlockAccessor:  IBlockAccessor
---@field WorldgenWorldAccessor IServerWorldAccessor Returns a special IWorldAccessor which wraps the standard one with one difference: it returns this IWorldGenBlockAccessor as its BlockAccessor, in place of the general BlockAccessor for this world
IWorldGenBlockAccessor = {}


---@return IServerWorldAccessor # The world accessor implemented by the server
function IWorldGenBlockAccessor.get_WorldgenWorldAccessor() end

-- Tells the server to produce a block update at this given position once the chunk is fully generated and world ticking has begun
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function IWorldGenBlockAccessor.ScheduleBlockUpdate(pos) end

-- Tells the server to relight this position once RunScheduledBlockLightUpdates() is called
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param oldBlockid number
---@param newBlockId number
function IWorldGenBlockAccessor.ScheduleBlockLightUpdate(pos, oldBlockid, newBlockId) end

-- This will run all scheduled block light updates at once. Should be called after all lighting has been completed.
function IWorldGenBlockAccessor.RunScheduledBlockLightUpdates() end

-- Adds given initialized entity to the world. Requires you to set the Pos and ServerPos fields.
---@param entity Entity The basic class for all entities in the game
function IWorldGenBlockAccessor.AddEntity(entity) end

function IWorldGenBlockAccessor.BeginColumn() end


