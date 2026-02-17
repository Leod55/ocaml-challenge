let mux2 s0 a b = (not s0 && b) || (s0 && a);;

let mux2 s0 a b = if s0 then a else b;;

let mux2 s0 a b = match s0 with
| true -> a
| false -> b;;



let mux4 s0 s1 a0 a1 a2 a3 =  match (s0, s1) with 
| (false, false) -> a0 
| (false, true) -> a1
| (true, false) -> a2
| (true, true) -> a3;;

let mux4 s0 s1 a0 a1 a2 a3 = if s0 then (mux2 s1 a3 a2) else (mux2 s1 a1 a0);;
