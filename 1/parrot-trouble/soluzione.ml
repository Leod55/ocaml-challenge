let parrot isT hour = if hour<0 || hour>23 then None else
  if not(isT) then Some false 
  else if (hour<7 || hour>20) then Some true
  else Some false;;
  

  