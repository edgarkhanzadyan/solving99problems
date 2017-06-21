let rec last_two list =
  match list with
  | [] -> None
  | [x] -> None
  | [x ; y] -> Some (x, y)
  | hd :: tl -> last_two tl
