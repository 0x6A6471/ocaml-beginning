(* bool list -> int *)
let rec count_true = function
  | [] -> 0
  | true :: tl -> 1 + count_true tl
  | false :: tl -> count_true tl
;;

(* tail recursive. 
   bool list -> int *)
let count_true' lst =
  let rec aux count = function
    | [] -> count
    | true :: tl -> aux (count + 1) tl
    | false :: tl -> aux count tl
  in
  aux 0 lst
;;
