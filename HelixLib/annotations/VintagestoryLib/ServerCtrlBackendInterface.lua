---@meta

---@class ServerCtrlBackendInterface
---@field IsLoading boolean
---@field webClient VSWebClient
ServerCtrlBackendInterface = {}

---@return ServerCtrlBackendInterface
function ServerCtrlBackendInterface.ctor() end

---@param onComplete OnSrvActionComplete`1
function ServerCtrlBackendInterface.Start(onComplete) end

---@param onComplete OnSrvActionComplete`1
function ServerCtrlBackendInterface.Stop(onComplete) end

---@param onComplete OnSrvActionComplete`1
function ServerCtrlBackendInterface.ForceStop(onComplete) end

---@param onComplete OnSrvActionComplete`1
function ServerCtrlBackendInterface.DeleteSaves(onComplete) end

---@param onComplete OnSrvActionComplete`1
function ServerCtrlBackendInterface.DeleteAll(onComplete) end

---@param onComplete OnSrvActionComplete`1
function ServerCtrlBackendInterface.GetLog(onComplete) end

---@param onComplete OnActionComplete`1
function ServerCtrlBackendInterface.GetGameVersions(onComplete) end

---@param onComplete OnActionComplete`1
function ServerCtrlBackendInterface.GetVSHostingUnsupportedGameVersions(onComplete) end

---@param onComplete OnSrvActionComplete`1
function ServerCtrlBackendInterface.RequestDownload(onComplete) end

---@param onComplete OnSrvActionComplete`1
function ServerCtrlBackendInterface.GetStatus(onComplete) end

---@param onComplete OnSrvActionComplete`1
function ServerCtrlBackendInterface.GetConfig(onComplete) end

---@param onComplete OnSrvActionComplete`1
---@param serverconfig string
---@param worldconfig string
function ServerCtrlBackendInterface.SetConfig(onComplete, serverconfig, worldconfig) end

---@param region string
---@param onComplete OnSrvActionComplete`1
function ServerCtrlBackendInterface.SelectRegion(region, onComplete) end

---@param version string
---@param onComplete OnSrvActionComplete`1
function ServerCtrlBackendInterface.SelectVersion(version, onComplete) end

---@param mod string
---@param onComplete OnSrvActionComplete`1
function ServerCtrlBackendInterface.DeleteMod(mod, onComplete) end

---@param onComplete OnSrvActionComplete`1
function ServerCtrlBackendInterface.DeleteAllMods(onComplete) end

---@return userdata
function ServerCtrlBackendInterface.GetType() end

---@return string
function ServerCtrlBackendInterface.ToString() end

---@param obj userdata
---@return boolean
function ServerCtrlBackendInterface.Equals(obj) end

---@return number
function ServerCtrlBackendInterface.GetHashCode() end


