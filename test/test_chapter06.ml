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

let test_e3 () =
  Alcotest.(check (list int))
    "cliplist' [1; 5; 0; 12; 3]"
    [ 1; 5; 1; 10; 3 ]
    (E3.cliplist' [ 1; 5; 0; 12; 3 ])
;;

let test_e4 () = Alcotest.(check int) "apply add_one 6 4" 10 (E4.apply E4.add_one 6 4)

let test_e6 () =
  Alcotest.(check (list int))
    "filter evens [1; 2; 3]"
    [ 2 ]
    (E6.filter (fun x -> x mod 2 = 0) [ 1; 2; 3 ])
;;

let test_e7 () =
  Alcotest.(check bool) "for_all is_even [1; 2; 3]" false (E7.for_all E7.is_even [ 1; 2; 3 ]);
  Alcotest.(check bool) "for_all is_even [4; 2; 6]" true (E7.for_all E7.is_even [ 4; 2; 6 ])
;;

let test_e8 () =
  Alcotest.(check (list (list int)))
    "mapl add_one [[1; 2; 4] ; [3; 4]; []]"
    [ [ 2; 3; 5 ]; [ 4; 5 ]; [] ]
    (E8.mapl E8.add_one [ [ 1; 2; 4 ]; [ 3; 4 ]; [] ])
;;

let tests =
  let open Alcotest in
  [ test_case "calm" `Quick test_e1
  ; test_case "cliplist" `Quick test_e2
  ; test_case "cliplist'" `Quick test_e3
  ; test_case "apply" `Quick test_e4
  ; test_case "filter" `Quick test_e6
  ; test_case "for_all" `Quick test_e7
  ; test_case "mapl" `Quick test_e8
  ]
;;
