type card = Joker | Val of int;;

let win c1 c2 = match (c1,c2) with
|(Joker,Joker) -> false
|(Joker, Val _) -> true
|(Val _,Joker) -> false
|(Val c1, Val c2) -> 
  if ((c1<1 ||c1>10) || (c2<1 ||c2>10)) then failwith "valori non corretti" else 
    if c1>c2 then true else false;;


win Joker (Val 5);;      (* true *)
win (Val 10) (Val 2);;   (* true *)
win (Val 2) (Val 10);;   (* false *)
win Joker Joker;;        (* false *)
win (Val 11) (Val 2);;   (* Exception: Failure ... *)