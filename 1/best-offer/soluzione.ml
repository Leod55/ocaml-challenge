let best_offer a b c = if (a=None && b=None && c=None) then None else
  max (max a b) c;;

best_offer (Some 100) (Some 200) (Some 150);;

best_offer (Some 100) None (Some 150);;

best_offer None None None;;

best_offer None (Some 300) None;;