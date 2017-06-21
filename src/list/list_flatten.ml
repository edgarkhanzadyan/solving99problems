type 'a node =
    | One of 'a 
    | Many of 'a node list;;
let flatten n_l =
  let rec flat_in_node node node_list list =
    match node with
    | One item ->
      flat_in_list node_list (list@[item])
    | Many n_list ->
     let new_list = (flat_in_list n_list list) in
     flat_in_list node_list new_list
  and flat_in_list node_list list =
    match node_list with
    | [] -> list
    | hd :: tl ->
      flat_in_node hd tl list in
  flat_in_list n_l [];;
