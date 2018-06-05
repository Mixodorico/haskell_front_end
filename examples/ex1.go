package main


func sum (x, y int) bool {
	a :=x+y
	b :=&a
	x= *b
return x
}
