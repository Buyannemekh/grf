library(DiagrammeR)


non_leaf_nodes = 15
n = non_leaf_nodes * 2 + 1

nodes <- 
  create_node_df(n=n, 
                 label = TRUE, 
                 value = c(1:n), 
                 shape = "box",
                 style = "filled"
                 )

edges <- 
  create_edge_df(from = rep(1:non_leaf_nodes, each = 2),
                 to = c(2:n)
  )

graph <-
  create_graph(nodes_df = nodes,
               edges_df = edges, 
               directed = TRUE) %>% 
  set_node_attrs(
    node_attr = info,
    values = "leaf node \n samples = k" ,
    nodes = c(non_leaf_nodes+1:n)
  ) %>% 
  set_node_attr_to_display(
    nodes = c(non_leaf_nodes+1:n),
    attr = info) %>% 
  set_node_attr_to_display(
    nodes = c(1:non_leaf_nodes), 
    attr = value
  ) %>% 
  add_global_graph_attrs(
    attr = "layout",
    value = "dot",
    attr_type = "graph"
  )

#graph %>% get_node_df()

#render_graph(graph, layout = "tree")

dot_file <- generate_dot(graph)

grViz(generate_dot(graph))
