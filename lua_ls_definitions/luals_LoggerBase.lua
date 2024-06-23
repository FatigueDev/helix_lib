---@meta LoggerBase
---@class LoggerBase: Object
---@field get_TraceLog fun(): boolean
---@field set_TraceLog fun(value: boolean): nil
---@field add_EntryAdded fun(value: LogEntryDelegate): nil
---@field remove_EntryAdded fun(value: LogEntryDelegate): nil
---@field ClearWatchers fun(): nil
---@field Log fun(logType: EnumLogany, format: string, args: table[]): nil
---@overload fun(logType: EnumLogany, message: string): nil
---@field Chat fun(format: string, args: table[]): nil
---@overload fun(message: string): nil
---@field Event fun(format: string, args: table[]): nil
---@overload fun(message: string): nil
---@field StoryEvent fun(format: string, args: table[]): nil
---@overload fun(message: string): nil
---@field Build fun(format: string, args: table[]): nil
---@overload fun(message: string): nil
---@field VerboseDebug fun(format: string, args: table[]): nil
---@overload fun(message: string): nil
---@field Debug fun(format: string, args: table[]): nil
---@overload fun(message: string): nil
---@field Notification fun(format: string, args: table[]): nil
---@overload fun(message: string): nil
---@field Warning fun(format: string, args: table[]): nil
---@overload fun(message: string): nil
---@overload fun(e: Exception): nil
---@field Error fun(format: string, args: table[]): nil
---@overload fun(message: string): nil
---@overload fun(e: Exception): nil
---@field CleanStackTrace fun(stackTrace: string): string
---@field Fatal fun(format: string, args: table[]): nil
---@overload fun(message: string): nil
---@overload fun(e: Exception): nil
---@field Audit fun(format: string, args: table[]): nil
---@overload fun(message: string): nil
---@field Worldgen fun(format: string, args: table[]): nil
---@overload fun(e: Exception): nil
---@overload fun(message: string): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field TraceLog boolean
---@field EntryAdded boolean
---@field SourcePath boolean
LoggerBase = {}
