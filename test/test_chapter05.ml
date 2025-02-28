open Chapter05

let test_e1 () =
  Alcotest.(check (list int))
    "msort [53; 9; 2; 6; 19]"
    [ 2; 6; 9; 19; 53 ]
    (E1.msort [ 53; 9; 2; 6; 19 ])
;;

let test_e4 () =
  Alcotest.(check bool) "sorted []" true (E4.sorted []);
  Alcotest.(check bool) "sorted [1; 2; 3]" true (E4.sorted [ 1; 2; 3 ]);
  Alcotest.(check bool) "sorted [1; 4; 2; 3]" false (E4.sorted [ 1; 4; 2; 3 ]);
  Alcotest.(check bool)
    "sorted ['a'; 'b'; 'd'; 'c']"
    false
    (E4.sorted [ 'a'; 'b'; 'd'; 'c' ]);
  Alcotest.(check bool)
    "sorted ['a'; 'b'; 'c'; 'd']"
    true
    (E4.sorted [ 'a'; 'b'; 'c'; 'd' ]);
  Alcotest.(check bool)
    "sorted ['a'; 'b'; 'd'; 'd']"
    true
    (E4.sorted [ 'a'; 'b'; 'd'; 'd' ])
;;

let tests =
  let open Alcotest in
  [ test_case "msort" `Quick test_e1; test_case "sorted" `Quick test_e4 ]
;;
