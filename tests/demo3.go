package main


func sequence_control() int{
			
  i,sum,never_update := 1,0,0
  b1,b2 := false,true
    
  // while statement
	for i<10 {
		i = i+1
        
		if b1 || b2 { 
        sum = i
        if(sum > i/2){
            sum = never_update
            continue 
            never_update = 1
        }
        continue 
        never_update = sum
		}else{
		    sum = sum % i
        break
        never_update = sum
		} 
	}
    
  return sum
}
