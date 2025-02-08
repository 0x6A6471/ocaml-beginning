let rec member n = function
  | [] -> false
  | hd :: tl ->
    (match hd = n with
     | true -> true
     | false -> member n tl)
;;
