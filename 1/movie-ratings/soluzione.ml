let movie_rating r1 r2 r3 = 
  if ((r1<1 || r1>5) || (r2<1 || r2>5) || (r3<1 || r3>5)) then failwith "valori non validi"
  else 

    let count k = 
      (if r1>=k then 1 else 0) + (if r2>=k then 1 else 0) + (if r3>=k then 1 else 0) 
    in

  if (count 5 = 3) then "Masterpiece" else
    if (count 5 = 2 && count 4 = 3) then "Highly Recommended" else 
      if (count 4 = 2 && count 3 = 3) then "Recommended" else "Mixed Reviews";;




movie_rating 5 5 5;; (* "Masterpiece" *)
movie_rating 5 5 4;; (* "Highly Recommended" *)
movie_rating 5 4 5;; (* "Highly Recommended" (l'ordine non conta!) *)
movie_rating 4 4 3;; (* "Recommended" *)
movie_rating 5 5 3;; (* "Recommended" (2 sono >=4, tutti sono >=3) *)
movie_rating 4 4 2;; (* "Mixed Reviews" (il terzo è < 3) *)
movie_rating 1 5 5;; (* "Mixed Reviews" *)

(* Test Errore *)
movie_rating 6 5 5;; (* Exception: Failure "Voto non valido..." *)