open Week1.Ex_1

let () =
  let date = Sys.argv.(1) |> int_of_string in
  let month = Sys.argv.(2) in
  Printf.printf "Valid date: %b\n" (valid_date date month)
