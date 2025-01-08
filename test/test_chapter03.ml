open Chapter03

let test_c1 () =
  Alcotest.(check bool) "not true" false (C1.not true);
  Alcotest.(check bool) "not false" true (C1.not false)
;;

let test_c2 () =
  Alcotest.(check int) "sum 5" 15 (C2.sum 5);
  Alcotest.(check int) "sum 10" 55 (C2.sum 10)
;;

let tests =
  let open Alcotest in
  [ test_case "not" `Quick test_c1; test_case "sum" `Quick test_c2 ]
;;
