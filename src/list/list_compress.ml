let compress list =
  let rec aux acc check = function
    | [] -> acc
    | hd :: tl ->
      if hd = check then aux acc check tl
      else aux (acc@[hd]) hd tl in
  aux [] "" list
(* I actually like my implementation more because it's tail recursive *)
(* But those one is so pretty that I wanted to keep it in a comment *)
(* let rec compress = function *)
(*     | a :: (b :: _ as t) -> if a = b then compress t else a :: compress t *)
(*     | smaller -> smaller;; *)
