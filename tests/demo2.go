package main

var rexp int = 100

func arithmetic_function () float {
    
  i1 := 4
  f1 := rexp + i1 + 6.0   
    
  rexp = rexp+i1*2
  mod := 5 % i1

  f1 = arithmetic_function () / mod
  
  return f1
}


var arrI[3] float

func arithmetic_procedure () void {

  arrI [1] = 1+2+3+4
  
  i1 := readInt()
  
  var b1,b2,b3 bool

  func internal_procedure () void
  {
    b1 =  false
    b2 =  true
    b3 =  false
    
    // guard evaluated with short-cuts
    if b1 && b2 || b3 {
      s1 := "if_block_OR"
    }else{
      s1 := "else_block_OR" 
    }
  }
      
  internal_procedure()

}

