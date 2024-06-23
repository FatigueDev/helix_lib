---@meta AnimationUtil
---@class AnimationUtil: Object
---@field ctor fun(api: ICoreAPI, position: Vec3d): AnimationUtil
---@field get_RenderOrder fun(): Double
---@field get_RenderRange fun(): number
---@field InitializeShapeAndAnimator fun(cacheDictKey: string, shape: Shape, texSource: ITexPositionSource, rotation: Vec3f, meshdata: MeshData&): nil
---@field InitializeAnimator fun(cacheDictKey: string, meshdata: MeshData, shape: Shape, rotation: Vec3f, renderStage: EnumRenderStage): nil
---@overload fun(cacheDictKey: string, meshref: MeshRef, blockShape: Shape, rotation: Vec3f, renderStage: EnumRenderStage): nil
---@overload fun(cacheDictKey: string, meshref: MultiTextureMeshRef, blockShape: Shape, rotation: Vec3f, renderStage: EnumRenderStage): nil
---@field InitializeAnimatorServer fun(cacheDictKey: string, blockShape: Shape): nil
---@field AnimationTickServer fun(deltaTime: Single): nil
---@field OnRenderFrame fun(deltaTime: Single, stage: EnumRenderStage): nil
---@field StartAnimation fun(meta: AnimationMetaData): boolean
---@field StopAnimation fun(code: string): nil
---@field GetAnimator fun(api: ICoreAPI, cacheDictKey: string, shape: Shape): AnimatorBase
---@field CacheInvTransforms fun(elements: ShapeElement[]): nil
---@field Dispose fun(): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field RenderOrder Double
---@field RenderRange Double
---@field animator Double
---@field renderer Double
---@field activeAnimationsByAnimCode Double
AnimationUtil = {}
