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
  Alcotest.(check int) "power 2 0" 1 (B4.power 2 0);
  Alcotest.(check int) "power 1 1" 1 (B4.power 1 1);
  Alcotest.(check int) "power 2 2" 4 (B4.power 2 2);
  Alcotest.(check int) "power 5 5" 3125 (B4.power 5 5)
;;

let test_b5 () =
  Alcotest.(check bool) "is_consonant a" false (B5.is_consonant 'a');
  Alcotest.(check bool) "is_consonant x" true (B5.is_consonant 'x')
;;

let test_b6 () = Alcotest.(check int) "add_x" 4 B6.add_x

let test_b7 () =
  Alcotest.(check int) "fact 0" 1 (B7.fact 0);
  Alcotest.(check int) "fact 1" 1 (B7.fact 1);
  Alcotest.(check int) "fact 5" 120 (B7.fact 5);
  Alcotest.(check int) "fact -5" (-120) (B7.fact (-5))
;;

let tests =
  let open Alcotest in
  [ test_case "mulitply" `Quick test_b1
  ; test_case "non_zeros" `Quick test_b2
  ; test_case "sum" `Quick test_b3
  ; test_case "power" `Quick test_b4
  ; test_case "is_consonant" `Quick test_b5
  ; test_case "add_x" `Quick test_b6
  ; test_case "fact" `Quick test_b7
  ]
;;
