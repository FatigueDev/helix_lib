---@meta ICoreClientAPI
---@class ICoreClientAPI
---@field get_LinkProtocols fun(): table<any, any>
---@field get_TagConverters fun(): table<any, any>
---@field get_Settings fun(): ISettings
---@field get_Forms fun(): IXPlatformInterface
---@field get_MacroManager fun(): IMacroManager
---@field get_ElapsedMilliseconds fun(): Int64
---@field get_InWorldEllapsedMilliseconds fun(): Int64
---@field get_IsShuttingDown fun(): boolean
---@field get_IsGamePaused fun(): boolean
---@field get_IsSinglePlayer fun(): boolean
---@field get_OpenedToLan fun(): boolean
---@field get_HideGuis fun(): boolean
---@field get_PlayerReadyFired fun(): boolean
---@field get_Ambient fun(): IAmbientManager
---@field get_Event fun(): IClientEventAPI
---@field get_Render fun(): IRenderAPI
---@field get_Gui fun(): IGuiAPI
---@field get_Input fun(): IInputAPI
---@field get_TesselatorManager fun(): ITesselatorManager
---@field get_Tesselator fun(): ITesselatorAPI
---@field get_BlockTextureAtlas fun(): IBlockTextureAtlasAPI
---@field get_ItemTextureAtlas fun(): IItemTextureAtlasAPI
---@field get_EntityTextureAtlas fun(): ITextureAtlasAPI
---@field get_ColorPreset fun(): IColorPresets
---@field get_Shader fun(): IShaderAPI
---@field get_Network fun(): IClientNetworkAPI
---@field get_World fun(): IClientWorldAccessor
---@field get_OpenedGuis fun(): any[]
---@field RegisterCommand fun(chatcommand: ClientChatCommand): boolean
---@overload fun(command: string, descriptionMsg: string, syntaxMsg: string, handler: ClientChatCommandDelegate): boolean
---@field RegisterEntityRendererClass fun(className: string, rendererType: any): nil
---@field RegisterLinkProtocol fun(protocolname: string, onLinkClicked: any): nil
---@field ShowChatMessage fun(message: string): nil
---@field TriggerIngameDiscovery fun(sender: table, errorCode: string, text: string): nil
---@field TriggerIngameError fun(sender: table, errorCode: string, text: string): nil
---@field TriggerChatMessage fun(message: string): nil
---@field SendChatMessage fun(message: string, groupId: number, data: string): nil
---@overload fun(message: string, data: string): nil
---@field StartTrack fun(soundLocation: AssetLocation, priority: Single, soundType: EnumSoundany, onLoaded: any): MusicTrack
---@field get_CurrentMusicTrack fun(): IMusicTrack
---@field PauseGame fun(paused: boolean): nil
---@field LinkProtocols table<any, any>
---@field TagConverters table<any, any>
---@field Settings table<any, any>
---@field Forms table<any, any>
---@field MacroManager table<any, any>
---@field ElapsedMilliseconds table<any, any>
---@field InWorldEllapsedMilliseconds table<any, any>
---@field IsShuttingDown table<any, any>
---@field IsGamePaused table<any, any>
---@field IsSinglePlayer table<any, any>
---@field OpenedToLan table<any, any>
---@field HideGuis table<any, any>
---@field PlayerReadyFired table<any, any>
---@field Ambient table<any, any>
---@field Event table<any, any>
---@field Render table<any, any>
---@field Gui table<any, any>
---@field Input table<any, any>
---@field TesselatorManager table<any, any>
---@field Tesselator table<any, any>
---@field BlockTextureAtlas table<any, any>
---@field ItemTextureAtlas table<any, any>
---@field EntityTextureAtlas table<any, any>
---@field ColorPreset table<any, any>
---@field Shader table<any, any>
---@field Network table<any, any>
---@field World table<any, any>
---@field OpenedGuis table<any, any>
---@field CurrentMusicTrack table<any, any>
ICoreClientAPI = {}
