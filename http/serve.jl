using HTTP

using Dates
function serve()
    svr=HTTP.serve!("0.0.0.0",8080) do req::HTTP.Request
    try
        return HTTP.Response("hello: $(now())")
    catch e
        return HTTP.Response(400,"Error: $e")
    end
    return svr
    end
end

#remember to close(svr)


