(* tail-recursive *)
let drop list num =
  let rec aux acc times = function
    | [] -> acc
    | hd :: tl ->
      if times <= 1 then aux acc num tl
      else aux (acc@[hd]) (times-1) tl in
  aux [] num list;;

(* non tail-recursive *)
(* let drop list num = *)
(*   let rec aux times = function *)
(*     | [] -> [] *)
(*     | hd :: tl -> *)
(*       if times <= 1 then aux num tl *)
(*       else hd :: (aux (times-1) tl) in *)
(*   aux num list;; *)
