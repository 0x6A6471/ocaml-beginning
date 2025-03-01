let rec drop n = function
  | [] -> []
  | hd :: tl -> if n = 0 then hd :: tl else drop (n - 1) tl
;;

let rec take n = function
  | [] -> []
  | hd :: tl -> if n = 0 then [] else hd :: take (n - 1) tl
;;

let rec length = function
  | [] -> 0
  | _ :: tl -> 1 + length tl
;;

let rec merge x y =
  match x, y with
  | [], r -> r
  | l, [] -> l
  | hx :: tx, hy :: ty ->
    if hx < hy then hx :: merge tx (hy :: ty) else hy :: merge (hx :: tx) ty
;;

let rec msort lst =
  match lst with
  | [] -> []
  | [ x ] -> [ x ]
  | _ ->
    let half = length lst / 2 in
    let left = take half lst in
    let right = drop half lst in
    merge (msort left) (msort right)
;;
