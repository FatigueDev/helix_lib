---@meta

-- Used for blocks (e.g. tallgrass and flowers) where the drawnHeight is set in attributes
---@class IWithDrawnHeight
---@field drawnHeight number Measured in texture pixels based on our standard pixel density for 32x32 textures.  So a value of 32 would be one block high; the typical value of 48 is the full height of tallgrass or a flowerTall because those use 48x48 pixel textures
IWithDrawnHeight = {}


---@return number
function IWithDrawnHeight.get_drawnHeight() end

---@param value number
function IWithDrawnHeight.set_drawnHeight(value) end


