#using Pkg; Pkg.add("HTTP")
# The HTTP package can be directly added to the repl, ], then add HTTP
using HTTP

using Dates
function myIP()
    println("start: ", now())

    @time r=HTTP.request("GET","http://httpbin.org/ip")
    println(String(r.body))

    println("end: ", now())
end

using Printf
function main()
    for i in 1:3
        #@printf("\nrun %d\n",i)
        println("\nrun $i")
        myIP()
    end
end
