let rec sorted = function
  | [] | [ _ ] -> true
  | hd :: hd2 :: tl -> if hd <= hd2 then sorted (hd2 :: tl) else false
;;
