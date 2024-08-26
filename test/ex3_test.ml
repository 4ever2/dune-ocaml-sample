open OUnit2
open Week1.Ex_3

let tree1 = Leaf
let tree2 = Node(1, Leaf, Node (2, Leaf, Leaf))
let tree3 = Node(1, Node(2, Leaf, Leaf), Node(3, Leaf, Leaf))
let tree4 = Node(1, Node(3, Leaf, Leaf), Node(2, Leaf, Leaf))

let test_tree_shape t1 t2 e =
  assert_equal (same_shape t1 t2) e

let test_suite =
  "Exercise 3 Test Suite" >::: [
    "Test 1"  >:: (fun _ -> test_tree_shape tree1 tree1 true);
    "Test 2"  >:: (fun _ -> test_tree_shape tree1 tree2 false);
    "Test 3"  >:: (fun _ -> test_tree_shape tree3 tree4 true);
    "Test 4"  >:: (fun _ -> test_tree_shape tree4 tree4 true);
  ]

let () =
  print_endline "Testing Exercise 3";
  run_test_tt_main test_suite
