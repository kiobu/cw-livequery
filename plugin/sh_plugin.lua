PLUGIN:SetGlobalAlias("LQ");

Clockwork.kernel:IncludePrefixed("sv_hooks.lua");

LQ.Config = {
    svname = GetHostName() or "Listen Server";

    -- Put the LiveQuery bot's IP here. Make sure your server
    -- accepts incoming HTTP requests. 
    -- This should start with http:// and most likely end with :25050/api.
    server = "http://localhost:25050/api"
}