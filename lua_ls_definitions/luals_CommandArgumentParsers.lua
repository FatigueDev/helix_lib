---@meta CommandArgumentParsers
---@class CommandArgumentParsers: Object
---@field ctor fun(api: ICoreAPI): CommandArgumentParsers
---@field Unparsed fun(argname: string, validRange: string[]): UnparsedArg
---@field IntDirection fun(argName: string): DirectionArgParser`1
---@field Entities fun(argName: string): EntitiesArgParser
---@field OptionalEntities fun(argName: string): EntitiesArgParser
---@field EntityType fun(argName: string): EntityanyArgParser
---@field IntRange fun(argName: string, min: number, max: number): IntArgParser
---@field OptionalIntRange fun(argName: string, min: number, max: number, defaultValue: number): IntArgParser
---@field OptionalInt fun(argName: string, defaultValue: number): IntArgParser
---@field Int fun(argName: string): IntArgParser
---@field OptionalLong fun(argName: string, defaultValue: number): LongArgParser
---@field Long fun(argName: string): LongArgParser
---@field Bool fun(argName: string, trueAlias: string): BoolArgParser
---@field OptionalBool fun(argName: string, trueAlias: string): BoolArgParser
---@field OptionalDouble fun(argName: string, defaultvalue: Double): DoubleArgParser
---@field Float fun(argName: string): FloatArgParser
---@field OptionalFloat fun(argName: string, defaultvalue: Single): FloatArgParser
---@field Double fun(argName: string): DoubleArgParser
---@field DoubleRange fun(argName: string, min: Double, max: Double): DoubleArgParser
---@field OnlinePlayer fun(argName: string): OnlinePlayerArgParser
---@field PlayerUids fun(argName: string): PlayersArgParser
---@field OptionalPlayerUids fun(argName: string): PlayersArgParser
---@field PlayerRole fun(argName: string): PlayerRoleArgParser
---@field OptionalPlayerRole fun(argName: string): PlayerRoleArgParser
---@field Privilege fun(privilege: string): PrivilegeArgParser
---@field OptionalPrivilege fun(privilege: string): PrivilegeArgParser
---@field Word fun(argName: string): WordArgParser
---@field OptionalWord fun(argName: string): WordArgParser
---@field OptionalWordRange fun(argName: string, words: string[]): WordRangeArgParser
---@field Word fun(argName: string, wordSuggestions: string[]): WordArgParser
---@field Color fun(argName: string): ColorArgParser
---@field OptionalColor fun(argName: string): ColorArgParser
---@field All fun(argName: string): stringArgParser
---@field OptionalAll fun(argName: string): stringArgParser
---@field WordRange fun(argName: string, words: string[]): WordRangeArgParser
---@field WorldPosition fun(argName: string): WorldPositionArgParser
---@field WorldPosition2D fun(argName: string): WorldPosition2DArgParser
---@field Vec3i fun(argName: string): Vec3iArgParser
---@field OptionalVec3i fun(argName: string): Vec3iArgParser
---@field Item fun(argName: string): CollectibleArgParser
---@field Block fun(argName: string): CollectibleArgParser
---@field OptionalWorldPosition fun(argName: string): WorldPositionArgParser
---@field DateTime fun(argName: string): DatetimeArgParser
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
CommandArgumentParsers = {}