---@meta SQLiteDbConnectionv2
---@class SQLiteDbConnectionv2: SQLiteDBConnection
---@field ctor fun(logger: ILogger): SQLiteDbConnectionv2
---@field get_DBTypeCode fun(): string
---@field OnOpened fun(): nil
---@field UpgradeToWriteAccess fun(): nil
---@field IntegrityCheck fun(): boolean
---@field QuantityChunks fun(): number
---@field GetAllChunks fun(tablename: string): any[]
---@overload fun(): any[]
---@field GetAllMapChunks fun(): any[]
---@field GetAllMapRegions fun(): any[]
---@field GetPlayerData fun(playeruid: string): number[]
---@field SetPlayerData fun(playeruid: string, data: number[]): nil
---@field GetChunks fun(chunkpositions: any[]): any[]
---@field GetChunk fun(position: UInt64): number[]
---@field GetMapChunk fun(position: UInt64): number[]
---@field GetMapRegion fun(position: UInt64): number[]
---@field ChunkExists fun(position: UInt64): boolean
---@field MapChunkExists fun(position: UInt64): boolean
---@field MapRegionExists fun(position: UInt64): boolean
---@field ChunkExists fun(position: UInt64, tablename: string): boolean
---@overload fun(position: UInt64, tablename: string): number[]
---@field DeleteChunks fun(chunkpositions: any[]): nil
---@field DeleteMapChunks fun(mapchunkpositions: any[]): nil
---@field DeleteMapRegions fun(mapchunkregions: any[]): nil
---@field DeleteChunks fun(chunkpositions: any[], tablename: string): nil
---@field DeleteChunk fun(position: UInt64, tablename: string): nil
---@field SetChunks fun(chunks: any[]): nil
---@field SetMapChunks fun(mapchunks: any[]): nil
---@field SetMapRegions fun(mapregions: any[]): nil
---@field GetGameData fun(): number[]
---@field StoreGameData fun(data: number[]): nil
---@field QuickCorrectSaveGameVersionTest fun(): boolean
---@field CreateBackup fun(backupFilename: string): nil
---@field Close fun(): nil
---@field Dispose fun(): nil
---@field get_IsReadOnly fun(): boolean
---@field OpenOrCreate fun(filename: string, errorMessage: string&, requireWriteAccess: boolean, corruptionProtection: boolean, doIntegrityCheck: boolean): boolean
---@field Vacuum fun(): nil
---@field DoIntegrityCheck fun(sqliteConn: SqliteConnection, logResults: boolean): boolean
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field DBTypeCode string
---@field IsReadOnly string
---@field transactionLock string
SQLiteDbConnectionv2 = {}