---@meta

---@enum EnumServerRunPhase
EnumServerRunPhase = {
	Start = 0,
	Initialization = 1,
	Configuration = 2,
	LoadAssets = 3,
	AssetsReady = 3,
	AssetsFinalize = 4,
	LoadGamePre = 5,
	ModsAndConfigReady = 5,
	LoadGame = 6,
	GameReady = 6,
	WorldReady = 7,
	RunGame = 8,
	Shutdown = 9,
	Exit = 10,
	Standby = -1
}
