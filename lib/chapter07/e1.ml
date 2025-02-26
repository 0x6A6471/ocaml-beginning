let smallest lst =
  let rec aux low = function
    | [] -> if low = -1 then raise Not_found else low
    | hd :: tl -> if hd > -1 && (hd < low || low = -1) then aux hd tl else aux low tl
  in
  aux (-1) lst
;;
