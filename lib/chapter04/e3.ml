let rec rev = function
  | [] -> []
  | hd :: tl -> rev tl @ [ hd ]
;;

let is_palindrome lst = lst = rev lst
