include("shape.jl")

function main()
    r=Shape.Rectangle(3,4)
    c=Shape.Circle(1)

    println("Area of rectangle $r: $(Shape.area(r))")
    println("Area of $c: $(Shape.area(c))")
end

main()
