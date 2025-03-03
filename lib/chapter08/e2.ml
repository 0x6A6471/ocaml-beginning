let rec replace k v = function
  | [] -> raise Not_found
  | (k', v') :: tl ->
    if k' = k then (k, v) :: tl else (k', v') :: replace k v tl
;;
