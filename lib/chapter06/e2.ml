let clip n =
  match n with
  | n when n < 1 -> 1
  | n when n > 10 -> 10
  | _ -> n
;;

let cliplist lst = List.map clip lst
