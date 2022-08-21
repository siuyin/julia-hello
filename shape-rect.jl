# shape-rect.jl provides Rectangle type and methods.

struct Rectangle
    w::Float64
    h::Float64
end

function area(r::Rectangle)
    r.w*r.h
end

