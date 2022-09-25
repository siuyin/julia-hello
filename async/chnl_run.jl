include("chnl.jl")


ch=Channel{Int}(1) # make a channel of Ints with capacity 1
@async randGen(ch) # run randGen asynchronously

for i in 1:10
    double(ch)
end
