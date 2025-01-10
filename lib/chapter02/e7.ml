let rec fact n =
  match n with
  | x when x < 0 -> begin
    match x with
    | -1 -> -1
    | _ -> n * fact (n + 1)
  end
  | _ -> begin
    match n with
    | 0 | 1 -> 1
    | _ -> n * fact (n - 1)
  end
;;
