---@meta

---@class ClientMain: GameMain, GameMain, IWorldIntersectionSupplier, IClientWorldAccessor, IWorldAccessor
---@field World IWorldAccessor
---@field Seed number
---@field SavegameIdentifier string
---@field InWorldEllapsedMs number
---@field LiquidSelectable boolean
---@field AmbientParticles boolean
---@field Player IClientPlayer
---@field EntityPlayer EntityPlayer
---@field DefaultSpawnPosition EntityPos
---@field LoadedChunkIndices number
---@field LoadedMapChunkIndices number
---@field CurrentProjectionMatrix number
---@field CurrentModelViewMatrix number
---@field CurrentModelViewMatrixd number
---@field MouseGrabbed boolean
---@field Width number
---@field Height number
---@field BlockAccessor IBlockAccessor
---@field BulkBlockAccessor IBulkBlockAccessor
---@field Rand Random
---@field ElapsedMilliseconds number
---@field EntityTypes table
---@field EntityTypeCodes table
---@field DefaultEntityTrackingRange number
---@field Logger ILogger
---@field AssetManager IAssetManager
---@field Side EnumAppSide
---@field AllOnlinePlayers IPlayer[]
---@field AllPlayers IPlayer[]
---@field SeaLevel number
---@field EntityDebugMode boolean
---@field CollisionTester CollisionTester
---@field Dimensions table
---@field Api ICoreAPI
---@field Claims ILandClaimAPI
---@field MapSize Vec3i
---@field Config ITreeAttribute
---@field blockAccessor IBlockAccessor
---@field Calendar IClientGameCalendar
---@field DialogsOpened number
---@field WaterBlock Block
---@field InteresectionTester AABBIntersectionTest
---@field InWorldStopwatch Stopwatch
---@field MusicEngine SystemMusicEngine
---@field PerspectiveProjectionMat number
---@field PerspectiveViewMat number
---@field DeltaTimeLimiter number
---@field chunkPositionsForRegenTrav HashSet`1
---@field chunkPositionsLock userdata
---@field compactedClientChunks Queue`1
---@field compactSyncLock userdata
---@field ChunkWireframe boolean
---@field BlockEntityWireframe boolean
---@field RegionWireframe boolean
---@field ServerChunkWireframe boolean
---@field EntityWireFrame boolean
---@field AmbientSoundsWireFrame boolean
---@field VertexWireFrame boolean
---@field InsideWireframe boolean
---@field entityBehaviors EntityBehaviorManager
---@field EntityLoadQueueLock userdata
---@field EntityLoadQueue Stack`1
---@field currentGroupid number
---@field ChatHistoryByPlayerGroup table
---@field playerProperties TrackedPlayerProperties
---@field ClassRegistry ClassRegistry
---@field millisecondsToTriggerNewFrame number
---@field DisconnectedIconAfterSeconds number
---@field ItemsByCode table
ClientMain = {}

---@param screenRunningGame GuiScreenRunningGame
---@param platform ClientPlatformAbstract
---@return ClientMain
function ClientMain.ctor(screenRunningGame, platform) end

---@return IWorldAccessor # Important interface to access the game world.
function ClientMain.get_World() end

---@return number
function ClientMain.get_Seed() end

---@return string
function ClientMain.get_SavegameIdentifier() end

---@return number
function ClientMain.get_InWorldEllapsedMs() end

---@return boolean
function ClientMain.get_LiquidSelectable() end

---@return boolean
function ClientMain.get_AmbientParticles() end

---@param value boolean
function ClientMain.set_AmbientParticles(value) end

---@return IClientPlayer # A client side player
function ClientMain.get_Player() end

---@return EntityPlayer
function ClientMain.get_EntityPlayer() end

---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function ClientMain.get_DefaultSpawnPosition() end

---@return number
function ClientMain.get_LoadedChunkIndices() end

---@return number
function ClientMain.get_LoadedMapChunkIndices() end

---@return table
function ClientMain.GetAllChunks() end

function ClientMain.sendRuntimeSettings() end

function ClientMain.Start() end

---@param deltaTime number
function ClientMain.MainGameLoop(deltaTime) end

---@param deltaTime number
function ClientMain.ExecuteMainThreadTasks(deltaTime) end

---@param stage EnumRenderStage
---@param dt number
function ClientMain.TriggerRenderStage(stage, dt) end

---@param filename AssetLocation Defines a complete path to an assets, including it's domain
---@param x number
---@param y number
---@param w number
---@param h number
function ClientMain.Render2DBitmapFile(filename, x, y, w, h) end

---@param texture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param posX number
---@param posY number
---@param z? number
---@param color? Vec4f
function ClientMain.Render2DLoadedTexture(texture, posX, posY, z, color) end

---@param fromTexture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param intoTexture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param x1 number
---@param y1 number
function ClientMain.RenderTextureIntoTexture(fromTexture, intoTexture, x1, y1) end

---@param fromTexture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param sourceX number
---@param sourceY number
---@param sourceWidth number
---@param sourceHeight number
---@param intoTexture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param targetX number
---@param targetY number
---@param alphaTest? number
function ClientMain.RenderTextureIntoTexture(fromTexture, sourceX, sourceY, sourceWidth, sourceHeight, intoTexture, targetX, targetY, alphaTest) end

---@param atlasTextureId number
---@param fromTexture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param sourceX number
---@param sourceY number
---@param sourceWidth number
---@param sourceHeight number
---@param fb FrameBufferRef
---@param targetX number
---@param targetY number
---@param alphaTest? number
function ClientMain.RenderTextureIntoFrameBuffer(atlasTextureId, fromTexture, sourceX, sourceY, sourceWidth, sourceHeight, fb, targetX, targetY, alphaTest) end

---@param textureid number
---@param x1 number
---@param y1 number
---@param width number
---@param height number
---@param z? number
---@param color? Vec4f
function ClientMain.Render2DTexture(textureid, x1, y1, width, height, z, color) end

---@param quadModel MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param textureid number
---@param x1 number
---@param y1 number
---@param width number
---@param height number
---@param z? number
---@param color? Vec4f
function ClientMain.Render2DTexture(quadModel, textureid, x1, y1, width, height, z, color) end

---@param textureid number
---@param transform ModelTransform Used for transformations applied to a block or item model
---@param color? Vec4f
function ClientMain.Render2DTexture(textureid, transform, color) end

---@param textureid number
---@param x1 number
---@param y1 number
---@param width number
---@param height number
---@param z? number
---@param color? Vec4f
function ClientMain.Render2DTextureFlipped(textureid, x1, y1, width, height, z, color) end

---@param zfar number
---@param fov number
function ClientMain.Set3DProjection(zfar, fov) end

function ClientMain.GlMatrixModeModelView() end

function ClientMain.GlMatrixModeProjection() end

---@return number
function ClientMain.get_CurrentProjectionMatrix() end

---@return number
function ClientMain.get_CurrentModelViewMatrix() end

---@return number
function ClientMain.get_CurrentModelViewMatrixd() end

---@param m number
function ClientMain.GlLoadMatrix(m) end

function ClientMain.GlPopMatrix() end

---@param x number
---@param y number
---@param z number
function ClientMain.GlScale(x, y, z) end

---@param angle number
---@param x number
---@param y number
---@param z number
function ClientMain.GlRotate(angle, x, y, z) end

---@param x number
---@param y number
---@param z number
function ClientMain.GlTranslate(x, y, z) end

function ClientMain.GlPushMatrix() end

function ClientMain.GlLoadIdentity() end

---@param left number
---@param right number
---@param bottom number
---@param top number
---@param zNear number
---@param zFar number
function ClientMain.GlOrtho(left, right, bottom, top, zNear, zFar) end

---@param width number
---@param height number
---@param inverseY? boolean
function ClientMain.OrthoMode(width, height, inverseY) end

function ClientMain.PerspectiveMode() end

---@param packet Packet_Client
---@return number
function ClientMain.Serialize(packet) end

---@param packet number
function ClientMain.SendPacket(packet) end

---@param packetClient Packet_Client
function ClientMain.SendPacketClient(packetClient) end

---@param mouseButton number
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param entitySel EntitySelection
---@param useType EnumHandInteract
---@param state EnumHandInteractNw
---@param firstEvent boolean
---@param cancelReason? EnumItemUseCancelReason
function ClientMain.SendHandInteraction(mouseButton, blockSel, entitySel, useType, state, firstEvent, cancelReason) end

---@return boolean
function ClientMain.get_MouseGrabbed() end

---@param value boolean
function ClientMain.set_MouseGrabbed(value) end

---@param button EnumMouseButton
---@param down boolean
---@return boolean
function ClientMain.UpdateMouseButtonState(button, down) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ClientMain.OnMouseMove(args) end

---@param fullPath string
---@return IAsset # Represents a loaded asset from the assets folder
function ClientMain.GetAsset(fullPath) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@return IAsset # Represents a loaded asset from the assets folder
function ClientMain.GetAsset(location) end

---@param itemId number
---@return Item # Represents an in game Item of Vintage Story
function ClientMain.GetItem(itemId) end

---@param blockId number
---@return Block # Basic class for a placeable block
function ClientMain.GetBlock(blockId) end

---@param entityCode AssetLocation Defines a complete path to an assets, including it's domain
---@return EntityProperties
function ClientMain.GetEntityType(entityCode) end

---@return number
function ClientMain.WhiteTexture() end

---@param paused boolean
function ClientMain.PauseGame(paused) end

---@param search string
function ClientMain.FindCmd(search) end

---@return number
function ClientMain.get_Width() end

---@return number
function ClientMain.get_Height() end

---@param action function
---@param code string
function ClientMain.EnqueueMainThreadTask(action, code) end

---@param action function
---@param code string
function ClientMain.EnqueueGameLaunchTask(action, code) end

function ClientMain.Dispose() end

---@param climateColorMap string
---@param seasonColorMap string
---@param color number
---@param posX number
---@param posY number
---@param posZ number
---@param flipRb? boolean
---@return number
function ClientMain.ApplyColorMapOnRgba(climateColorMap, seasonColorMap, color, posX, posY, posZ, flipRb) end

---@param climateMap ColorMap
---@param seasonMap ColorMap
---@param color number
---@param posX number
---@param posY number
---@param posZ number
---@param flipRb? boolean
---@return number
function ClientMain.ApplyColorMapOnRgba(climateMap, seasonMap, color, posX, posY, posZ, flipRb) end

---@param climateColorMap string
---@param seasonColorMap string
---@param color number
---@param rain number
---@param temp number
---@param flipRb? boolean
---@return number
function ClientMain.ApplyColorMapOnRgba(climateColorMap, seasonColorMap, color, rain, temp, flipRb) end

---@param selection EntitySelection
function ClientMain.TryAttackEntity(selection) end

---@param sourcePos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param targetPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ClientMain.CloneBlockDamage(sourcePos, targetPos) end

---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param withTool Nullable`1
---@param damage number
function ClientMain.IncurBlockDamage(blockSelection, withTool, damage) end

---@param strength number
function ClientMain.SetCameraShake(strength) end

---@param strength number
function ClientMain.AddCameraShake(strength) end

---@param amount number
function ClientMain.ReduceCameraShake(amount) end

---@return IBlockAccessor # Provides read/write access to the blocks of a world
function ClientMain.get_BlockAccessor() end

---@return IBulkBlockAccessor # Useful for setting many blocks at once efficiently
function ClientMain.get_BulkBlockAccessor() end

---@return Random
function ClientMain.get_Rand() end

---@return number
function ClientMain.get_ElapsedMilliseconds() end

---@return table
function ClientMain.get_EntityTypes() end

---@return table
function ClientMain.get_EntityTypeCodes() end

---@return number
function ClientMain.get_DefaultEntityTrackingRange() end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function ClientMain.get_Logger() end

---@return IAssetManager # Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
function ClientMain.get_AssetManager() end

---@return EnumAppSide
function ClientMain.get_Side() end

---@return IPlayer[] # Represents a player
function ClientMain.get_AllOnlinePlayers() end

---@return IPlayer[] # Represents a player
function ClientMain.get_AllPlayers() end

---@return number
function ClientMain.get_SeaLevel() end

---@return boolean
function ClientMain.get_EntityDebugMode() end

---@param value boolean
function ClientMain.set_EntityDebugMode(value) end

---@return CollisionTester
function ClientMain.get_CollisionTester() end

---@return table
function ClientMain.get_Dimensions() end

---@param dimId number
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return IMiniDimension # Provides read/write access to the blocks of a movable mini-dimension. 
function ClientMain.GetOrCreateDimension(dimId, pos) end

---@param origin Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param dimension IMiniDimension&
---@return boolean
function ClientMain.TryGetMiniDimension(origin, dimension) end

---@param dimId number
function ClientMain.SetBlocksPreviewDimension(dimId) end

---@return ICoreAPI # Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function ClientMain.get_Api() end

---@return ILandClaimAPI
function ClientMain.get_Claims() end

---@param itemstack ItemStack
---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param velocity? Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Entity # The basic class for all entities in the game
function ClientMain.SpawnItemEntity(itemstack, position, velocity) end

---@param entity Entity The basic class for all entities in the game
function ClientMain.SpawnEntity(entity) end

---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param horRange number
---@param vertRange number
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return IPlayer[] # Represents a player
function ClientMain.GetPlayersAround(position, horRange, vertRange, matches) end

---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param horRange number
---@param vertRange number
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return Entity # The basic class for all entities in the game
function ClientMain.GetNearestEntity(position, horRange, vertRange, matches) end

---@param entityId number
---@return Entity # The basic class for all entities in the game
function ClientMain.GetEntityById(entityId) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function ClientMain.IsValidPos(pos) end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ClientMain.get_MapSize() end

---@return ITreeAttribute # Represents a List of nestable Attributes
function ClientMain.get_Config() end

---@param configBytes number
function ClientMain.TrySetWorldConfig(configBytes) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Cuboidf[] # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function ClientMain.GetBlockIntersectionBoxes(pos) end

---@return IBlockAccessor # Provides read/write access to the blocks of a world
function ClientMain.get_blockAccessor() end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function ClientMain.GetBlock(pos) end

---@param OnGameTick function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function ClientMain.RegisterGameTickListener(OnGameTick, millisecondInterval, initialDelayOffsetMs) end

---@param OnGameTick function
---@param errorHandler function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function ClientMain.RegisterGameTickListener(OnGameTick, errorHandler, millisecondInterval, initialDelayOffsetMs) end

---@param OnTimePassed function
---@param millisecondDelay number
---@return number
function ClientMain.RegisterCallback(OnTimePassed, millisecondDelay) end

---@param OnTimePassed function
---@param millisecondDelay number
---@param permittedWhilePaused boolean
---@return number
function ClientMain.RegisterCallback(OnTimePassed, millisecondDelay, permittedWhilePaused) end

---@param OnGameTick function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function ClientMain.RegisterGameTickListener(OnGameTick, pos, millisecondInterval, initialDelayOffsetMs) end

---@param OnTimePassed function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param millisecondDelay number
---@return number
function ClientMain.RegisterCallback(OnTimePassed, pos, millisecondDelay) end

---@param OnTimePassed function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param millisecondDelay number
---@return number
function ClientMain.RegisterCallbackUnique(OnTimePassed, pos, millisecondDelay) end

---@param listenerId number
function ClientMain.UnregisterCallback(listenerId) end

---@param listenerId number
function ClientMain.UnregisterGameTickListener(listenerId) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ClientMain.TriggerNeighbourBlocksUpdate(pos) end

---@param quantity number
---@param color number
---@param minPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param maxPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param minVelocity Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param maxVelocity Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param lifeLength number
---@param gravityEffect number
---@param scale? number
---@param model? EnumParticleModel
---@param dualCallByPlayer? IPlayer Represents a player
function ClientMain.SpawnParticles(quantity, color, minPos, maxPos, minVelocity, maxVelocity, lifeLength, gravityEffect, scale, model, dualCallByPlayer) end

---@param particlePropertiesProvider IParticlePropertiesProvider Represents a provider of particle properties to be used when generating a particle
---@param dualCallByPlayer? IPlayer Represents a player
function ClientMain.SpawnParticles(particlePropertiesProvider, dualCallByPlayer) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param itemstack ItemStack
---@param radius number
---@param quantity number
---@param scale? number
---@param dualCallByPlayer? IPlayer Represents a player
---@param velocity? Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ClientMain.SpawnCubeParticles(pos, itemstack, radius, quantity, scale, dualCallByPlayer, velocity) end

---@param blockpos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param radius number
---@param quantity number
---@param scale? number
---@param dualCallByPlayer? IPlayer Represents a player
---@param velocity? Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ClientMain.SpawnCubeParticles(blockpos, pos, radius, quantity, scale, dualCallByPlayer, velocity) end

---@param clientid number
---@param privilege string
---@return boolean
function ClientMain.PlayerHasPrivilege(clientid, privilege) end

---@param message string
function ClientMain.ShowChatMessage(message) end

---@param message string
function ClientMain.SendMessageToClient(message) end

---@param data number
function ClientMain.SendArbitraryPacket(data) end

---@param x number
---@param y number
---@param z number
---@param packetId number
---@param data? number
function ClientMain.SendBlockEntityPacket(x, y, z, packetId, data) end

---@param entityId number
---@param packetId number
---@param data? number
function ClientMain.SendEntityPacket(entityId, packetId, data) end

---@param x number
---@param y number
---@param z number
---@return IPlayer # Represents a player
function ClientMain.NearestPlayer(x, y, z) end

---@param playerUid string
---@return IPlayer # Represents a player
function ClientMain.PlayerByUid(playerUid) end

---@param block Block Basic class for a placeable block
---@param posX number
---@param posY number
---@param posZ number
---@return ColorMapData
function ClientMain.GetColorMapData(block, posX, posY, posZ) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function ClientMain.ResolveSoundPath(location) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param randomizePitch? boolean
---@param volume? number
function ClientMain.PlaySound(location, randomizePitch, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param atPlayer IPlayer Represents a player
---@param ignorePlayerUid? IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
---@param volume? number
function ClientMain.PlaySoundAt(location, atPlayer, ignorePlayerUid, randomizePitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param atEntity Entity The basic class for all entities in the game
---@param dualCallByPlayer? IPlayer Represents a player
---@param pitch? number
---@param range? number
---@param volume? number
function ClientMain.PlaySoundAt(location, atEntity, dualCallByPlayer, pitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param posx number
---@param posy number
---@param posz number
---@param dualCallByPlayer? IPlayer Represents a player
---@param pitch? number
---@param range? number
---@param volume? number
function ClientMain.PlaySoundAt(location, posx, posy, posz, dualCallByPlayer, pitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param posx number
---@param posy number
---@param posz number
---@param dualCallByPlayer IPlayer Represents a player
---@param soundType EnumSoundType
---@param pitch? number
---@param range? number
---@param volume? number
function ClientMain.PlaySoundAt(location, posx, posy, posz, dualCallByPlayer, soundType, pitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param atEntity Entity The basic class for all entities in the game
---@param ignorePlayerUid? IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
---@param volume? number
function ClientMain.PlaySoundAt(location, atEntity, ignorePlayerUid, randomizePitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param x number
---@param y number
---@param z number
---@param ignorePlayerUid? IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
---@param volume? number
function ClientMain.PlaySoundAt(location, x, y, z, ignorePlayerUid, randomizePitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param x number
---@param y number
---@param z number
---@param ignorePlayerUid? IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
---@param volume? number
---@return number
function ClientMain.PlaySoundAtAndGetDuration(location, x, y, z, ignorePlayerUid, randomizePitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param atPlayer IPlayer Represents a player
---@param pitch number
---@param range? number
---@param volume? number
function ClientMain.PlaySoundFor(location, atPlayer, pitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param forPlayer IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
---@param volume? number
function ClientMain.PlaySoundFor(location, forPlayer, randomizePitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param x number
---@param y number
---@param z number
---@param volume number
---@param randomizePitch? boolean
---@param range? number
---@return number
function ClientMain.PlaySoundAt(location, x, y, z, volume, randomizePitch, range) end

---@param sound SoundParams The sound paramaters used for loading sounds on the client side
---@return ILoadedSound # Represents a loaded game sound 
function ClientMain.LoadSound(sound) end

---@return IClientGameCalendar
function ClientMain.get_Calendar() end

---@param dialogs GuiDialog[]
function ClientMain.RegisterDialog(dialogs) end

---@param dialog GuiDialog
function ClientMain.UnregisterDialog(dialog) end

---@return number
function ClientMain.get_DialogsOpened() end

---@param player IPlayer Represents a player
---@param slotId number
---@param blocks table
---@param colors table
---@param mode? EnumHighlightBlocksMode
---@param shape? EnumHighlightShape
---@param scale? number
function ClientMain.HighlightBlocks(player, slotId, blocks, colors, mode, shape, scale) end

---@param player IPlayer Represents a player
---@param slotId number
---@param blocks table
---@param mode? EnumHighlightBlocksMode
---@param shape? EnumHighlightShape
function ClientMain.HighlightBlocks(player, slotId, blocks, mode, shape) end

---@param forEntity Entity The basic class for all entities in the game
function ClientMain.RemoveEntityRenderer(forEntity) end

---@return Block # Basic class for a placeable block
function ClientMain.get_WaterBlock() end

---@param value Block Basic class for a placeable block
function ClientMain.set_WaterBlock(value) end

---@return number
function ClientMain.RandomPitch() end

---@param code string
---@return RecipeRegistryBase
function ClientMain.GetRecipeRegistry(code) end

---@param recipeRegistryCode string
---@return T
function ClientMain.RegisterRecipeRegistry(recipeRegistryCode) end

---@return AABBIntersectionTest
function ClientMain.get_InteresectionTester() end

---@param supplier IWorldIntersectionSupplier
---@param fromPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param toPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function ClientMain.RayTraceForSelection(supplier, fromPos, toPos, blockSelection, entitySelection, bfilter, efilter) end

---@param fromPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param toPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function ClientMain.RayTraceForSelection(fromPos, toPos, blockSelection, entitySelection, bfilter, efilter) end

---@param fromPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param pitch number
---@param yaw number
---@param range number
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function ClientMain.RayTraceForSelection(fromPos, pitch, yaw, range, blockSelection, entitySelection, bfilter, efilter) end

---@param ray Ray
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function ClientMain.RayTraceForSelection(ray, blockSelection, entitySelection, bfilter, efilter) end

---@param supplier IWorldIntersectionSupplier
---@param ray Ray
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function ClientMain.RayTraceForSelection(supplier, ray, blockSelection, entitySelection, bfilter, efilter) end

---@param player IPlayer Represents a player
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function ClientMain.RayTraceForSelection(player, blockSelection, entitySelection, bfilter, efilter) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param pitch number
---@param yaw number
---@param pickingRange number
---@return Ray
function ClientMain.GetPickingRay(pos, pitch, yaw, pickingRange) end

---@param fromPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param toPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Ray
function ClientMain.GetPickingRay(fromPos, toPos) end

---@param basePos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param collisionBoxes Cuboidf[] Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return Entity[] # The basic class for all entities in the game
function ClientMain.GetIntersectingEntities(basePos, collisionBoxes, matches) end

---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param horRange number
---@param vertRange number
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return Entity[] # The basic class for all entities in the game
function ClientMain.GetEntitiesAround(position, horRange, vertRange, matches) end

---@param startPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param endPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return Entity[] # The basic class for all entities in the game
function ClientMain.GetEntitiesInsideCuboid(startPos, endPos, matches) end

---@param itemCode AssetLocation Defines a complete path to an assets, including it's domain
---@return Item # Represents an in game Item of Vintage Story
function ClientMain.GetItem(itemCode) end

---@param blockCode AssetLocation Defines a complete path to an assets, including it's domain
---@return Block # Basic class for a placeable block
function ClientMain.GetBlock(blockCode) end

---@param wildcard AssetLocation Defines a complete path to an assets, including it's domain
---@return Block[] # Basic class for a placeable block
function ClientMain.SearchBlocks(wildcard) end

---@param wildcard AssetLocation Defines a complete path to an assets, including it's domain
---@return Item[] # Represents an in game Item of Vintage Story
function ClientMain.SearchItems(wildcard) end

---@param synchronize boolean
---@param relight boolean
---@return ICachingBlockAccessor
function ClientMain.GetCachingBlockAccessor(synchronize, relight) end

---@return IBlockAccessor # Provides read/write access to the blocks of a world
function ClientMain.GetLockFreeBlockAccessor() end

---@param synchronize boolean
---@param relight boolean
---@param strict boolean
---@param debug? boolean
---@return IBlockAccessor # Provides read/write access to the blocks of a world
function ClientMain.GetBlockAccessor(synchronize, relight, strict, debug) end

---@param synchronize boolean
---@param relight boolean
---@param debug? boolean
---@return IBulkBlockAccessor # Useful for setting many blocks at once efficiently
function ClientMain.GetBlockAccessorBulkUpdate(synchronize, relight, debug) end

---@param synchronize boolean
---@param debug? boolean
---@return IBulkBlockAccessor # Useful for setting many blocks at once efficiently
function ClientMain.GetBlockAccessorBulkMinimalUpdate(synchronize, debug) end

---@param synchronize boolean
---@param relight boolean
---@param debug? boolean
---@return IBlockAccessorRevertable # Provides read/write access to the blocks of a world. 
function ClientMain.GetBlockAccessorRevertable(synchronize, relight, debug) end

---@param synchronize boolean
---@param relight boolean
---@return IBlockAccessorPrefetch # Useful for when you have to scan multiple times over the same set of blocks
function ClientMain.GetBlockAccessorPrefetch(synchronize, relight) end

---@param synchronize boolean
---@param debug? boolean
---@return IBulkBlockAccessor # Useful for setting many blocks at once efficiently
function ClientMain.GetBlockAccessorMapChunkLoading(synchronize, debug) end

---@return userdata
function ClientMain.GetType() end

---@return string
function ClientMain.ToString() end

---@param obj userdata
---@return boolean
function ClientMain.Equals(obj) end

---@return number
function ClientMain.GetHashCode() end


