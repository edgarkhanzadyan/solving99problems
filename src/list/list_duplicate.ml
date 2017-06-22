let duplicate list =
  let rec aux acc = function
    | [] -> acc
    | hd :: tl ->
      aux (acc @ [hd;hd]) tl in
  aux [] list;;
