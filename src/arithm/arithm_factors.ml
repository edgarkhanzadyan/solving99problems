let factors n =
  let rec aux acc k num =
    if k > num then acc
    else if num mod k = 0 then aux (acc@[k]) k (num/k)
    else aux acc (k+1) num in
  aux [] 2 n;;
