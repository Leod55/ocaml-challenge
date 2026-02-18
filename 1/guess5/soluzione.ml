let guess5 n = if (n<1 || n>5) then failwith "valore non accettato" else 
  let r = Random.int(5)+1 in 
  ((n=r),(r));;