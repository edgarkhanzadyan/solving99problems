let goldbach num =
  let rec aux n =
    if Arithm_prime.is_prime n && Arithm_prime.is_prime (num - n) then
      (n, num-n)
    else aux (n+1) in
  aux 2;;
