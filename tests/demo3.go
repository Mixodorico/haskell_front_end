package main

// for testing purposes, I suggest commenting out two of the loop statements using /* ... */
// and verifying the one left out

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
  
  // do-while statement
  do {
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
  } for i<10
  
  // for statement
  for i:=0; i<10; i=i+1 {
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
