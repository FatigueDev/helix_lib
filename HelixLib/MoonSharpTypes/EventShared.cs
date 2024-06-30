namespace HelixLib.Types
{
    [Flags]
    public enum EventShared
    {
        ChunkDirty = 0,
        MapRegionLoaded = 1 << 0,
        MapRegionUnloaded = 1 << 1,
        MatchesGridRecipe = 1 << 2,
        OnEntityDeath = 1 << 3,
        OnEntityDespawn = 1 << 4,
        OnEntityLoaded = 1 << 5,
        OnEntitySpawn = 1 << 6,
        OnGetClimate = 1 << 7,
        OnGetWindSpeed = 1 << 8,
        OnTestBlockAccess = 1 << 9
    }
}