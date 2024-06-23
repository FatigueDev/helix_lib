---@meta AnimationCache
---@class AnimationCache: Object
---@field ClearCache fun(api: ICoreAPI): nil
---@overload fun(api: ICoreAPI, entity: Entity): nil
---@field InitManager fun(api: ICoreAPI, manager: IAnimationManager, entity: Entity, entityShape: Shape, copyOverAnims: RunningAnimation[], requireJointsForElements: string[]): IAnimationManager
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
AnimationCache = {}
