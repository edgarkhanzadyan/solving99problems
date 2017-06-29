let timeit func n =
  let a = Unix.gettimeofday() in
  ignore(func n);
  let b = Unix.gettimeofday() in
  b -. a;;
