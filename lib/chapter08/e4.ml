let get_dict_values lst =
  let rec aux keys vals = function
    | [] -> List.rev keys, List.rev vals
    | (k, v) :: tl -> aux (k :: keys) (v :: vals) tl
  in
  aux [] [] lst
;;
