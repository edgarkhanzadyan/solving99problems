print_endline "\nLet's get it started!";;
let print_option_int opt =
  match opt with
  | Some item -> print_int item
  | None -> print_endline "None";;
(* Running list_last *)
List_last.last [1; 2; 3];;            (* Some 3 *)
(* Running list_last_two *)
List_last_two.last_two [1; 2; 3];;        (* Some (2, 3) *)
(* Running list_k_element *)
List_k_element.at 2 [50; 2; 3; 4];;        (* Some 3 *)
(* Running list_length *)
List_length.length [1; 2; 3; 4];;       (* 4 *)
(* Running list_reverse *)
List_reverse.rev [1; 2; 3; 4];;          (* [4; 3; 2; 1] *)
(* Running list_palindrome *)
List_palindrome.is_palindrome [1; 2; 2; 1];; (* true *)
(* Running list_flatten *)
List_flatten.flatten [ One "a" ;
              Many [ One "b" ; Many [ One "c" ; One "d" ] ; One "e" ];
            ];;
(* Running list_compress *)
List_compress.compress ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;
(* Running list_pack *)
List_pack.pack ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;
(* Running list_rle_encode *)
List_rle_encode.encode ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e";"yay"];;
(* Running list_rle_modif_encode *)
List_rle_modif_encode.encode ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e";"yay"];;
(* Running list_rle_decode *)
List_rle_decode.decode [Many (4,"a"); One "b"; Many (2,"c"); Many (2,"a"); One "d"; Many (4,"e")];;
(* Running list_duplicate *)
List_duplicate.duplicate ["a";"b";"c";"c";"d"];;
(* Running list_replicate *)
List_replicate.replicate ["a";"b";"c"] 3;;
(* Running list_drop_n *)
List_drop_n.drop ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 3;;
(* Running list_split *)
List_split.split ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 3;;
(* Running list_slice *)
List_slice.slice ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 2 6;;
(* Running list_rotate *)
List_rotate.rotate ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"] (-2);;
(* Running list_remove_at *)
List_remove_at.remove_at 3 ["a";"b";"c";"d"];;
(* Running list_insert_at *)
List_insert_at.insert_at "EDGAR" 2 ["a";"b";"c";"d"];;
(* Running list_range *)
List_range.range 9 4;;
