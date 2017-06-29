let all_primes st fin =
  let rec aux acc n =
    if n > fin then acc
    else if Arithm_prime.is_prime n then aux (acc@[n]) (n+1)
    else aux acc (n+1) in
  aux [] st;;
