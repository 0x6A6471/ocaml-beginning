let rec evens = function
  | [] | _ :: [] -> []
  | _ :: snd :: tl -> snd :: evens tl
;;
