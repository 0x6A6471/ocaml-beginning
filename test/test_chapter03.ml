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

let tests =
  let open Alcotest in
  [ test_case "not" `Quick test_c1
  ; test_case "sum" `Quick test_c2
  ; test_case "power" `Quick test_c3
  ]
;;
