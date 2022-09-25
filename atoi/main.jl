include("atoi.jl")

## Math style function definition.
demoAToI(s) = println("String $s to Int32 example: $(atoi(s))")

demoAToI("23")
demoAToI("123b")
demoAToI("1.23")
