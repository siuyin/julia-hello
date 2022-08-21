# Usage:
# include("shape.jl")
#   Shape.sum(2,3)
# import .Shape: sum as mysum
#   mysum(4,5)
module Shape

include("shape-rect.jl")
include("shape-circ.jl")

end
