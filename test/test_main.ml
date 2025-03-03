let () =
  let open Alcotest in
  run
    "Project Tests"
    [ "Chapter02 Tests", Test_chapter02.tests
    ; "Chapter03 Tests", Test_chapter03.tests
    ; "Chapter04 Tests", Test_chapter04.tests
    ; "Chapter05 Tests", Test_chapter05.tests
    ; "Chapter06 Tests", Test_chapter06.tests
    ; "Chapter07 Tests", Test_chapter07.tests
    ; "Chapter08 Tests", Test_chapter08.tests
    ]
;;
