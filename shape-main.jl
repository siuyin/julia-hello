include("shape.jl")

function main()
    r=Shape.Rectangle(3.0,4.0)
    r2=Shape.Rectangle(3+0im,4.0)
    ir=Shape.IntRectangle(3,4)
    c=Shape.Circle(1)

    println("Area of rectangle $r: $(Shape.area(r))")
    println("Area of rectangle 2 $r: $(Shape.area(r2))")
    println("Area of integer rectangle $r: $(Shape.area(ir))")
    println("Area of $c: $(Shape.area(c))")
end

main()
