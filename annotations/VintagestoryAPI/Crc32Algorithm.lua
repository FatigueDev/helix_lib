---@meta

-- Implementation of CRC-32. This class supports several convenient static methods returning the CRC as UInt32. From https://github.com/force-net/Crc32.NET
---@class Crc32Algorithm: HashAlgorithm, IDisposable, HashAlgorithm, ICryptoTransform
---@field HashSize number
---@field Hash number
---@field InputBlockSize number
---@field OutputBlockSize number
---@field CanTransformMultipleBlocks boolean
---@field CanReuseTransform boolean
Crc32Algorithm = {}

---@return Crc32Algorithm
function Crc32Algorithm.ctor() end

-- Computes CRC-32 from multiple buffers.
-- Call this method multiple times to chain multiple buffers.
---@param initial number
---@param input number
---@param offset number
---@param length number
---@return number
function Crc32Algorithm.Append(initial, input, offset, length) end

-- Computes CRC-3C from multiple buffers.
-- Call this method multiple times to chain multiple buffers.
---@param initial number
---@param input number
---@return number
function Crc32Algorithm.Append(initial, input) end

-- Computes CRC-32 from input buffer.
---@param input number
---@param offset number
---@param length number
---@return number
function Crc32Algorithm.Compute(input, offset, length) end

-- Computes CRC-32 from input buffer.
---@param input number
---@return number
function Crc32Algorithm.Compute(input) end

-- Resets internal state of the algorithm. Used internally.
function Crc32Algorithm.Initialize() end

---@return number
function Crc32Algorithm.get_HashSize() end

---@return number
function Crc32Algorithm.get_Hash() end

---@param buffer number
---@return number
function Crc32Algorithm.ComputeHash(buffer) end

---@param source ReadOnlySpan`1
---@param destination Span`1
---@param bytesWritten number
---@return boolean
function Crc32Algorithm.TryComputeHash(source, destination, bytesWritten) end

---@param buffer number
---@param offset number
---@param count number
---@return number
function Crc32Algorithm.ComputeHash(buffer, offset, count) end

---@param inputStream Stream
---@return number
function Crc32Algorithm.ComputeHash(inputStream) end

---@param inputStream Stream
---@param cancellationToken? CancellationToken
---@return Task`1
function Crc32Algorithm.ComputeHashAsync(inputStream, cancellationToken) end

function Crc32Algorithm.Dispose() end

function Crc32Algorithm.Clear() end

---@return number
function Crc32Algorithm.get_InputBlockSize() end

---@return number
function Crc32Algorithm.get_OutputBlockSize() end

---@return boolean
function Crc32Algorithm.get_CanTransformMultipleBlocks() end

---@return boolean
function Crc32Algorithm.get_CanReuseTransform() end

---@param inputBuffer number
---@param inputOffset number
---@param inputCount number
---@param outputBuffer number
---@param outputOffset number
---@return number
function Crc32Algorithm.TransformBlock(inputBuffer, inputOffset, inputCount, outputBuffer, outputOffset) end

---@param inputBuffer number
---@param inputOffset number
---@param inputCount number
---@return number
function Crc32Algorithm.TransformFinalBlock(inputBuffer, inputOffset, inputCount) end

---@return userdata
function Crc32Algorithm.GetType() end

---@return string
function Crc32Algorithm.ToString() end

---@param obj userdata
---@return boolean
function Crc32Algorithm.Equals(obj) end

---@return number
function Crc32Algorithm.GetHashCode() end


