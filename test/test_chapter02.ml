open Chapter02

(* The tests *)
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

let tests =
  let open Alcotest in
  [ test_case "mulitply 10" `Quick test_b1; test_case "non_zeros 0 0" `Quick test_b2 ]
;;
