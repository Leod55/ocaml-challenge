type season = Spring | Summer | Autumn | Winter

let squirrel_play t s = match s with
|(Summer) -> if (t>=15 && t<=35) then true else false
| _ -> if (t>=15 && t<=30) then true else false;;

assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;



  (*if s=Summer then 
  if (t>=15 && t<=35) then true else false 
  else
  if *)