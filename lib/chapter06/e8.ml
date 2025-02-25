let add_one x = x + 1

let rec map f = function
  | [] -> []
  | hd :: tl -> f hd :: map f tl
;;

let rec mapl f = function
  | [] -> []
  | hd :: tl -> map f hd :: mapl f tl
;;
