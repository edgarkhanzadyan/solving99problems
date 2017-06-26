type 'a binary_tree =
    | Empty
    | Node of 'a * 'a binary_tree * 'a binary_tree;;
let rec combs_with_rep k xxs =
  match k, xxs with
  | 0,  _ -> [[]]
  | _, [] -> []
  | k, x::xs ->
      List.map (fun ys -> x::ys) (combs_with_rep (k-1) xxs)
      @ combs_with_rep k xs;;
let f s =
  List.iter print_string s;
  print_endline "ha";;
List.iter f (combs_with_rep 10 ["true"; "false"]);;
(* let cbal_tree num = *)
(*   let combs = combs_with_rep num [true; false] in *)
  
(*   let rec prepend node tree = *)
(*     match tree with *)
(*     | *)
(*   let rec aux acc n = *)
(*     if num <= 0 then acc *)
(*     else ( *)
(*       let new_node = Node ('x' Empty Empty);; *)
(*       prepend new_node acc *)
(*     ) *)
