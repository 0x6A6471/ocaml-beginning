let rec dict_create keys vals =
  match keys, vals with
  | [], [] -> []
  | [], _ :: _ -> raise (Invalid_argument "unequal lists")
  | _ :: _, [] -> raise (Invalid_argument "unequal lists")
  | hd :: tl, hd' :: tl' -> (hd, hd') :: dict_create tl tl'
;;
