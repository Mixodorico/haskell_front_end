package main


func p() void{
  
  x,y,z := true,true,true
  
  for x&&y||z {
    p()
    if x||y&&z {
      x = false
    } else {
      y = false
    }
  }
  
}
