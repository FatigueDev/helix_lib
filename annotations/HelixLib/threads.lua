---@meta HELIX

---@class Threads
Threads = {}

---@param name string The name associated with the thread to search for
---@return thread
function Threads.Get(name) end

---@param name string The name associated with the thread to search for
---@return thread[]
function Threads.GetMany(name) end

---@param thread thread The thread returned by coroutine.create()
---@param name string The name associated with this thread for indexing
---@param status string The status of the thread using coroutine.status(co)
function Threads.Add(thread, name, status) end