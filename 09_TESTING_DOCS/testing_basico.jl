# Testing básico en Julia

using Test

@testset "Operaciones matemáticas" begin
    @test 2 + 2 == 4
    @test sqrt(9) == 3
    @test typeof(2.0) == Float64
end
