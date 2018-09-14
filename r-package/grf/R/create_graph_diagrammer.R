library(DiagrammeR)


nodes <- 
  create_node_df(n=63, 
                 label = TRUE, 
                 value = c(1:63), 
                 shape = "rectangle")

edges <- 
  create_edge_df(from = rep(1:31, each = 2),
                 to = c(2:63)
  )

graph <-
  create_graph(nodes_df = nodes,
               edges_df = edges, 
               directed = TRUE) %>% 
  set_node_attrs(
    node_attr = info,
    values = "leaf \n node",
    nodes = c(32:63)
  ) %>% 
  set_node_attr_to_display(
    nodes = c(32:63),
    attr = info) %>% 
  set_node_attr_to_display(
    nodes = c(1:31), 
    attr = value
  )

graph %>% get_node_df()

render_graph(graph, layout = "tree")


