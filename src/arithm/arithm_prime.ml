let is_prime num =
  let n = abs num in
  let rec aux i =
    if i > n / 2 then true
    else if n mod i = 0 then false
    else aux (i + 1) in
  aux 2;;
