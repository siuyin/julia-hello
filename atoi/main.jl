include("atoi.jl")

function demoAToI(s)
    println("String $s to Int32 example: $(atoi(s))")
end

demoAToI("23")
demoAToI("123b")
demoAToI("1.23")
