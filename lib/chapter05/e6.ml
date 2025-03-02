let rec insertion_sort lst =
  let rec insert x = function
    | [] -> [ x ]
    | hd :: tl -> if x >= hd then x :: hd :: tl else hd :: insert x tl
  in
  match lst with
  | [] -> []
  | hd :: tl -> insert hd (insertion_sort tl)
;;
