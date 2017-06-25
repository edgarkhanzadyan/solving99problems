let range fir sec =
  let rec aux a b acc =
    if a > b then aux (a-1) b (acc @ [a])
    else if a < b then aux a (b-1) (acc @ [b])
    else acc @ [a] in
  aux fir sec [];;
