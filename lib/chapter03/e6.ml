let is_lower l =
  match l with
  | 'a' .. 'z' -> true
  | _ -> false
;;

let is_upper l =
  match l with
  | 'A' .. 'Z' -> true
  | _ -> false
;;
