let rec rotate list num =
  let rec pos_rot arr n =
    match arr with
    | [] -> list
    | hd :: tl ->
      if n = 0 then arr
      else pos_rot (tl @[hd]) (n-1) in
  let rec neg_rot arr n =
    match arr with
    | [] -> list
    | hd :: tl ->
      if n = 0 then arr
      else neg_rot (tl @ [hd]) (n+1) in
  if num > 0 then
    pos_rot list num
  else if num < 0 then
     List.rev (neg_rot (List.rev list) num)
  else list
