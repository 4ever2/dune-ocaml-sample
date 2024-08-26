open OUnit2
open Week1.Ex_1

let test_date d m e =
  assert_equal (valid_date d m) e

let test_suite =
  "Exercise 1 Test Suite" >::: [
    "Test lower case month"   >:: (fun _ -> test_date 1 "jan" false);
    "Test nonsense month"     >:: (fun _ -> test_date 1 "keo" false);
    "Test negative date"      >:: (fun _ -> test_date (-2) "Jan" false);
    "Test bounds jan lower"   >:: (fun _ -> test_date 1 "Jan" true);
    "Test bounds jan upper"   >:: (fun _ -> test_date 31 "Jan" true);
  ]

let () =
  print_endline "Testing Exercise 1";
  run_test_tt_main test_suite
