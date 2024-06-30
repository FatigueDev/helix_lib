---@meta

---@class VintageStorySocket: Socket, IDisposable, Socket
---@field Disposed boolean
---@field Available number
---@field LocalEndPoint EndPoint
---@field RemoteEndPoint EndPoint
---@field Handle IntPtr
---@field SafeHandle SafeSocketHandle
---@field Blocking boolean
---@field UseOnlyOverlappedIO boolean
---@field Connected boolean
---@field AddressFamily AddressFamily
---@field SocketType SocketType
---@field ProtocolType ProtocolType
---@field IsBound boolean
---@field ExclusiveAddressUse boolean
---@field ReceiveBufferSize number
---@field SendBufferSize number
---@field ReceiveTimeout number
---@field SendTimeout number
---@field LingerState LingerOption
---@field NoDelay boolean
---@field Ttl number
---@field DontFragment boolean
---@field MulticastLoopback boolean
---@field EnableBroadcast boolean
---@field DualMode boolean
VintageStorySocket = {}

---@param socketType SocketType
---@param protocolType ProtocolType
---@return VintageStorySocket
function VintageStorySocket.ctor(socketType, protocolType) end
---@param addressFamily AddressFamily
---@param socketType SocketType
---@param protocolType ProtocolType
---@return VintageStorySocket
function VintageStorySocket.ctor(addressFamily, socketType, protocolType) end

---@return boolean
function VintageStorySocket.get_Disposed() end

---@return number
function VintageStorySocket.get_Available() end

---@return EndPoint
function VintageStorySocket.get_LocalEndPoint() end

---@return EndPoint
function VintageStorySocket.get_RemoteEndPoint() end

---@return IntPtr
function VintageStorySocket.get_Handle() end

---@return SafeSocketHandle
function VintageStorySocket.get_SafeHandle() end

---@return boolean
function VintageStorySocket.get_Blocking() end

---@param value boolean
function VintageStorySocket.set_Blocking(value) end

---@return boolean
function VintageStorySocket.get_UseOnlyOverlappedIO() end

---@param value boolean
function VintageStorySocket.set_UseOnlyOverlappedIO(value) end

---@return boolean
function VintageStorySocket.get_Connected() end

---@return AddressFamily
function VintageStorySocket.get_AddressFamily() end

---@return SocketType
function VintageStorySocket.get_SocketType() end

---@return ProtocolType
function VintageStorySocket.get_ProtocolType() end

---@return boolean
function VintageStorySocket.get_IsBound() end

---@return boolean
function VintageStorySocket.get_ExclusiveAddressUse() end

---@param value boolean
function VintageStorySocket.set_ExclusiveAddressUse(value) end

---@return number
function VintageStorySocket.get_ReceiveBufferSize() end

---@param value number
function VintageStorySocket.set_ReceiveBufferSize(value) end

---@return number
function VintageStorySocket.get_SendBufferSize() end

---@param value number
function VintageStorySocket.set_SendBufferSize(value) end

---@return number
function VintageStorySocket.get_ReceiveTimeout() end

---@param value number
function VintageStorySocket.set_ReceiveTimeout(value) end

---@return number
function VintageStorySocket.get_SendTimeout() end

---@param value number
function VintageStorySocket.set_SendTimeout(value) end

---@return LingerOption
function VintageStorySocket.get_LingerState() end

---@param value LingerOption
function VintageStorySocket.set_LingerState(value) end

---@return boolean
function VintageStorySocket.get_NoDelay() end

---@param value boolean
function VintageStorySocket.set_NoDelay(value) end

---@return number
function VintageStorySocket.get_Ttl() end

---@param value number
function VintageStorySocket.set_Ttl(value) end

---@return boolean
function VintageStorySocket.get_DontFragment() end

---@param value boolean
function VintageStorySocket.set_DontFragment(value) end

---@return boolean
function VintageStorySocket.get_MulticastLoopback() end

---@param value boolean
function VintageStorySocket.set_MulticastLoopback(value) end

---@return boolean
function VintageStorySocket.get_EnableBroadcast() end

---@param value boolean
function VintageStorySocket.set_EnableBroadcast(value) end

---@return boolean
function VintageStorySocket.get_DualMode() end

---@param value boolean
function VintageStorySocket.set_DualMode(value) end

---@param localEP EndPoint
function VintageStorySocket.Bind(localEP) end

---@param remoteEP EndPoint
function VintageStorySocket.Connect(remoteEP) end

---@param address IPAddress
---@param port number
function VintageStorySocket.Connect(address, port) end

---@param host string
---@param port number
function VintageStorySocket.Connect(host, port) end

---@param addresses IPAddress[]
---@param port number
function VintageStorySocket.Connect(addresses, port) end

function VintageStorySocket.Close() end

---@param timeout number
function VintageStorySocket.Close(timeout) end

function VintageStorySocket.Listen() end

---@param backlog number
function VintageStorySocket.Listen(backlog) end

---@return Socket
function VintageStorySocket.Accept() end

---@param buffer number
---@param size number
---@param socketFlags SocketFlags
---@return number
function VintageStorySocket.Send(buffer, size, socketFlags) end

---@param buffer number
---@param socketFlags SocketFlags
---@return number
function VintageStorySocket.Send(buffer, socketFlags) end

---@param buffer number
---@return number
function VintageStorySocket.Send(buffer) end

---@param buffers IList`1
---@return number
function VintageStorySocket.Send(buffers) end

---@param buffers IList`1
---@param socketFlags SocketFlags
---@return number
function VintageStorySocket.Send(buffers, socketFlags) end

---@param buffers IList`1
---@param socketFlags SocketFlags
---@param errorCode SocketError&
---@return number
function VintageStorySocket.Send(buffers, socketFlags, errorCode) end

---@param buffer number
---@param offset number
---@param size number
---@param socketFlags SocketFlags
---@return number
function VintageStorySocket.Send(buffer, offset, size, socketFlags) end

---@param buffer number
---@param offset number
---@param size number
---@param socketFlags SocketFlags
---@param errorCode SocketError&
---@return number
function VintageStorySocket.Send(buffer, offset, size, socketFlags, errorCode) end

---@param buffer ReadOnlySpan`1
---@return number
function VintageStorySocket.Send(buffer) end

---@param buffer ReadOnlySpan`1
---@param socketFlags SocketFlags
---@return number
function VintageStorySocket.Send(buffer, socketFlags) end

---@param buffer ReadOnlySpan`1
---@param socketFlags SocketFlags
---@param errorCode SocketError&
---@return number
function VintageStorySocket.Send(buffer, socketFlags, errorCode) end

---@param fileName string
function VintageStorySocket.SendFile(fileName) end

---@param fileName string
---@param preBuffer number
---@param postBuffer number
---@param flags TransmitFileOptions
function VintageStorySocket.SendFile(fileName, preBuffer, postBuffer, flags) end

---@param fileName string
---@param preBuffer ReadOnlySpan`1
---@param postBuffer ReadOnlySpan`1
---@param flags TransmitFileOptions
function VintageStorySocket.SendFile(fileName, preBuffer, postBuffer, flags) end

---@param buffer number
---@param offset number
---@param size number
---@param socketFlags SocketFlags
---@param remoteEP EndPoint
---@return number
function VintageStorySocket.SendTo(buffer, offset, size, socketFlags, remoteEP) end

---@param buffer number
---@param size number
---@param socketFlags SocketFlags
---@param remoteEP EndPoint
---@return number
function VintageStorySocket.SendTo(buffer, size, socketFlags, remoteEP) end

---@param buffer number
---@param socketFlags SocketFlags
---@param remoteEP EndPoint
---@return number
function VintageStorySocket.SendTo(buffer, socketFlags, remoteEP) end

---@param buffer number
---@param remoteEP EndPoint
---@return number
function VintageStorySocket.SendTo(buffer, remoteEP) end

---@param buffer ReadOnlySpan`1
---@param remoteEP EndPoint
---@return number
function VintageStorySocket.SendTo(buffer, remoteEP) end

---@param buffer ReadOnlySpan`1
---@param socketFlags SocketFlags
---@param remoteEP EndPoint
---@return number
function VintageStorySocket.SendTo(buffer, socketFlags, remoteEP) end

---@param buffer number
---@param size number
---@param socketFlags SocketFlags
---@return number
function VintageStorySocket.Receive(buffer, size, socketFlags) end

---@param buffer number
---@param socketFlags SocketFlags
---@return number
function VintageStorySocket.Receive(buffer, socketFlags) end

---@param buffer number
---@return number
function VintageStorySocket.Receive(buffer) end

---@param buffer number
---@param offset number
---@param size number
---@param socketFlags SocketFlags
---@return number
function VintageStorySocket.Receive(buffer, offset, size, socketFlags) end

---@param buffer number
---@param offset number
---@param size number
---@param socketFlags SocketFlags
---@param errorCode SocketError&
---@return number
function VintageStorySocket.Receive(buffer, offset, size, socketFlags, errorCode) end

---@param buffer Span`1
---@return number
function VintageStorySocket.Receive(buffer) end

---@param buffer Span`1
---@param socketFlags SocketFlags
---@return number
function VintageStorySocket.Receive(buffer, socketFlags) end

---@param buffer Span`1
---@param socketFlags SocketFlags
---@param errorCode SocketError&
---@return number
function VintageStorySocket.Receive(buffer, socketFlags, errorCode) end

---@param buffers IList`1
---@return number
function VintageStorySocket.Receive(buffers) end

---@param buffers IList`1
---@param socketFlags SocketFlags
---@return number
function VintageStorySocket.Receive(buffers, socketFlags) end

---@param buffers IList`1
---@param socketFlags SocketFlags
---@param errorCode SocketError&
---@return number
function VintageStorySocket.Receive(buffers, socketFlags, errorCode) end

---@param buffer number
---@param offset number
---@param size number
---@param socketFlags SocketFlags&
---@param remoteEP EndPoint&
---@param ipPacketInformation IPPacketInformation&
---@return number
function VintageStorySocket.ReceiveMessageFrom(buffer, offset, size, socketFlags, remoteEP, ipPacketInformation) end

---@param buffer Span`1
---@param socketFlags SocketFlags&
---@param remoteEP EndPoint&
---@param ipPacketInformation IPPacketInformation&
---@return number
function VintageStorySocket.ReceiveMessageFrom(buffer, socketFlags, remoteEP, ipPacketInformation) end

---@param buffer number
---@param offset number
---@param size number
---@param socketFlags SocketFlags
---@param remoteEP EndPoint&
---@return number
function VintageStorySocket.ReceiveFrom(buffer, offset, size, socketFlags, remoteEP) end

---@param buffer number
---@param size number
---@param socketFlags SocketFlags
---@param remoteEP EndPoint&
---@return number
function VintageStorySocket.ReceiveFrom(buffer, size, socketFlags, remoteEP) end

---@param buffer number
---@param socketFlags SocketFlags
---@param remoteEP EndPoint&
---@return number
function VintageStorySocket.ReceiveFrom(buffer, socketFlags, remoteEP) end

---@param buffer number
---@param remoteEP EndPoint&
---@return number
function VintageStorySocket.ReceiveFrom(buffer, remoteEP) end

---@param buffer Span`1
---@param remoteEP EndPoint&
---@return number
function VintageStorySocket.ReceiveFrom(buffer, remoteEP) end

---@param buffer Span`1
---@param socketFlags SocketFlags
---@param remoteEP EndPoint&
---@return number
function VintageStorySocket.ReceiveFrom(buffer, socketFlags, remoteEP) end

---@param ioControlCode number
---@param optionInValue number
---@param optionOutValue number
---@return number
function VintageStorySocket.IOControl(ioControlCode, optionInValue, optionOutValue) end

---@param ioControlCode IOControlCode
---@param optionInValue number
---@param optionOutValue number
---@return number
function VintageStorySocket.IOControl(ioControlCode, optionInValue, optionOutValue) end

---@param optionLevel SocketOptionLevel
---@param optionName SocketOptionName
---@param optionValue number
function VintageStorySocket.SetSocketOption(optionLevel, optionName, optionValue) end

---@param optionLevel SocketOptionLevel
---@param optionName SocketOptionName
---@param optionValue number
function VintageStorySocket.SetSocketOption(optionLevel, optionName, optionValue) end

---@param optionLevel SocketOptionLevel
---@param optionName SocketOptionName
---@param optionValue boolean
function VintageStorySocket.SetSocketOption(optionLevel, optionName, optionValue) end

---@param optionLevel SocketOptionLevel
---@param optionName SocketOptionName
---@param optionValue userdata
function VintageStorySocket.SetSocketOption(optionLevel, optionName, optionValue) end

---@param optionLevel number
---@param optionName number
---@param optionValue ReadOnlySpan`1
function VintageStorySocket.SetRawSocketOption(optionLevel, optionName, optionValue) end

---@param optionLevel SocketOptionLevel
---@param optionName SocketOptionName
---@return userdata
function VintageStorySocket.GetSocketOption(optionLevel, optionName) end

---@param optionLevel SocketOptionLevel
---@param optionName SocketOptionName
---@param optionValue number
function VintageStorySocket.GetSocketOption(optionLevel, optionName, optionValue) end

---@param optionLevel SocketOptionLevel
---@param optionName SocketOptionName
---@param optionLength number
---@return number
function VintageStorySocket.GetSocketOption(optionLevel, optionName, optionLength) end

---@param optionLevel number
---@param optionName number
---@param optionValue Span`1
---@return number
function VintageStorySocket.GetRawSocketOption(optionLevel, optionName, optionValue) end

---@param level IPProtectionLevel
function VintageStorySocket.SetIPProtectionLevel(level) end

---@param microSeconds number
---@param mode SelectMode
---@return boolean
function VintageStorySocket.Poll(microSeconds, mode) end

---@param timeout TimeSpan
---@param mode SelectMode
---@return boolean
function VintageStorySocket.Poll(timeout, mode) end

---@param remoteEP EndPoint
---@param callback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginConnect(remoteEP, callback, state) end

---@param host string
---@param port number
---@param requestCallback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginConnect(host, port, requestCallback, state) end

---@param address IPAddress
---@param port number
---@param requestCallback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginConnect(address, port, requestCallback, state) end

---@param addresses IPAddress[]
---@param port number
---@param requestCallback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginConnect(addresses, port, requestCallback, state) end

---@param asyncResult IAsyncResult
function VintageStorySocket.EndConnect(asyncResult) end

---@param reuseSocket boolean
---@param callback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginDisconnect(reuseSocket, callback, state) end

---@param reuseSocket boolean
function VintageStorySocket.Disconnect(reuseSocket) end

---@param asyncResult IAsyncResult
function VintageStorySocket.EndDisconnect(asyncResult) end

---@param buffer number
---@param offset number
---@param size number
---@param socketFlags SocketFlags
---@param callback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginSend(buffer, offset, size, socketFlags, callback, state) end

---@param buffer number
---@param offset number
---@param size number
---@param socketFlags SocketFlags
---@param errorCode SocketError&
---@param callback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginSend(buffer, offset, size, socketFlags, errorCode, callback, state) end

---@param buffers IList`1
---@param socketFlags SocketFlags
---@param callback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginSend(buffers, socketFlags, callback, state) end

---@param buffers IList`1
---@param socketFlags SocketFlags
---@param errorCode SocketError&
---@param callback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginSend(buffers, socketFlags, errorCode, callback, state) end

---@param asyncResult IAsyncResult
---@return number
function VintageStorySocket.EndSend(asyncResult) end

---@param asyncResult IAsyncResult
---@param errorCode SocketError&
---@return number
function VintageStorySocket.EndSend(asyncResult, errorCode) end

---@param fileName string
---@param callback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginSendFile(fileName, callback, state) end

---@param fileName string
---@param preBuffer number
---@param postBuffer number
---@param flags TransmitFileOptions
---@param callback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginSendFile(fileName, preBuffer, postBuffer, flags, callback, state) end

---@param asyncResult IAsyncResult
function VintageStorySocket.EndSendFile(asyncResult) end

---@param buffer number
---@param offset number
---@param size number
---@param socketFlags SocketFlags
---@param remoteEP EndPoint
---@param callback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginSendTo(buffer, offset, size, socketFlags, remoteEP, callback, state) end

---@param asyncResult IAsyncResult
---@return number
function VintageStorySocket.EndSendTo(asyncResult) end

---@param buffer number
---@param offset number
---@param size number
---@param socketFlags SocketFlags
---@param callback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginReceive(buffer, offset, size, socketFlags, callback, state) end

---@param buffer number
---@param offset number
---@param size number
---@param socketFlags SocketFlags
---@param errorCode SocketError&
---@param callback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginReceive(buffer, offset, size, socketFlags, errorCode, callback, state) end

---@param buffers IList`1
---@param socketFlags SocketFlags
---@param callback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginReceive(buffers, socketFlags, callback, state) end

---@param buffers IList`1
---@param socketFlags SocketFlags
---@param errorCode SocketError&
---@param callback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginReceive(buffers, socketFlags, errorCode, callback, state) end

---@param asyncResult IAsyncResult
---@return number
function VintageStorySocket.EndReceive(asyncResult) end

---@param asyncResult IAsyncResult
---@param errorCode SocketError&
---@return number
function VintageStorySocket.EndReceive(asyncResult, errorCode) end

---@param buffer number
---@param offset number
---@param size number
---@param socketFlags SocketFlags
---@param remoteEP EndPoint&
---@param callback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginReceiveMessageFrom(buffer, offset, size, socketFlags, remoteEP, callback, state) end

---@param asyncResult IAsyncResult
---@param socketFlags SocketFlags&
---@param endPoint EndPoint&
---@param ipPacketInformation IPPacketInformation&
---@return number
function VintageStorySocket.EndReceiveMessageFrom(asyncResult, socketFlags, endPoint, ipPacketInformation) end

---@param buffer number
---@param offset number
---@param size number
---@param socketFlags SocketFlags
---@param remoteEP EndPoint&
---@param callback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginReceiveFrom(buffer, offset, size, socketFlags, remoteEP, callback, state) end

---@param asyncResult IAsyncResult
---@param endPoint EndPoint&
---@return number
function VintageStorySocket.EndReceiveFrom(asyncResult, endPoint) end

---@param callback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginAccept(callback, state) end

---@param asyncResult IAsyncResult
---@return Socket
function VintageStorySocket.EndAccept(asyncResult) end

---@param receiveSize number
---@param callback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginAccept(receiveSize, callback, state) end

---@param acceptSocket Socket
---@param receiveSize number
---@param callback AsyncCallback
---@param state userdata
---@return IAsyncResult
function VintageStorySocket.BeginAccept(acceptSocket, receiveSize, callback, state) end

---@param buffer number
---@param asyncResult IAsyncResult
---@return Socket
function VintageStorySocket.EndAccept(buffer, asyncResult) end

---@param buffer number
---@param bytesTransferred number
---@param asyncResult IAsyncResult
---@return Socket
function VintageStorySocket.EndAccept(buffer, bytesTransferred, asyncResult) end

---@param how SocketShutdown
function VintageStorySocket.Shutdown(how) end

---@param e SocketAsyncEventArgs
---@return boolean
function VintageStorySocket.AcceptAsync(e) end

---@param e SocketAsyncEventArgs
---@return boolean
function VintageStorySocket.ConnectAsync(e) end

---@param e SocketAsyncEventArgs
---@return boolean
function VintageStorySocket.DisconnectAsync(e) end

---@param e SocketAsyncEventArgs
---@return boolean
function VintageStorySocket.ReceiveAsync(e) end

---@param e SocketAsyncEventArgs
---@return boolean
function VintageStorySocket.ReceiveFromAsync(e) end

---@param e SocketAsyncEventArgs
---@return boolean
function VintageStorySocket.ReceiveMessageFromAsync(e) end

---@param e SocketAsyncEventArgs
---@return boolean
function VintageStorySocket.SendAsync(e) end

---@param e SocketAsyncEventArgs
---@return boolean
function VintageStorySocket.SendPacketsAsync(e) end

---@param e SocketAsyncEventArgs
---@return boolean
function VintageStorySocket.SendToAsync(e) end

function VintageStorySocket.Dispose() end

---@return Task`1
function VintageStorySocket.AcceptAsync() end

---@param cancellationToken CancellationToken
---@return ValueTask`1
function VintageStorySocket.AcceptAsync(cancellationToken) end

---@param acceptSocket Socket
---@return Task`1
function VintageStorySocket.AcceptAsync(acceptSocket) end

---@param acceptSocket Socket
---@param cancellationToken CancellationToken
---@return ValueTask`1
function VintageStorySocket.AcceptAsync(acceptSocket, cancellationToken) end

---@param remoteEP EndPoint
---@return Task
function VintageStorySocket.ConnectAsync(remoteEP) end

---@param remoteEP EndPoint
---@param cancellationToken CancellationToken
---@return ValueTask
function VintageStorySocket.ConnectAsync(remoteEP, cancellationToken) end

---@param address IPAddress
---@param port number
---@return Task
function VintageStorySocket.ConnectAsync(address, port) end

---@param address IPAddress
---@param port number
---@param cancellationToken CancellationToken
---@return ValueTask
function VintageStorySocket.ConnectAsync(address, port, cancellationToken) end

---@param addresses IPAddress[]
---@param port number
---@return Task
function VintageStorySocket.ConnectAsync(addresses, port) end

---@param addresses IPAddress[]
---@param port number
---@param cancellationToken CancellationToken
---@return ValueTask
function VintageStorySocket.ConnectAsync(addresses, port, cancellationToken) end

---@param host string
---@param port number
---@return Task
function VintageStorySocket.ConnectAsync(host, port) end

---@param host string
---@param port number
---@param cancellationToken CancellationToken
---@return ValueTask
function VintageStorySocket.ConnectAsync(host, port, cancellationToken) end

---@param reuseSocket boolean
---@param cancellationToken? CancellationToken
---@return ValueTask
function VintageStorySocket.DisconnectAsync(reuseSocket, cancellationToken) end

---@param buffer ArraySegment`1
---@return Task`1
function VintageStorySocket.ReceiveAsync(buffer) end

---@param buffer ArraySegment`1
---@param socketFlags SocketFlags
---@return Task`1
function VintageStorySocket.ReceiveAsync(buffer, socketFlags) end

---@param buffer Memory`1
---@param cancellationToken? CancellationToken
---@return ValueTask`1
function VintageStorySocket.ReceiveAsync(buffer, cancellationToken) end

---@param buffer Memory`1
---@param socketFlags SocketFlags
---@param cancellationToken? CancellationToken
---@return ValueTask`1
function VintageStorySocket.ReceiveAsync(buffer, socketFlags, cancellationToken) end

---@param buffers IList`1
---@return Task`1
function VintageStorySocket.ReceiveAsync(buffers) end

---@param buffers IList`1
---@param socketFlags SocketFlags
---@return Task`1
function VintageStorySocket.ReceiveAsync(buffers, socketFlags) end

---@param buffer ArraySegment`1
---@param remoteEndPoint EndPoint
---@return Task`1
function VintageStorySocket.ReceiveFromAsync(buffer, remoteEndPoint) end

---@param buffer ArraySegment`1
---@param socketFlags SocketFlags
---@param remoteEndPoint EndPoint
---@return Task`1
function VintageStorySocket.ReceiveFromAsync(buffer, socketFlags, remoteEndPoint) end

---@param buffer Memory`1
---@param remoteEndPoint EndPoint
---@param cancellationToken? CancellationToken
---@return ValueTask`1
function VintageStorySocket.ReceiveFromAsync(buffer, remoteEndPoint, cancellationToken) end

---@param buffer Memory`1
---@param socketFlags SocketFlags
---@param remoteEndPoint EndPoint
---@param cancellationToken? CancellationToken
---@return ValueTask`1
function VintageStorySocket.ReceiveFromAsync(buffer, socketFlags, remoteEndPoint, cancellationToken) end

---@param buffer ArraySegment`1
---@param remoteEndPoint EndPoint
---@return Task`1
function VintageStorySocket.ReceiveMessageFromAsync(buffer, remoteEndPoint) end

---@param buffer ArraySegment`1
---@param socketFlags SocketFlags
---@param remoteEndPoint EndPoint
---@return Task`1
function VintageStorySocket.ReceiveMessageFromAsync(buffer, socketFlags, remoteEndPoint) end

---@param buffer Memory`1
---@param remoteEndPoint EndPoint
---@param cancellationToken? CancellationToken
---@return ValueTask`1
function VintageStorySocket.ReceiveMessageFromAsync(buffer, remoteEndPoint, cancellationToken) end

---@param buffer Memory`1
---@param socketFlags SocketFlags
---@param remoteEndPoint EndPoint
---@param cancellationToken? CancellationToken
---@return ValueTask`1
function VintageStorySocket.ReceiveMessageFromAsync(buffer, socketFlags, remoteEndPoint, cancellationToken) end

---@param buffer ArraySegment`1
---@return Task`1
function VintageStorySocket.SendAsync(buffer) end

---@param buffer ArraySegment`1
---@param socketFlags SocketFlags
---@return Task`1
function VintageStorySocket.SendAsync(buffer, socketFlags) end

---@param buffer ReadOnlyMemory`1
---@param cancellationToken? CancellationToken
---@return ValueTask`1
function VintageStorySocket.SendAsync(buffer, cancellationToken) end

---@param buffer ReadOnlyMemory`1
---@param socketFlags SocketFlags
---@param cancellationToken? CancellationToken
---@return ValueTask`1
function VintageStorySocket.SendAsync(buffer, socketFlags, cancellationToken) end

---@param buffers IList`1
---@return Task`1
function VintageStorySocket.SendAsync(buffers) end

---@param buffers IList`1
---@param socketFlags SocketFlags
---@return Task`1
function VintageStorySocket.SendAsync(buffers, socketFlags) end

---@param buffer ArraySegment`1
---@param remoteEP EndPoint
---@return Task`1
function VintageStorySocket.SendToAsync(buffer, remoteEP) end

---@param buffer ArraySegment`1
---@param socketFlags SocketFlags
---@param remoteEP EndPoint
---@return Task`1
function VintageStorySocket.SendToAsync(buffer, socketFlags, remoteEP) end

---@param buffer ReadOnlyMemory`1
---@param remoteEP EndPoint
---@param cancellationToken? CancellationToken
---@return ValueTask`1
function VintageStorySocket.SendToAsync(buffer, remoteEP, cancellationToken) end

---@param buffer ReadOnlyMemory`1
---@param socketFlags SocketFlags
---@param remoteEP EndPoint
---@param cancellationToken? CancellationToken
---@return ValueTask`1
function VintageStorySocket.SendToAsync(buffer, socketFlags, remoteEP, cancellationToken) end

---@param fileName string
---@param cancellationToken? CancellationToken
---@return ValueTask
function VintageStorySocket.SendFileAsync(fileName, cancellationToken) end

---@param fileName string
---@param preBuffer ReadOnlyMemory`1
---@param postBuffer ReadOnlyMemory`1
---@param flags TransmitFileOptions
---@param cancellationToken? CancellationToken
---@return ValueTask
function VintageStorySocket.SendFileAsync(fileName, preBuffer, postBuffer, flags, cancellationToken) end

---@param targetProcessId number
---@return SocketInformation
function VintageStorySocket.DuplicateAndClose(targetProcessId) end

---@return userdata
function VintageStorySocket.GetType() end

---@return string
function VintageStorySocket.ToString() end

---@param obj userdata
---@return boolean
function VintageStorySocket.Equals(obj) end

---@return number
function VintageStorySocket.GetHashCode() end


