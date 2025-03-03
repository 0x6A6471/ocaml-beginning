let rec diff_keys = function
  | [] -> 0
  | _ :: tl -> 1 + diff_keys tl
;;
