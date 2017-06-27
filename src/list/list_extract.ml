let extract num list =
  let glue x acc = x :: acc in
  let rec aux acc glue k = function
    | [] -> acc
    | hd :: tl ->
      if k = 1 then aux (glue [hd] acc) glue k tl
      else (
        let new_glue x acc = glue (hd :: x) acc in
        aux (aux acc new_glue (k-1) tl) glue k tl
      ) in
  aux [] glue num list
