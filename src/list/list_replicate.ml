let replicate list times =
  let rec multiply_it arr item t =
    if t <= 0 then arr
    else multiply_it (arr @ [item]) item (t-1) in
  let rec aux acc = function
    | [] -> acc
    | hd :: tl ->
      aux (acc @ (multiply_it [] hd times)) tl in
  aux [] list;;
