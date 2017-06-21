let rec last list =
  match list with
  | [] -> None
  | [hd] -> Some hd
  | hd :: tl -> last tl;;
