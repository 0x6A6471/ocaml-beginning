let is_even x = x mod 2 = 0

let rec for_all f = function
  | [] -> true
  | hd :: tl ->
    (match f hd with
     | true -> for_all f tl
     | false -> false)
;;
