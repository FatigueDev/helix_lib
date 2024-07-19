---@meta

---@class EnumAppSideExtensions
EnumAppSideExtensions = {}


-- Am I the server?
---@param side EnumAppSide
---@return boolean
function EnumAppSideExtensions.IsServer(side) end

-- Am I the client?
---@param side EnumAppSide
---@return boolean
function EnumAppSideExtensions.IsClient(side) end

-- Am I a universal?
---@param side EnumAppSide
---@return boolean
function EnumAppSideExtensions.IsUniversal(side) end

-- Am I this side?
---@param side EnumAppSide
---@param other EnumAppSide
---@return boolean
function EnumAppSideExtensions.Is(side, other) end

---@return userdata
function EnumAppSideExtensions.GetType() end

---@return string
function EnumAppSideExtensions.ToString() end

---@param obj userdata
---@return boolean
function EnumAppSideExtensions.Equals(obj) end

---@return number
function EnumAppSideExtensions.GetHashCode() end


