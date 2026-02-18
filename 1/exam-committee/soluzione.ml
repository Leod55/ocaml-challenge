type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

let decide_exam v1 v2 v3 = 
  if (v1=StrongReject || v2=StrongReject || v3=StrongReject) then false else
  
    let score v = match v with 
    | WeakAccept | StrongAccept -> 1
    | _ -> 0
    in

  if (score v1 + score v2 + score v3)>=2 then true else false;; 

  



