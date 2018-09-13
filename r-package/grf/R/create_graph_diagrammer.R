library(DiagrammeR)


nodes <- 
  create_node_df(n=7)

edges <- 
  create_edge_df(from = c(1, 1, 2, 2, 3, 3),
                 to = c(2, 3, 4, 5, 6, 7), 
  )

graph <-
  create_graph(nodes_df = nodes,
               edges_df = edges, 
               directed = TRUE)

render_graph(graph, layout = "fr")


f_graph <- 
  create_graph() %>% 
  add_balanced_tree(k=2, h=2) 

render_graph(f_graph, layout = "tree")
