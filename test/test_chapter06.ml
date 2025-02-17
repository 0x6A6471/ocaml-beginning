open Chapter06

let test_e1 () =
  Alcotest.(check (list char))
    "calm ['H'; 'e'; 'l'; 'p'; '!'; ' '; 'F'; 'i'; 'r'; 'e'; '!']"
    [ 'H'; 'e'; 'l'; 'p'; '.'; ' '; 'F'; 'i'; 'r'; 'e'; '.' ]
    (E1.calm [ 'H'; 'e'; 'l'; 'p'; '!'; ' '; 'F'; 'i'; 'r'; 'e'; '!' ])
;;

let test_e2 () =
  Alcotest.(check int) "clip 11" 10 (E2.clip 11);
  Alcotest.(check int) "clip -1" 1 (E2.clip (-1));
  Alcotest.(check int) "clip 5" 5 (E2.clip 5);
  Alcotest.(check (list int))
    "cliplist [1; 5; 0; 12; 3]"
    [ 1; 5; 1; 10; 3 ]
    (E2.cliplist [ 1; 5; 0; 12; 3 ])
;;

let tests =
  let open Alcotest in
  [ test_case "calm" `Quick test_e1; test_case "clip" `Quick test_e2 ]
;;
