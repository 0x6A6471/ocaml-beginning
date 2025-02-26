open Chapter07

let test_e1 () =
  Alcotest.(check int) "smallest [1; 0; 3]" 0 (E1.smallest [ 1; 0; 3 ]);
  Alcotest.check_raises "smallest [] raises Not_found" Not_found (fun () -> ignore (E1.smallest []));
  Alcotest.check_raises "smallest [-1; -2] raises Not_found" Not_found (fun () ->
    ignore (E1.smallest [ -1; -2 ]))
;;

let tests =
  let open Alcotest in
  [ test_case "smallest" `Quick test_e1 ]
;;
