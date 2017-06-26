let rand_select list num =
  let rand_int l =
    Random.int (List.length l) in
  let rec get_item n acc = function
    | [] -> ("", acc)
    | hd :: tl ->
      if n <= 0 then (hd, acc@tl)
      else get_item (n-1) (acc@[hd]) tl in
  let rec aux acc n l =
    if n <= 0 then acc
    else (
      let item, new_l = get_item (rand_int l) [] l in
      aux (acc @ [item]) (n - 1) new_l 
    ) in
  aux [] num list;;
