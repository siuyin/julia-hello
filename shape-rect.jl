# shape-rect.jl provides Rectangle type and methods.

struct Rectangle
    w::Number
    h::Number
end

function area(r::Rectangle)
    r.w*r.h
end

struct IntRectangle
    w::Int
    h::Int
end

function area(r::IntRectangle)
    r.w*r.h
end

