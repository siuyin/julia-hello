using Logging
function atoi(s::String)
try
    parse(Int32,s)
catch e
    @error e
end
end


