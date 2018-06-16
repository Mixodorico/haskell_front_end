package main

func p() void{
  
  x,y,z := true,true,true
  
  var cast float = 1
  xx := &x
  
  c := readChar()
  
  var a[10] *bool
  var b[10] float
  var c[10][1] int
  
  var g1,g2 bool
  var r1,r2 int
  
  func f (g int) *[10]*bool {
    r1 = g
    
    return &a
  }
  
  if x || y || z && readInt() == 99 {
    if x {
      x = false
    }
  } else {
    y = false
  }
  
  x = *a[readInt()+readInt()-c[1][1]]
  
  func p1 (i int) void {
    b[3] = i
  }
  
  p1(1)
  
  try
    c[2][2] = 4
  catch
    writeString("error")
  
}
