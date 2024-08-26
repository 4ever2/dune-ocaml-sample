let rec powerset = function
  | [] -> [ [] ]
  | x :: xs ->
    let p = powerset xs in
    List.map (List.cons x) p @ p
