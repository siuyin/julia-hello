using Test

include("main.jl")

@test sum(2,4) == 6

@testset "adding two numbers" begin
        @test sum(2,3)==5
        @test sum(3,4)==7
end

@test sub(4,2) == 2

@testset "subtract two numbers" begin
    struct Dat
        a
        b
        o
    end
    dat = [Dat(2,3,-1),Dat(3,2,1),
           Dat(5,4,1)
          ]
    for d in dat
        @test sub(d.a,d.b) == d.o
    end
end

# A test set equivalent.
begin
    struct D
        a
        b
        o
    end
    dat = [D(2,3,5), D(4,5,9), D(1,2,3)]
    
    for d in dat
        @test sum(d.a,d.b) == d.o
    end
end
