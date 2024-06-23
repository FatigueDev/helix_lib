---@meta EnumRenderStage
---@enum EnumRenderStage
EnumRenderStage = {
	Before = 0,
	Opaque = 1,
	OIT = 2,
	AfterOIT = 3,
	ShadowFar = 4,
	ShadowFarDone = 5,
	ShadowNear = 6,
	ShadowNearDone = 7,
	AfterPostProcessing = 8,
	AfterBlit = 9,
	Ortho = 10,
	AfterFinalComposition = 11,
	Done = 12
}
