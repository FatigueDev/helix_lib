---@meta

---@class VSWebClient: HttpClient, IDisposable, HttpClient, HttpMessageInvoker
---@field DefaultRequestHeaders HttpRequestHeaders
---@field DefaultRequestVersion Version
---@field DefaultVersionPolicy HttpVersionPolicy
---@field BaseAddress Uri
---@field Timeout TimeSpan
---@field MaxResponseContentBufferSize number
---@field Inst VSWebClient
---@field PostCompleteHandler nil
VSWebClient = {}

---@return VSWebClient
function VSWebClient.ctor() end

---@param uri Uri
---@param postData FormUrlEncodedContent
---@param onFinished PostCompleteHandler
function VSWebClient.PostAsync(uri, postData, onFinished) end

---@param uri Uri
---@param postData FormUrlEncodedContent
---@return string
function VSWebClient.Post(uri, postData) end

---@param requestUri string
---@param destination Stream
---@param progress? IProgress`1
---@param cancellationToken? CancellationToken
---@return Task
function VSWebClient.DownloadAsync(requestUri, destination, progress, cancellationToken) end

---@return HttpRequestHeaders
function VSWebClient.get_DefaultRequestHeaders() end

---@return Version
function VSWebClient.get_DefaultRequestVersion() end

---@param value Version
function VSWebClient.set_DefaultRequestVersion(value) end

---@return HttpVersionPolicy
function VSWebClient.get_DefaultVersionPolicy() end

---@param value HttpVersionPolicy
function VSWebClient.set_DefaultVersionPolicy(value) end

---@return Uri
function VSWebClient.get_BaseAddress() end

---@param value Uri
function VSWebClient.set_BaseAddress(value) end

---@return TimeSpan
function VSWebClient.get_Timeout() end

---@param value TimeSpan
function VSWebClient.set_Timeout(value) end

---@return number
function VSWebClient.get_MaxResponseContentBufferSize() end

---@param value number
function VSWebClient.set_MaxResponseContentBufferSize(value) end

---@param requestUri string
---@return Task`1
function VSWebClient.GetStringAsync(requestUri) end

---@param requestUri Uri
---@return Task`1
function VSWebClient.GetStringAsync(requestUri) end

---@param requestUri string
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.GetStringAsync(requestUri, cancellationToken) end

---@param requestUri Uri
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.GetStringAsync(requestUri, cancellationToken) end

---@param requestUri string
---@return Task`1
function VSWebClient.GetByteArrayAsync(requestUri) end

---@param requestUri Uri
---@return Task`1
function VSWebClient.GetByteArrayAsync(requestUri) end

---@param requestUri string
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.GetByteArrayAsync(requestUri, cancellationToken) end

---@param requestUri Uri
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.GetByteArrayAsync(requestUri, cancellationToken) end

---@param requestUri string
---@return Task`1
function VSWebClient.GetStreamAsync(requestUri) end

---@param requestUri string
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.GetStreamAsync(requestUri, cancellationToken) end

---@param requestUri Uri
---@return Task`1
function VSWebClient.GetStreamAsync(requestUri) end

---@param requestUri Uri
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.GetStreamAsync(requestUri, cancellationToken) end

---@param requestUri string
---@return Task`1
function VSWebClient.GetAsync(requestUri) end

---@param requestUri Uri
---@return Task`1
function VSWebClient.GetAsync(requestUri) end

---@param requestUri string
---@param completionOption HttpCompletionOption
---@return Task`1
function VSWebClient.GetAsync(requestUri, completionOption) end

---@param requestUri Uri
---@param completionOption HttpCompletionOption
---@return Task`1
function VSWebClient.GetAsync(requestUri, completionOption) end

---@param requestUri string
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.GetAsync(requestUri, cancellationToken) end

---@param requestUri Uri
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.GetAsync(requestUri, cancellationToken) end

---@param requestUri string
---@param completionOption HttpCompletionOption
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.GetAsync(requestUri, completionOption, cancellationToken) end

---@param requestUri Uri
---@param completionOption HttpCompletionOption
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.GetAsync(requestUri, completionOption, cancellationToken) end

---@param requestUri string
---@param content HttpContent
---@return Task`1
function VSWebClient.PostAsync(requestUri, content) end

---@param requestUri Uri
---@param content HttpContent
---@return Task`1
function VSWebClient.PostAsync(requestUri, content) end

---@param requestUri string
---@param content HttpContent
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.PostAsync(requestUri, content, cancellationToken) end

---@param requestUri Uri
---@param content HttpContent
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.PostAsync(requestUri, content, cancellationToken) end

---@param requestUri string
---@param content HttpContent
---@return Task`1
function VSWebClient.PutAsync(requestUri, content) end

---@param requestUri Uri
---@param content HttpContent
---@return Task`1
function VSWebClient.PutAsync(requestUri, content) end

---@param requestUri string
---@param content HttpContent
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.PutAsync(requestUri, content, cancellationToken) end

---@param requestUri Uri
---@param content HttpContent
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.PutAsync(requestUri, content, cancellationToken) end

---@param requestUri string
---@param content HttpContent
---@return Task`1
function VSWebClient.PatchAsync(requestUri, content) end

---@param requestUri Uri
---@param content HttpContent
---@return Task`1
function VSWebClient.PatchAsync(requestUri, content) end

---@param requestUri string
---@param content HttpContent
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.PatchAsync(requestUri, content, cancellationToken) end

---@param requestUri Uri
---@param content HttpContent
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.PatchAsync(requestUri, content, cancellationToken) end

---@param requestUri string
---@return Task`1
function VSWebClient.DeleteAsync(requestUri) end

---@param requestUri Uri
---@return Task`1
function VSWebClient.DeleteAsync(requestUri) end

---@param requestUri string
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.DeleteAsync(requestUri, cancellationToken) end

---@param requestUri Uri
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.DeleteAsync(requestUri, cancellationToken) end

---@param request HttpRequestMessage
---@return HttpResponseMessage
function VSWebClient.Send(request) end

---@param request HttpRequestMessage
---@param completionOption HttpCompletionOption
---@return HttpResponseMessage
function VSWebClient.Send(request, completionOption) end

---@param request HttpRequestMessage
---@param cancellationToken CancellationToken
---@return HttpResponseMessage
function VSWebClient.Send(request, cancellationToken) end

---@param request HttpRequestMessage
---@param completionOption HttpCompletionOption
---@param cancellationToken CancellationToken
---@return HttpResponseMessage
function VSWebClient.Send(request, completionOption, cancellationToken) end

---@param request HttpRequestMessage
---@return Task`1
function VSWebClient.SendAsync(request) end

---@param request HttpRequestMessage
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.SendAsync(request, cancellationToken) end

---@param request HttpRequestMessage
---@param completionOption HttpCompletionOption
---@return Task`1
function VSWebClient.SendAsync(request, completionOption) end

---@param request HttpRequestMessage
---@param completionOption HttpCompletionOption
---@param cancellationToken CancellationToken
---@return Task`1
function VSWebClient.SendAsync(request, completionOption, cancellationToken) end

function VSWebClient.CancelPendingRequests() end

function VSWebClient.Dispose() end

---@return userdata
function VSWebClient.GetType() end

---@return string
function VSWebClient.ToString() end

---@param obj userdata
---@return boolean
function VSWebClient.Equals(obj) end

---@return number
function VSWebClient.GetHashCode() end


