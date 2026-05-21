return (function(...)
    local Noryn, On, Top = 'workers', 'dev', 'Assets'

    local Run = `{Noryn}.{On}/{Top}`
    local Path = `http://noryn.loader-dll.{Run}`

    local Loader = (loadstring or load)
    local Http = (syn and syn.request) or (http and http.request) or http_request or request
    local Http_Response = Http and Http({Url = Path, Method = 'GET'}) or {Body = game:HttpGet(Path)}
    local Response = Http_Response.Body
    return Loader(Response)(..., 'dsc.gg/getnoryn — ✨')
end)(...)
