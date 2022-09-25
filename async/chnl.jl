function randGen(c::Channel)
    while true
        put!(c,rand(0:9))
    end
end

#intCh=Channel(randGen)

function double(c::Channel)
    n=take!(c)
    println("$n $(2*n)")
end
