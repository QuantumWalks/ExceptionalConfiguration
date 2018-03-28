function search_subgraph_ss(g::Graph, ks::Vector{Int})
  for k=ks
    tmp_result = search_subgraph_ss(g, k)
    if !isempty(tmp_result)
      return tmp_result
    end
  end
  return k
end

function search_subgraph_ss(g::Graph, k::Int)
  @assert 2 <= k <= nv(g)-1 "subgraphs order must be at least 2 and at most order of graph minus 1"
  for vertices = subsets(1:nv(g), k)
    ind_g = induced_subgraph(g, vertices)[1]
    if is_connected(ind_g) && have_ss_connected(g, vertices)
      return vertices
    end
  end
  return Int[]
end

function search_subgraph_ss(g::Graph)
  for vertices = subsets(1:nv(g))
    if 2 <= length(vertices) <= nv(g)-1
      ind_g = induced_subgraph(g, vertices)[1]
      if is_connected(ind_g) && have_ss_connected(g, vertices)
        return vertices
      end
    end
  end
  return Int[]
end

function search_subgraph_noss(g::Graph, ks::Vector{Int})
  for k=ks
    tmp_result = search_subgraph_noss(g, k)
    if !isempty(tmp_result)
      return tmp_result
    end
  end
  return k
end

function search_subgraph_noss(g::Graph, k::Int)
  @assert 2 <= k <= nv(g)-1 "subgraphs order must be at least 2 and at most order of graph minus 1"
  for vertices = subsets(1:nv(g), k)
    ind_g = induced_subgraph(g, vertices)[1]
    if is_connected(ind_g) && !have_ss_connected(g, vertices)
      return vertices
    end
  end
  return Int[]
end

function search_subgraph_noss(g::Graph)
  for vertices = subsets(1:nv(g))
    if 2 <= length(vertices) <= nv(g)-1
      ind_g = induced_subgraph(g, vertices)[1]
      if is_connected(ind_g) && !have_ss_connected(g, vertices)
        return vertices
      end
    end
  end
  return Int[]
end
