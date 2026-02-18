let is_even a = a mod 2 = 0;;

let isV a = if (a<1 || a>5) then true else false;;

let win a b = if (isV a && isV b) then failwith "valori non validi" else
  if ((not(isV a) && isV b) || is_even (a+b)) then a else b;;

win 2 4;;
win 5 2;;
win 6 1;;
win 1 6;;



