library("DiagrammeR")

# Create a node data frame (ndf)
ndf <- create_node_df(n = 4,
                      style = "filled",
                      label = c("aaa", "bbb",
                                "Same size\nThese letters\nshould be smaller",
                                "ccc")
                      
)

# Create an edge data frame (edf)
edf <- create_edge_df(from = c(1, 2, 3, 3),
                      to = c(4, 3, 1, 4))

# Create a graph with the ndf and edf
graph <- create_graph(nodes_df = ndf,
                      edges_df = edf)

# Print graph
graph %>%
  render_graph()

dot_code <- generate_dot(graph)
cat(dot_code)
