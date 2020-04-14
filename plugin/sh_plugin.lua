PLUGIN:SetGlobalAlias("LQ");

Clockwork.kernel:IncludePrefixed("sv_hooks.lua");

LQ.Config = {
    -- In case you end up changing server names or server IPs, a unique name should be something
    -- that never changes, and is something only you know. Think of it like a password. You can
    -- use the same unique ID if you decide to get a new IP or change your server name.
    uid = "DEBUG";
    svname = GetHostName() or "Listen Server";
    -- If you aren't using the LQ global server, put the IP/api here:
    server = "http://localhost:25050/api"
}