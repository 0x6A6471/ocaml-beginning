open Chapter03

let test_c1 () =
  Alcotest.(check bool) "not true" false (C1.not true);
  Alcotest.(check bool) "not false" true (C1.not false)
;;

let test_c2 () =
  Alcotest.(check int) "sum 5" 15 (C2.sum 5);
  Alcotest.(check int) "sum 10" 55 (C2.sum 10)
;;

let test_c3 () =
  Alcotest.(check int) "power 0 1" 0 (C3.power 0 1);
  Alcotest.(check int) "power 2 0" 1 (C3.power 2 0);
  Alcotest.(check int) "power 1 1" 1 (C3.power 1 1);
  Alcotest.(check int) "power 2 2" 4 (C3.power 2 2);
  Alcotest.(check int) "power 5 5" 3125 (C3.power 5 5)
;;

let test_c5 () = Alcotest.(check int) "run" 5 C5.run

let test_c6 () =
  Alcotest.(check bool) "is_lower 'a'" true (C6.is_lower 'a');
  Alcotest.(check bool) "is_lower 'A'" false (C6.is_lower 'A');
  Alcotest.(check bool) "is_upper 'a'" false (C6.is_upper 'a');
  Alcotest.(check bool) "is_upper 'A'" true (C6.is_upper 'A')
;;

let tests =
  let open Alcotest in
  [ test_case "not" `Quick test_c1
  ; test_case "sum" `Quick test_c2
  ; test_case "power" `Quick test_c3
  ; test_case "run" `Quick test_c5
  ; test_case "lower upper fns" `Quick test_c6
  ]
;;
