using JuliaPractice
using Base.Test

@testset "test1" for i = 1:5
    @test readconll("") == true
end
