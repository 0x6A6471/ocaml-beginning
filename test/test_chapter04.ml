open Chapter04

let test_e1 () =
  Alcotest.(check (list int)) "evens [2; 4; 2; 4; 2]" [ 4; 4 ] (E1.evens [ 2; 4; 2; 4; 2 ])
;;

let tests =
  let open Alcotest in
  [ test_case "evens" `Quick test_e1 ]
;;
