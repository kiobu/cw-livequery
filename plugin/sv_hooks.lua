function LQ:ClockworkInitialized()
    MsgC(Color( 0, 255, 255 ), "[LiveQuery] LiveQuery is enabled on this server. POST requests will be sent to the LQ server.\n" )
end;

function LQ:PlayerCanSayOOC(player, text)
    local requestbody = [[
        {
            "uid": "]]..LQ.Config.uid..[[",
            "plyname": "]]..player:Name()..[[",
            "svname": "]]..LQ.Config.svname..[[",
            "msg": "]]..text..[[",
            "time": ]]..os.time()..[[,
        }
    ]]

    print("[LiveQuery] Creating POST request to dest: "..LQ.Config.server.." with request body: ")
    print(requestbody)

    local opts = {
        parameters = nil,
        method = "post",
        headers = {},
        url = LQ.Config.server,
        body = requestbody,
        type = "application/json",
        success = function(code, body, headers)
            print("[LiveQuery] OK code "..code)
        end,
        failed = function(reason)
            print("[LiveQuery] FAILED with reason: "..reason)
        end
    }

    HTTP(opts)

end;