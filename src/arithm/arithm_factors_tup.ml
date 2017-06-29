let factors n =
  let rec aux acc k count num =
    if k > num then (
      if count <> 0 then acc @ [(k, count)]
      else acc
    )
    else if num mod k = 0 then aux acc k (count+1) (num/k)
    else if count <> 0 then aux (acc @ [(k, count)] ) (k+1) 0 num
    else aux acc (k+1) 0 num in
  aux [] 2 0 n;;
