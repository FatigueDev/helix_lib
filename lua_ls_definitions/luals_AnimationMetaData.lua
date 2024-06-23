---@meta AnimationMetaData
---@class AnimationMetaData: Object
---@field ctor fun(): AnimationMetaData
---@field GetCurrentAnimationSpeed fun(walkspeed: Single): Single
---@field Init fun(): AnimationMetaData
---@field GetCrc32 fun(animcode: string): Unumber
---@field Matches fun(currentActivities: number): boolean
---@field Clone fun(): AnimationMetaData
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field ToBytes fun(writer: BinaryWriter): nil
---@field FromBytes fun(reader: BinaryReader, version: string): AnimationMetaData
---@field GetType fun(): any
---@field ToString fun(): string
AnimationMetaData = {}
