---@meta DatabaseUpgraderToVersion2
---@class DatabaseUpgraderToVersion2: Object
---@field ctor fun(): DatabaseUpgraderToVersion2
---@field Upgrade fun(server: ServerMain, worldFilename: string): boolean
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
DatabaseUpgraderToVersion2 = {}
