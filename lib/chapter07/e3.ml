exception NegativeSqRt

let largest_int_sqrt n =
  match n with
  | n when n < 0 -> raise NegativeSqRt
  | n -> float_of_int n |> sqrt |> floor |> int_of_float
;;
