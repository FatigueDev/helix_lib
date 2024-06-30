---@meta

---@class CommandArgumentParsers
CommandArgumentParsers = {}

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@return CommandArgumentParsers
function CommandArgumentParsers.ctor(api) end

---@param argname string
---@param validRange string
---@return UnparsedArg
function CommandArgumentParsers.Unparsed(argname, validRange) end

---@param argName string
---@return DirectionArgParser`1
function CommandArgumentParsers.IntDirection(argName) end

---@param argName string
---@return EntitiesArgParser
function CommandArgumentParsers.Entities(argName) end

-- Defaults to caller entity
---@param argName string
---@return EntitiesArgParser
function CommandArgumentParsers.OptionalEntities(argName) end

---@param argName string
---@return EntityTypeArgParser
function CommandArgumentParsers.EntityType(argName) end

---@param argName string
---@param min number
---@param max number
---@return IntArgParser
function CommandArgumentParsers.IntRange(argName, min, max) end

---@param argName string
---@param min number
---@param max number
---@param defaultValue? number
---@return IntArgParser
function CommandArgumentParsers.OptionalIntRange(argName, min, max, defaultValue) end

---@param argName string
---@param defaultValue? number
---@return IntArgParser
function CommandArgumentParsers.OptionalInt(argName, defaultValue) end

---@param argName string
---@return IntArgParser
function CommandArgumentParsers.Int(argName) end

---@param argName string
---@param defaultValue? number
---@return LongArgParser
function CommandArgumentParsers.OptionalLong(argName, defaultValue) end

---@param argName string
---@return LongArgParser
function CommandArgumentParsers.Long(argName) end

---@param argName string
---@param trueAlias? string
---@return BoolArgParser
function CommandArgumentParsers.Bool(argName, trueAlias) end

---@param argName string
---@param trueAlias? string
---@return BoolArgParser
function CommandArgumentParsers.OptionalBool(argName, trueAlias) end

---@param argName string
---@param defaultvalue? number
---@return number
function CommandArgumentParsers.OptionalDouble(argName, defaultvalue) end

---@param argName string
---@return FloatArgParser
function CommandArgumentParsers.Float(argName) end

---@param argName string
---@param defaultvalue? number
---@return FloatArgParser
function CommandArgumentParsers.OptionalFloat(argName, defaultvalue) end

---@param argName string
---@return number
function CommandArgumentParsers.Double(argName) end

---@param argName string
---@param min number
---@param max number
---@return number
function CommandArgumentParsers.DoubleRange(argName, min, max) end

-- A currently online player
---@param argName string
---@return OnlinePlayerArgParser
function CommandArgumentParsers.OnlinePlayer(argName) end

-- All selected players
---@param argName string
---@return PlayersArgParser
function CommandArgumentParsers.PlayerUids(argName) end

-- All selected players
---@param argName string
---@return PlayersArgParser
function CommandArgumentParsers.OptionalPlayerUids(argName) end

-- Parses IPlayerRole, only works on Serverside since it needs the Serverconfig
---@param argName string
---@return PlayerRoleArgParser
function CommandArgumentParsers.PlayerRole(argName) end

-- Parses IPlayerRole, only works on Serverside since it needs the Serverconfig
---@param argName string
---@return PlayerRoleArgParser
function CommandArgumentParsers.OptionalPlayerRole(argName) end

---@param privilege string
---@return PrivilegeArgParser
function CommandArgumentParsers.Privilege(privilege) end

---@param privilege string
---@return PrivilegeArgParser
function CommandArgumentParsers.OptionalPrivilege(privilege) end

---@param argName string
---@return WordArgParser
function CommandArgumentParsers.Word(argName) end

---@param argName string
---@return WordArgParser
function CommandArgumentParsers.OptionalWord(argName) end

---@param argName string
---@param words string
---@return WordRangeArgParser
function CommandArgumentParsers.OptionalWordRange(argName, words) end

---@param argName string
---@param wordSuggestions string
---@return WordArgParser
function CommandArgumentParsers.Word(argName, wordSuggestions) end

-- Parses a string which is either a color name or a hex value as a Color
---@param argName string
---@return ColorArgParser
function CommandArgumentParsers.Color(argName) end

-- Parses a string which is either a color name or a hex value as a Color
---@param argName string
---@return ColorArgParser
function CommandArgumentParsers.OptionalColor(argName) end

-- All remaining arguments together
---@param argName string
---@return string
function CommandArgumentParsers.All(argName) end

-- All remaining arguments together
---@param argName string
---@return string
function CommandArgumentParsers.OptionalAll(argName) end

---@param argName string
---@param words string
---@return WordRangeArgParser
function CommandArgumentParsers.WordRange(argName, words) end

---@param argName string
---@return WorldPositionArgParser
function CommandArgumentParsers.WorldPosition(argName) end

---@param argName string
---@return WorldPosition2DArgParser
function CommandArgumentParsers.WorldPosition2D(argName) end

---@param argName string
---@return Vec3iArgParser
function CommandArgumentParsers.Vec3i(argName) end

---@param argName string
---@return Vec3iArgParser
function CommandArgumentParsers.OptionalVec3i(argName) end

---@param argName string
---@return CollectibleArgParser
function CommandArgumentParsers.Item(argName) end

---@param argName string
---@return CollectibleArgParser
function CommandArgumentParsers.Block(argName) end

-- Defaults to caller position
---@param argName string
---@return WorldPositionArgParser
function CommandArgumentParsers.OptionalWorldPosition(argName) end

-- Currently only supports time spans (i.e. now + time)
---@param argName string
---@return DatetimeArgParser
function CommandArgumentParsers.DateTime(argName) end

---@return userdata
function CommandArgumentParsers.GetType() end

---@return string
function CommandArgumentParsers.ToString() end

---@param obj userdata
---@return boolean
function CommandArgumentParsers.Equals(obj) end

---@return number
function CommandArgumentParsers.GetHashCode() end


