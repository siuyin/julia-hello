using Logging
function atoi(s::String)
@debug "about atoi", s
try
    parse(Int32,s)
catch e
    @error e
end
end


