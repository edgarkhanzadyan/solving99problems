let pack list =
  let rec aux acc small_acc = function
    | [] -> acc
    | a :: [] -> acc@[small_acc@[a]]
    | a :: (b :: _ as tl) ->
      if a = b then aux acc (small_acc@[a]) tl
      else aux (acc@[small_acc@[a]]) [] tl in
  aux [] [] list
