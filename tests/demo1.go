package main

var i1 int
var i2 int = 0
var f1,f2 float = 6.5,1.5

func few_declarations_function () string {
     
    var s string = readString()
    var c char = readChar()
    
    writeChar(c)
    
    return s
}

func few_operations_procedure () void {
 
   i1 = 5
   
   b1,b2 := true,false
   var b3 bool = true
   // boolean assignments without short-cut
   b1 = b1 && b2
   b2 = b1 || b2
   b3 = b1 && b2 || !b3
   
   //implicit casting from int to float
   f1 = i1+i2
   writeFloat(f1+f2)
   
   var s_function string = few_declarations_function()
   
   writeString(few_declarations_function())
 
}


func few_pointers (p *int) void {
  
  var p1 **int
  var p2 int
  var p3 *int
  
  {
    *p3 = 3
  }
    
  p2 = **p1
  p3 = &p2
  
  few_pointers(p3)
  few_pointers(*p1)
  few_pointers(&p2)
 }

func few_arrays () int{
     
  var arrB[10] bool
  arrB[3] = true
  arrB[7] = arrB[3]
  
  var matI[2][3] int
  matI[1][1] = i2
  
  return matI[1][1]
}
