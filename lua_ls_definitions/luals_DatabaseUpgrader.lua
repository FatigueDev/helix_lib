---@meta DatabaseUpgrader
---@class DatabaseUpgrader: Object
---@field ctor fun(server: ServerMain, worldFilename: string, curVersion: number, destVersion: number): DatabaseUpgrader
---@field PerformUpgrade fun(): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
DatabaseUpgrader = {}
