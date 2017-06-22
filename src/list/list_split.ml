let split list times =
  let dropdown (arr1, arr2) item t =
    if t > 0 then (arr1 @ [item], arr2)
    else (arr1, arr2 @ [item]) in
  let rec aux acc t = function
    | [] -> acc
    | hd :: tl -> aux (dropdown acc hd t) (t-1) tl in
  aux ([],[]) times list;;
