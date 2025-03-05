let union a b =
  let rec aux acc b =
    match b with
    | [] -> acc
    | (k, v) :: tl ->
      let exists = E5.lookup k a in
      if exists then aux acc tl else aux ((k, v) :: acc) tl
  in
  let rec append_lists a b =
    match a with
    | [] -> b
    | hd :: tl -> hd :: append_lists tl b
  in
  append_lists a (List.rev (aux [] b))
;;
