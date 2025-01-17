let rec drop_last = function
  | [] | [ _ ] -> []
  | hd :: tl -> hd :: drop_last tl
;;
