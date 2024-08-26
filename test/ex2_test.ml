open OUnit2
open Week1.Ex_2

let test_powerset l e =
  assert_equal (powerset l) e

let test_suite =
  "Exercise 2 Test Suite" >::: [
    "Test empty set"        >:: (fun _ -> test_powerset [] [[]]);
    "Test one element set"  >:: (fun _ -> test_powerset [1] [[1];[]]);
    "Test two element set"  >:: (fun _ -> test_powerset [1;2] [[1;2];[1];[2];[]]);
  ]

let () =
  print_endline "Testing Exercise 2";
  run_test_tt_main test_suite
