type 'a node =
    | One of 'a 
    | Many of 'a node list;;
let flatten n_l =
  let rec aux acc = function
    | [] -> acc
    | One hd :: tl -> aux (acc @ [hd]) tl
    | Many hd :: tl -> aux (aux acc hd) tl in
  aux [] n_l;;
