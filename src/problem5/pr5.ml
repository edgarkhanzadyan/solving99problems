let rev list =
  let rec in_rev list new_list =
    match list with
    | [] -> new_list
    | hd :: tl ->
      in_rev tl (hd :: new_list) in
  in_rev list [];;

