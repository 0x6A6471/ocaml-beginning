open Chapter08

let test_e1 () =
  Alcotest.(check int)
    "diff_keys [(1, 2); (2, 3)]"
    2
    (E1.diff_keys [ 1, 2; 2, 3 ])
;;

let test_e2 () =
  Alcotest.(check (list (pair int int)))
    "replace 1 2 [(2, 3); (1, 4); (3, 2)]"
    [ 2, 3; 1, 2; 3, 2 ]
    (E2.replace 1 2 [ 2, 3; 1, 4; 3, 2 ]);
  Alcotest.check_raises
    "replace raises Not_found when key is missing"
    Not_found
    (fun () -> ignore (E2.replace 1 2 [ 2, 3; 4, 4; 3, 2 ]))
;;

let tests =
  let open Alcotest in
  [ test_case "diff_keys" `Quick test_e1; test_case "replace" `Quick test_e2 ]
;;
