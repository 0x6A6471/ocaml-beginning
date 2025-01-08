open Chapter03

let test_c1 () =
  Alcotest.(check bool) "not true" false (C1.not true);
  Alcotest.(check bool) "not false" true (C1.not false)
;;

let tests =
  let open Alcotest in
  [ test_case "not" `Quick test_c1 ]
;;
