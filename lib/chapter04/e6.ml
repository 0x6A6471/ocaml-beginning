let rec make_set = function
  | [] -> []
  | hd :: tl ->
    (match E5.member hd tl with
     | true -> make_set tl
     | false -> hd :: make_set tl)
;;
