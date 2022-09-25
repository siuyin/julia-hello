include("serve.jl")
println("starting server\nPress ctrl-C to terminate.")
s=serve()
wait(s)

