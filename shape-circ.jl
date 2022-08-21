# shape-circ.jl provides Circle type and methods.

struct Circle
    r::Float64
end

area(c::Circle)=π*c.r^2

