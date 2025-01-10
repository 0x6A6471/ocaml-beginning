open Chapter04

let test_e1 () =
  Alcotest.(check (list int)) "evens [2; 4; 2; 4; 2]" [ 4; 4 ] (E1.evens [ 2; 4; 2; 4; 2 ])
;;

let test_e2 () =
  Alcotest.(check int) "count_true [true; false; true]" 2 (E2.count_true [ true; false; true ]);
  Alcotest.(check int) "count_true' [true; false; true]" 2 (E2.count_true' [ true; false; true ])
;;

let tests =
  let open Alcotest in
  [ test_case "evens" `Quick test_e1; test_case "count_true" `Quick test_e2 ]
;;
