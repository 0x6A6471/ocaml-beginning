open Chapter07

let test_e1 () =
  Alcotest.(check int) "smallest [1; 0; 3]" 1 (E1.smallest [ 1; 2; 3 ]);
  Alcotest.check_raises "smallest [] raises Not_found" Not_found (fun () -> ignore (E1.smallest []));
  Alcotest.check_raises "smallest [-1; -2] raises Not_found" Not_found (fun () ->
    ignore (E1.smallest [ -1; -2 ]))
;;

let test_e2 () =
  Alcotest.(check int) "smallest_or_zero [1; 0; 3]" 1 (E2.smallest_or_zero [ 1; 2; 3 ]);
  Alcotest.(check int) "smallest_or_zero []" 0 (E2.smallest_or_zero []);
  Alcotest.(check int) "smallest_or_zero [-1; -2]" 0 (E2.smallest_or_zero [ -1; -2 ])
;;

let test_e3 () =
  Alcotest.(check int) "largest_int_sqrt 25" 5 (E3.largest_int_sqrt 25);
  Alcotest.(check int) "largest_int_sqrt 0" 0 (E3.largest_int_sqrt 0);
  Alcotest.check_raises "largest_int_sqrt -5" E3.NegativeSqRt (fun () ->
    ignore (E3.largest_int_sqrt (-5)))
;;

let tests =
  let open Alcotest in
  [ test_case "smallest" `Quick test_e1
  ; test_case "smallest_or_zero" `Quick test_e2
  ; test_case "largest_int_sqrt" `Quick test_e3
  ]
;;
