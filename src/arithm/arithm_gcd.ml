let rec gcd num1 num2 =
  if num2 = 0 then num2 else gcd num2 (num1 mod num2);;
