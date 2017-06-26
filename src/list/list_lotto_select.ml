let rec lotto_select n ran =
  if n <= 0 then []
  else ((Random.int ran) + 1) :: lotto_select (n - 1) ran;;
