let rec filter f = function
  | [] -> []
  | hd :: tl -> begin
    match f hd with
    | true -> hd :: filter f tl
    | false -> filter f tl
  end
;;
