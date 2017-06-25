let remove_at k list =
  let rec aux k acc = function
    | [] -> acc
    | h :: t ->
      if k = 0 then aux (k-1) acc t
      else aux (k-1) (acc @ [h]) t in
  aux k [] list;;
