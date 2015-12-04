let iters = int_of_string (Sys.argv.(1)) in
let l = ["Eline VDV";"Joris";"Sebastiaan";"Dirk";"Kristof";"Eline H";"Pieter"] in
let shuffle d =
  let nd = List.map (fun c -> (Random.bits (), c)) d in
  let sond = List.sort compare nd in
  List.map snd sond
in
let () = Printf.printf "The circle....." in
let print_c l = Printf.printf "%s -> %s -> " (List.nth l 0) (List.nth l 1) in
let rec loop i l =
  if i < 0 then
    ()
  else
    loop (i-1) (shuffle l)
in
let () = loop iters l in
let l = shuffle l in
let _ = List.fold_left
( fun (i, couple) name ->
  let couple = (List.rev (name::couple)) in
  if ((i>0) && i mod 2 <> 0) then
    let () = print_c couple in
    ((i+1), [])
  else
    ((i+1), couple)
) (0,[]) l
in
let count = List.length l in
if count mod 2 = 0 then
  Printf.printf " ....\n"
else
  let last_one = (List.hd (List.rev l)) in
  Printf.printf " %s....\n" last_one
