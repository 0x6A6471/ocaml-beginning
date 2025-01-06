let () =
  let open Alcotest in
  run
    "Project Tests"
    [ "Chapter 02 Tests", Test_chapter02.tests; "Chapter 03 Tests", Test_chapter03.tests ]
;;
