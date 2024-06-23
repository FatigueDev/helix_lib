---@meta GuiAPI
---@class GuiAPI: Object
---@field ctor fun(game: ClientMain, capi: ICoreClientAPI): GuiAPI
---@field get_TextTexture fun(): TextTextureUtil
---@field get_Icons fun(): IconUtil
---@field get_Text fun(): TextDrawUtil
---@field get_LoadedGuis fun(): any[]
---@field get_QuadMeshRef fun(): MeshRef
---@field get_WindowBounds fun(): ElementBounds
---@field CreateCompo fun(dialogName: string, bounds: ElementBounds): GuiComposer
---@field DeleteTexture fun(textureid: number): nil
---@field DrawSvg fun(svgAsset: IAsset, intoSurface: ImageSurface, posx: number, posy: number, width: number, height: number, color: Nullable`1): nil
---@overload fun(svgAsset: IAsset, intoSurface: ImageSurface, matrix: Matrix, posx: number, posy: number, width: number, height: number, color: Nullable`1): nil
---@field LoadSvg fun(loc: AssetLocation, textureWidth: number, textureHeight: number, width: number, height: number, color: Nullable`1): LoadedTexture
---@field LoadSvgWithPadding fun(loc: AssetLocation, textureWidth: number, textureHeight: number, padding: number, color: Nullable`1): LoadedTexture
---@field LoadCairoTexture fun(surface: ImageSurface, linearMag: boolean): number
---@field LoadOrUpdateCairoTexture fun(surface: ImageSurface, linearMag: boolean, intoTexture: LoadedTexture&): nil
---@field GetDialogPosition fun(key: string): Vec2i
---@field SetDialogPosition fun(key: string, pos: Vec2i): nil
---@field PlaySound fun(soundname: string, randomizePitch: boolean, volume: Single): nil
---@overload fun(soundname: AssetLocation, randomizePitch: boolean, volume: Single): nil
---@field RequestFocus fun(guiDialog: GuiDialog): nil
---@field TriggerDialogOpened fun(guiDialog: GuiDialog): nil
---@field TriggerDialogClosed fun(guiDialog: GuiDialog): nil
---@field RegisterDialog fun(dialogs: GuiDialog[]): nil
---@field GetDialogBoundsInArea fun(area: EnumDialogArea): any[]
---@field OpenLink fun(href: string): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field TextTexture TextTextureUtil
---@field Icons TextTextureUtil
---@field Text TextTextureUtil
---@field LoadedGuis TextTextureUtil
---@field QuadMeshRef TextTextureUtil
---@field WindowBounds TextTextureUtil
---@field guimgr TextTextureUtil
GuiAPI = {}
