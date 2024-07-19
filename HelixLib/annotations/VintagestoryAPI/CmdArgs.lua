---@meta

-- The arguments from a client or sever command
---@class CmdArgs
---@field Item string
---@field Length number Amount of arguments passed
CmdArgs = {}

---@return CmdArgs
function CmdArgs.ctor() end
---@param joinedargs string
---@return CmdArgs
function CmdArgs.ctor(joinedargs) end
---@param args string
---@return CmdArgs
function CmdArgs.ctor(args) end

---@param joinedargs string
function CmdArgs.Push(joinedargs) end

---@param index number
---@return string
function CmdArgs.get_Item(index) end

---@param index number
---@param value string
function CmdArgs.set_Item(index, value) end

---@return number
function CmdArgs.get_Length() end

-- Returns all remaining arguments as single merged string, concatenated with spaces
---@return string
function CmdArgs.PopAll() end

-- Returns the first char of the first argument
---@param defaultValue? Nullable`1
---@return Nullable`1
function CmdArgs.PeekChar(defaultValue) end

-- Remove the first character from the first argument and returns it
---@param defaultValue? Nullable`1
---@return Nullable`1
function CmdArgs.PopChar(defaultValue) end

-- Removes the first argument and returns it, scans until it encounters a white space
---@param defaultValue? string
---@return string
function CmdArgs.PopWord(defaultValue) end

-- Removes the first argument and returns it
---@param defaultValue? string
---@return string
function CmdArgs.PeekWord(defaultValue) end

---@param endChar string
---@return string
function CmdArgs.PopUntil(endChar) end

---@param blockOpenChar string
---@param blockCloseChar string
---@param parseErrorMsg string
---@return string
function CmdArgs.PopCodeBlock(blockOpenChar, blockCloseChar, parseErrorMsg) end

-- Adds an arg to the beginning
---@param arg string
function CmdArgs.PushSingle(arg) end

-- Adds an arg to the end
---@param arg string
function CmdArgs.AppendSingle(arg) end

---@param defaultValue? T
---@return T
function CmdArgs.PopEnum(defaultValue) end

-- Tries to retrieve arg at given index as int, or null if not enough arguments or not an integer
---@param defaultValue? Nullable`1
---@return Nullable`1
function CmdArgs.PopInt(defaultValue) end

-- Tries to retrieve arg at given index as long, or null if not enough arguments or not a long
---@param defaultValue? Nullable`1
---@return Nullable`1
function CmdArgs.PopLong(defaultValue) end

-- Tries to retrieve arg at given index as boolean, or null if not enough arguments or not an integer
-- 'true', 'yes' and '1' will all be interpreted as true.  Parameter trueAlias (with default value 'on') allows one additional word to be used to signify true.  Anything else will return false.
---@param defaultValue? Nullable`1
---@param trueAlias? string
---@return Nullable`1
function CmdArgs.PopBool(defaultValue, trueAlias) end

-- Tries to retrieve arg at given index as int, or null if not enough arguments or not an integer
---@param defaultValue? Nullable`1
---@return Nullable`1
function CmdArgs.PopDouble(defaultValue) end

-- Tries to retrieve arg at given index as float, or null if not enough arguments or not a float
---@param defaultValue? Nullable`1
---@return Nullable`1
function CmdArgs.PopFloat(defaultValue) end

-- Tries to retrieve 3 int coordinates from the next 3 arguments
---@param defaultValue? Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function CmdArgs.PopVec3i(defaultValue) end

---@param defaultValue? Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function CmdArgs.PopVec3d(defaultValue) end

-- Retrieves a player position with following syntax:
-- [coord] [coord] [coord]
-- whereas 
-- [coord] may be ~[decimal]  or =[decimal] or [decimal]
-- ~ denotes a position relative to the player
-- = denotes an absolute position
-- no prefix denots a position relative to the map middle
---@param playerPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param mapMiddle Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function CmdArgs.PopFlexiblePos(playerPos, mapMiddle) end

-- Retrieves a player position with following syntax:
-- [coord] [coord] [coord]
-- whereas 
-- [coord] may be ~[decimal]  or =[decimal] or [decimal]
-- ~ denotes a position relative to the player
-- = denotes an absolute position
-- no prefix denots a position relative to the map middle
---@param playerPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param mapMiddle Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function CmdArgs.PopFlexiblePos2D(playerPos, mapMiddle) end

---@return CmdArgs # The arguments from a client or sever command
function CmdArgs.Clone() end

---@return userdata
function CmdArgs.GetType() end

---@return string
function CmdArgs.ToString() end

---@param obj userdata
---@return boolean
function CmdArgs.Equals(obj) end

---@return number
function CmdArgs.GetHashCode() end


