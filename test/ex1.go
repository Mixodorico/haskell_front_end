package main

func sum (x, y int) int {
	a :=x+y
	b :=&a
	x= *b
    a = sum(x,y)
    if true {
        return 3
        }else{
            return 5
        }
    return 6
            
}






	



