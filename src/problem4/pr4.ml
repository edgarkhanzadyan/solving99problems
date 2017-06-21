let rec count_length list k =
  match list with
  | [] -> k
  | hd :: tl ->
    count_length tl (k+1);;
let length list =
  count_length list 0;;
