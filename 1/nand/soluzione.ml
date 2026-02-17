let nand a b = (not(a && b));;

let nand a b = if (a && b) then false else true;;

let nand a b = match (a, b) with (false, _) -> true | (_, false) -> true | _ -> false;;