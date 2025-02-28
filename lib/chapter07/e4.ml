let largest_int_or_zero n =
  match n with
  | n when n < 0 -> 0
  | _ -> float_of_int n |> sqrt |> floor |> int_of_float
;;
