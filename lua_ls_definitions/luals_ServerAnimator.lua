---@meta ServerAnimator
---@class ServerAnimator: ClientAnimator
---@field ctor fun(walkSpeedSupplier: WalkSpeedSupplierDelegate, animations: Animation[], rootElements: ShapeElement[], jointsById: table<any, any>, onAnimationStoppedListener: any`1, loadFully: boolean): ServerAnimator
---@overload fun(walkSpeedSupplier: WalkSpeedSupplierDelegate, rootPoses: any[], animations: Animation[], rootElements: ShapeElement[], jointsById: table<any, any>, onAnimationStoppedListener: any`1, loadFully: boolean): ServerAnimator
---@field CreateForEntity fun(entity: Entity, rootPoses: any[], animations: Animation[], rootElements: ShapeElement[], jointsById: table<any, any>): ServerAnimator
---@overload fun(entity: Entity, animations: Animation[], rootElements: ShapeElement[], jointsById: table<any, any>): ServerAnimator
---@field GetPosebyName fun(name: string, stringComparison: stringComparison): ElementPose
---@field OnFrame fun(activeAnimationsByAnimCode: table<any, any>, dt: Single): nil
---@field get_CalculateMatrices fun(): boolean
---@field set_CalculateMatrices fun(value: boolean): nil
---@field get_Matrices4x3 fun(): Single[]
---@field get_ActiveAnimationCount fun(): number
---@field get_RunningAnimations fun(): RunningAnimation[]
---@field GetAnimationState fun(code: string): RunningAnimation
---@field DumpCurrentState fun(): string
---@field GetAttachmentPointPose fun(code: string): AttachmentPointAndPose
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field CalculateMatrices boolean
---@field Matrices4x3 boolean
---@field ActiveAnimationCount boolean
---@field RunningAnimations boolean
---@field loadFully boolean
---@field rootElements boolean
---@field RootPoses boolean
---@field jointsById boolean
---@field anims boolean
---@field TransformationMatrices4x3 boolean
---@field TransformationMatricesDefaultPose4x3 boolean
---@field AttachmentPointByCode boolean
---@field CurAnims boolean
ServerAnimator = {}
