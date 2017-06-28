let rec gcd num1 num2 =
  if num1 = 0 then num2
  else if num2 = 0 then num1
  else if num1 >= num2 then gcd num2 (num1 mod num2)
  else gcd num1 (num2 mod num1);;
