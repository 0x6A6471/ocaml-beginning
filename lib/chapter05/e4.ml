let rec sorted = function
  | [] | [ _ ] -> true
  | first :: (second :: _ as tl) -> if first <= second then sorted tl else false
;;
