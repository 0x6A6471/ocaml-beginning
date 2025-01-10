open Chapter02

let test_e1 () =
  let expected = 100 in
  let actual = E1.multiply_10 10 in
  Alcotest.(check int) "Multiply 10 by 10" expected actual
;;

let test_e2 () =
  Alcotest.(check bool) "non_zeros 0 0" false (E2.non_zeros 0 0);
  Alcotest.(check bool) "non_zeros 0 0" false (E2.non_zeros 0 1);
  Alcotest.(check bool) "non_zeros 0 0" false (E2.non_zeros 1 0);
  Alcotest.(check bool) "non_zeros 0 0" true (E2.non_zeros 1 1)
;;

let test_e3 () =
  Alcotest.(check int) "sum 3" 15 (E3.sum 5);
  Alcotest.(check int) "sum 3" 6 (E3.sum 3)
;;

let test_e4 () =
  Alcotest.(check int) "power 0 1" 0 (E4.power 0 1);
  Alcotest.(check int) "power 2 0" 1 (E4.power 2 0);
  Alcotest.(check int) "power 1 1" 1 (E4.power 1 1);
  Alcotest.(check int) "power 2 2" 4 (E4.power 2 2);
  Alcotest.(check int) "power 5 5" 3125 (E4.power 5 5)
;;

let test_e5 () =
  Alcotest.(check bool) "is_consonant a" false (E5.is_consonant 'a');
  Alcotest.(check bool) "is_consonant x" true (E5.is_consonant 'x')
;;

let test_e6 () = Alcotest.(check int) "add_x" 4 E6.add_x

let test_e7 () =
  Alcotest.(check int) "fact 0" 1 (E7.fact 0);
  Alcotest.(check int) "fact 1" 1 (E7.fact 1);
  Alcotest.(check int) "fact 5" 120 (E7.fact 5);
  Alcotest.(check int) "fact -5" (-120) (E7.fact (-5))
;;

let tests =
  let open Alcotest in
  [ test_case "mulitply" `Quick test_e1
  ; test_case "non_zeros" `Quick test_e2
  ; test_case "sum" `Quick test_e3
  ; test_case "power" `Quick test_e4
  ; test_case "is_consonant" `Quick test_e5
  ; test_case "add_x" `Quick test_e6
  ; test_case "fact" `Quick test_e7
  ]
;;
