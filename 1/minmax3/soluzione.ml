let minof3 a b c = min (min a b) c;;
let maxof3 a b c = max (max a b) c;;

let minmax3 a b c = ((minof3 a b c),(maxof3 a b c));;