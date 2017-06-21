let is_palindrome list =
  let reversed = Pr5.rev list in
  let rec checking lis rever =
    match lis with
    | [] -> true
    | _ ->
      if List.hd lis == List.hd rever
      then checking (List.tl lis) (List.tl rever)  
      else false in
  checking list reversed
