let rec lookup k = function
  | [] -> false
  | (k', _) :: tl -> if k' = k then true else lookup k tl
;;

let create_dict lst =
  let rec aux acc = function
    | [] -> List.rev acc
    | (k, v) :: tl ->
      let exists = lookup k acc in
      if exists then aux acc tl else aux ((k, v) :: acc) tl
  in
  aux [] lst
;;
