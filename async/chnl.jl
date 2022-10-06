function randGen()
    while true
        put!(ch,rand(0:9))
    end
end

#intCh=Channel(randGen)

function double()
    n=take!(ch)
    sleep(0.5)
    println("$n $(2*n)")
end

function single()
    while true
        n=take!(ch)
        sleep(0.1)
        println("   single: $n")
    end
end
