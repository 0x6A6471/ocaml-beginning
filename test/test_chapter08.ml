open Chapter08

let test_e1 () =
  Alcotest.(check int)
    "diff_keys [(1, 2); (2, 3)]"
    2
    (E1.diff_keys [ 1, 2; 2, 3 ])
;;

let tests =
  let open Alcotest in
  [ test_case "diff_keys" `Quick test_e1 ]
;;
