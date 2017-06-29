let goldbach_list st fin =
  let rec aux acc n =
    if n > fin then acc
    else if n mod 2 = 0 then (
      let tup = Arithm_goldbach.goldbach n in
      aux (acc @ [ (n, tup) ]) (n+1)
    )else aux acc (n+1) in
  aux [] st;;
let goldbach_limit st fin lim =
  let rec aux acc n =
    if n > fin then acc
    else if n mod 2 = 0 then (
      let tup = Arithm_goldbach.goldbach n in
      let a, b = tup in
      if a > 50 && b > 50 then aux (acc @ [ (n, tup) ]) (n+1)
      else aux acc (n+1)
    )else aux acc (n+1) in
  aux [] st;;
