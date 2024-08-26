(* returns: all elements in [lst] that have length greater than 3.
*)
let at_least_three lst =
  List.filter (fun s -> String.length s > 3) lst

(* returns: [lst] with each element incremented by [1.0].
*)
let add_one lst =
  List.map (fun x -> x +. 1.0) lst

(* returns: [s] where [s] is the concatenation of all elements in
 *   [strs] seperated by [sep].
*)
let join_with strs sep =
  match strs with
  | [] -> ""
  | x :: xs ->
    List.fold_left (fun combined s -> combined ^ sep ^ s) x xs
