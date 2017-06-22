type 'a rle =
    | One of 'a
    | Many of int * 'a;;
let encode list =
  let rec aux acc count = function
    | [] -> acc
    | a :: [] ->
      if count = 0 then acc @ [One a]
      else acc @ [Many (count+1, a)]
    | a :: (b :: _ as tl) ->
      if a = b then aux acc (count+1) tl
      else (
        if count = 0 then aux (acc @ [One a]) 0 tl
        else aux (acc @ [Many (count+1, a)]) 0 tl
      ) in
  aux [] 0 list
