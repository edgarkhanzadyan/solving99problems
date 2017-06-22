type 'a rle =
    | One of 'a
    | Many of int * 'a;;
let encode list =
  let make_tuple elem count =
    if count = 1 then One elem
    else Many (count, elem) in
  let rec aux acc count = function
    | [] -> acc
    | a :: [] -> acc @ [make_tuple a (count+1)]
    | a :: (b :: _ as tl) ->
      if a = b then aux acc (count+1) tl
      else aux (acc @ [make_tuple a (count+1)]) 0 tl in
  aux [] 0 list
