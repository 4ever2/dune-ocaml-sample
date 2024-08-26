type 'a tree = Leaf | Node of 'a * 'a tree * 'a tree

let rec depth = function
  | Leaf -> 0
  | Node (_, left, right) -> 1 + max (depth left) (depth right)

let rec same_shape t1 t2 =
  match t1, t2 with
  | Leaf, Leaf -> true
  | Node (_,l1,r1), Node (_,l2,r2) -> (same_shape l1 l2) && (same_shape r1 r2)
  | _ -> false
