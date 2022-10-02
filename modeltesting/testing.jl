struct Rectangle 
    w::Number
    h:: Number
end

struct Circle
    r::Number
end

area(r::Rectangle)=r.w*r.h
area(c::Circle)=π*c.r^2

using Test
@test area(Rectangle(2,3)) == 6
@test area(Circle(2)) ≈ π*2^2
@test isapprox(area(Circle(2)),  π*2^2-0.01, rtol=1e-3)

struct Sphere
    r::Number
end

volume(s::Sphere)=4/3*π*s.r^3
surfacearea(s::Sphere)=4*π*s.r^2

@test volume(Sphere(2)) ≈ 4/3*π*2^3
@test surfacearea(Sphere(2)) ≈ 4*π*2^2

struct Cuboid
    w::Number
    h::Number
    l::Number
end

volume(c::Cuboid)=c.w*c.h*c.l
surfacearea(c::Cuboid)=2*(c.w*c.h+c.h*c.l+c.w*c.l)

@test volume(Cuboid(1,2,3)) == 6
@test surfacearea(Cuboid(1,2,3)) == 2*(2+6+3)
