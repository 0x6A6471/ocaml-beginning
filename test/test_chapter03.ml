open Chapter03

(* The tests *)
let test_c1 () =
  let expected = 100 in
  let actual = C1.multiply 10 in
  Alcotest.(check int) "Multiply 10 by 10" expected actual
;;

let tests =
  let open Alcotest in
  [ test_case "mulitply 10" `Quick test_c1 ]
;;
