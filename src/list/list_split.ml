let split list times =
  let rec aux acc n = function
    | [] -> acc, []
    | hd :: tl as all ->
      if n = 0 then acc, all
      else aux (acc@[hd]) (n-1) tl in
  aux [] times list;;
