---@meta

---@class ZstdNative
---@field Version Version
---@field ZstdCCtx nil
---@field ZstdDCtx nil
---@field ZstdCParameter nil
ZstdNative = {}


---@return ZstdCCtx*
function ZstdNative.ZSTD_createCCtx() end

---@param cctx ZstdCCtx*
---@param param ZstdCParameter
---@param value number
---@return UIntPtr
function ZstdNative.ZSTD_CCtx_setParameter(cctx, param, value) end

---@param srcSize UIntPtr
---@return UIntPtr
function ZstdNative.ZSTD_compressBound(srcSize) end

---@param src Void*
---@param srcSize UIntPtr
---@return number
function ZstdNative.ZSTD_getFrameContentSize(src, srcSize) end

---@param cctx ZstdCCtx*
---@param dst Void*
---@param dstCapacity UIntPtr
---@param src Void*
---@param srcSize UIntPtr
---@param compressionLevel number
---@return UIntPtr
function ZstdNative.ZSTD_compressCCtx(cctx, dst, dstCapacity, src, srcSize, compressionLevel) end

---@return ZstdDCtx*
function ZstdNative.ZSTD_createDCtx() end

---@param dctx ZstdDCtx*
---@param dst Void*
---@param dstCapacity UIntPtr
---@param src Void*
---@param srcSize UIntPtr
---@return UIntPtr
function ZstdNative.ZSTD_decompressDCtx(dctx, dst, dstCapacity, src, srcSize) end

---@return number
function ZstdNative.ZSTD_versionNumber() end

---@return Version
function ZstdNative.get_Version() end

---@return userdata
function ZstdNative.GetType() end

---@return string
function ZstdNative.ToString() end

---@param obj userdata
---@return boolean
function ZstdNative.Equals(obj) end

---@return number
function ZstdNative.GetHashCode() end


