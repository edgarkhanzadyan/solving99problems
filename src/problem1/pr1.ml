let rec last list =
  match list with
  | [] -> None
  | hd :: tl ->
    match tl with
    | [] -> Some hd
    | _ -> last tl
