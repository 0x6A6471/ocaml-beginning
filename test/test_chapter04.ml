open Chapter04

let test_e1 () =
  Alcotest.(check (list int)) "evens [2; 4; 2; 4; 2]" [ 4; 4 ] (E1.evens [ 2; 4; 2; 4; 2 ])
;;

let test_e2 () =
  Alcotest.(check int) "count_true [true; false; true]" 2 (E2.count_true [ true; false; true ]);
  Alcotest.(check int) "count_true' [true; false; true]" 2 (E2.count_true' [ true; false; true ])
;;

let test_e3 () =
  Alcotest.(check bool) "is_palindrome ['a'; 'b'; 'c']" false (E3.is_palindrome [ 'a'; 'b'; 'c' ]);
  Alcotest.(check bool)
    "is_palindrome ['a'; 'b'; 'c'; 'd'; 'e']"
    true
    (E3.is_palindrome [ 'a'; 'b'; 'c'; 'b'; 'a' ])
;;

let test_e4 () =
  Alcotest.(check (list int)) "drop_last [1; 2; 4; 8]" [ 1; 2; 4 ] (E4.drop_last [ 1; 2; 4; 8 ])
;;

let tests =
  let open Alcotest in
  [ test_case "evens" `Quick test_e1
  ; test_case "count_true" `Quick test_e2
  ; test_case "is_palindrome" `Quick test_e3
  ; test_case "drop_last" `Quick test_e4
  ]
;;
