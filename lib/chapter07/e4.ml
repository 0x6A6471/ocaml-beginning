let largest_int_or_zero n =
  try E3.largest_int_sqrt n with
  | E3.NegativeSqRt -> 0
;;
