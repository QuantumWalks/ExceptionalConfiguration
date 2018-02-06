using QuWalkEC, LightGraphs
using Base.Test

@testset "have ss" begin
  @testset "provided subgraph is connected" begin
    @test !have_ss_connected(CompleteGraph(10), [5])
    @test have_ss_connected(CompleteGraph(10), [2, 6, 8])
    @test have_ss_connected(CompleteGraph(10), [2, 6])

    @test have_ss_connected(PathGraph(10), [2, 3])
    @test !have_ss_connected(PathGraph(10), [1, 2])

    @test have_ss_connected(smallgraph(:bull), [1,2,3])
    @test !have_ss_connected(smallgraph(:bull), [1,2])

    @test_throws ErrorException have_ss_connected(CompleteGraph(10), [2, 2])
    @test_throws ErrorException have_ss_connected(CompleteGraph(10), [2, 2, 3])
  end

  @testset "generalt subgraph" begin
    @test have_ss(PathGraph(10), [2, 3, 5, 6])
    @test !have_ss(PathGraph(10), [1, 2, 6, 7])

    @test_throws ErrorException have_ss(PathGraph(10), [2, 2, 6, 7])
    @test_throws ErrorException have_ss(PathGraph(10), [2, 2, 3])
  end

end

@testset "searching for EC" begin
  @test search_subgraph_ss(CompleteGraph(10)) == [1,2]
  @test search_subgraph_ss(Graph(10)) == Int[]
  @test search_subgraph_ss(PathGraph(10)) == [2, 3]
  @test search_subgraph_ss(StarGraph(10)) == []
end
