let rec sum n =
  match n with
  | 1 -> 1
  | _ -> n + sum (n - 1)
in
Printf.printf "sum 5: %i\n" (sum 5)
