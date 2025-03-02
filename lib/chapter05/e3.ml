let rec insert x = function
  | [] -> [ x ]
  | hd :: tl -> if x >= hd then x :: hd :: tl else hd :: insert x tl
;;

let rec insertion_sort = function
  | [] -> []
  | hd :: tl -> insert hd (insertion_sort tl)
;;
