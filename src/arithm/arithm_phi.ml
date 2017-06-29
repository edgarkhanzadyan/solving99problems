let phi n =
  let rec aux acc k =
    if k >= n then acc
    else aux (if Arithm_coprime.coprime n k then acc+1 else acc) (k+1) in
  if n = 1 then 1
  else if Arithm_prime.is_prime n then n - 1
  else aux 0 1;;
