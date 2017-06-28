let quicksort list =
  let get_rand_num len =
    Random.int len in
  let rec get_item n = function
    | [] -> failwith "no such num"
    | hd :: tl ->
      if n < 1 then hd
      else get_item (n - 1) tl in
  let rec divide_on_lists n acc1 acc2 = function
    | [] -> (acc1, acc2)
    | hd :: tl ->
      if hd < n then divide_on_lists n (acc1@[hd]) acc2 tl
      else divide_on_lists n acc1 (acc2@[hd]) tl in
  let rec for_each acc = function
    | [] -> acc
    | hd :: tl ->
      let len = List.length hd in
      if len > 2 then (
        let a, b = divide_on_lists (get_item (
            get_rand_num len) hd
          ) [] [] hd in
        for_each acc ([a]@[b]@tl)
      )
      else if len = 2 then (
        match hd with
        | [] -> []
        | f :: s ->
          if f > List.hd s then for_each (acc@[s]@[[f]]) tl
          else for_each (acc@[[f]]@[s]) tl
      )
      else (
        for_each (acc@[hd]) tl;
      ) in
  for_each [] [list];;
