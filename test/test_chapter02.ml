open Chapter02

let test_b1 () =
  let expected = 100 in
  let actual = B1.multiply_10 10 in
  Alcotest.(check int) "Multiply 10 by 10" expected actual
;;

let test_b2 () =
  Alcotest.(check bool) "non_zeros 0 0" false (B2.non_zeros 0 0);
  Alcotest.(check bool) "non_zeros 0 0" false (B2.non_zeros 0 1);
  Alcotest.(check bool) "non_zeros 0 0" false (B2.non_zeros 1 0);
  Alcotest.(check bool) "non_zeros 0 0" true (B2.non_zeros 1 1)
;;

let test_b3 () =
  Alcotest.(check int) "sum 3" 15 (B3.sum 5);
  Alcotest.(check int) "sum 3" 6 (B3.sum 3)
;;

let test_b4 () =
  Alcotest.(check int) "power 0 1" 0 (B4.power 0 1);
  Alcotest.(check int) "power 0 1" 0 (B4.power 0 1);
  Alcotest.(check int) "power 2 0" 1 (B4.power 2 0);
  Alcotest.(check int) "power 1 1" 1 (B4.power 1 1);
  Alcotest.(check int) "power 2 2" 4 (B4.power 2 2);
  Alcotest.(check int) "power 5 5" 3125 (B4.power 5 5)
;;

let tests =
  let open Alcotest in
  [ test_case "mulitply" `Quick test_b1
  ; test_case "non_zeros" `Quick test_b2
  ; test_case "sum" `Quick test_b3
  ; test_case "power" `Quick test_b4
  ]
;;
