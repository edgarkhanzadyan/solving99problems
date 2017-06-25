let rec insert_at str n = function
  | [] -> if n >= 0 then [str] else []
  | h :: t as l -> if n = 0 then str :: l else h :: insert_at str (n-1) t;;
