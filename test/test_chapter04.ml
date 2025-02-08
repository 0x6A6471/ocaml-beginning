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

let test_e5 () =
  Alcotest.(check bool) "member 2 [1; 2; 3]" true (E5.member 2 [ 1; 2; 3 ]);
  Alcotest.(check bool) "member 3 [1; 2]" false (E5.member 3 [ 1; 2 ])
;;

let test_e6 () =
  Alcotest.(check (list int)) "make_set [1; 2; 3; 3; 1]" [ 2; 3; 1 ] (E6.make_set [ 1; 2; 3; 1 ])
;;

let test_e7 () =
  Alcotest.(check (list int)) "make_set [1; 2; 3; 3; 1]" [ 2; 3; 1 ] (E7.make_set [ 1; 2; 3; 1 ])
;;

let tests =
  let open Alcotest in
  [ test_case "evens" `Quick test_e1
  ; test_case "count_true" `Quick test_e2
  ; test_case "is_palindrome" `Quick test_e3
  ; test_case "drop_last" `Quick test_e4
  ; test_case "member" `Quick test_e5
  ; test_case "make_set" `Quick test_e6
  ; test_case "make_set" `Quick test_e7
  ]
;;
