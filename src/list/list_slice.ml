let slice list i k =
  let rec aux acc n = function
    | [] -> acc
    | hd :: tl ->
      if n >= i && n <= k then aux (acc @ [hd]) (n+1) tl
      else if n > k then acc
      else aux acc (n+1) tl in
  aux [] 0 list;;
