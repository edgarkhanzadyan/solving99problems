let encode list =
  let rec aux acc count = function
    | [] -> acc
    | a :: [] -> acc@[(count + 1, a)]
    | a :: (b :: _ as tl) ->
      if a = b then aux acc (count + 1) tl
      else aux (acc@[(count + 1, a)]) 0 tl in
  aux [] 0 list
