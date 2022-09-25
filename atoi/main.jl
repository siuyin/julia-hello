include("atoi.jl")

## Math style function definition.
demoAToI(s) = println("String $s to Int32 example: $(atoi(s))")

@info "starting atoi demo"
demoAToI("23")

# Enable debugging by setting ENV["JULIA_DEBUG"="main,atoi" -- note leave out the .jl extension.
@debug "these should produce errors messages"
demoAToI("123b")
demoAToI("1.23")
