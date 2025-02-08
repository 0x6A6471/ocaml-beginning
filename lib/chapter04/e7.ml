let make_set lst =
  let rec aux acc = function
    | [] -> List.rev acc
    | hd :: tl ->
      (match E5.member hd tl with
       | true -> aux acc tl
       | false -> aux (hd :: acc) tl)
  in
  aux [] lst
;;
