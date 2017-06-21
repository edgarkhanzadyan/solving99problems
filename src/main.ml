print_endline "\nLet's get it started!";;
let print_option_int opt =
  match opt with
  | Some item -> print_int item
  | None -> print_endline "None";;
(* Running pr1 *)
Pr1.last [1; 2; 3];;            (* Some 3 *)
(* Running pr2 *)
Pr2.last_two [1; 2; 3];;        (* Some (2, 3) *)
(* Running pr3 *)
Pr3.at 2 [50; 2; 3; 4];;        (* Some 3 *)
(* Running pr4 *)
Pr4.length [1; 2; 3; 4];;       (* 4 *)
