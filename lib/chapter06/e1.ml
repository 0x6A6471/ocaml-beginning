let rec calm = function
  | [] -> []
  | hd :: tl -> if hd = '!' then '.' :: calm tl else hd :: calm tl
;;

