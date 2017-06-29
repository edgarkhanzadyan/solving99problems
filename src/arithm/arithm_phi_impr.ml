let phi_improved num =
  let rec pow base exp = if exp < 1 then 1 else base * (pow base (exp-1)) in
  let fact = Arithm_factors_tup.factors num in
  let rec aux acc = function
    | [] -> acc
    | (n, m) :: tl ->
      aux (acc * (n-1) * (pow n (m-1)) ) tl in
  aux 1 fact;;
