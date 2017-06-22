type 'a rle =
    | One of 'a
    | Many of int * 'a;;
let decode list =
  let rec add_item item count acc =
    if count <= 0 then acc
    else add_item item (count-1) (acc@[item]) in
  let rec aux acc = function
    | [] -> acc
    | One a :: tl ->
      aux (add_item a 1 acc) tl
    | Many (n, a) :: tl ->
      aux (add_item a n acc) tl in
  aux [] list;;
