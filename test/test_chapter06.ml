open Chapter06

let test_e1 () =
  Alcotest.(check (list char))
    "calm ['H'; 'e'; 'l'; 'p'; '!'; ' '; 'F'; 'i'; 'r'; 'e'; '!']"
    [ 'H'; 'e'; 'l'; 'p'; '.'; ' '; 'F'; 'i'; 'r'; 'e'; '.' ]
    (E1.calm [ 'H'; 'e'; 'l'; 'p'; '!'; ' '; 'F'; 'i'; 'r'; 'e'; '!' ])
;;

let tests =
  let open Alcotest in
  [ test_case "calm" `Quick test_e1 ]
;;
