let add_one n = n + 1

let rec apply f n a =
  match n with
  | 1 -> f a
  | _ -> apply f (n - 1) (f a)
;;
