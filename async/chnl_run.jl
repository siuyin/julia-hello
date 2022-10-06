include("chnl.jl")


ch=Channel{Int}(0) # make a channel of Ints with capacity 0
@async randGen() # run randGen asynchronously

@async single()

for i in 1:10
    double()
end
