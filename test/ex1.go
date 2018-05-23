package programma
/*
Raccogliamo un po' di definizioni ed assegnamenti
*/


func sum (x, y int) *int {
    y := x *(y+2*((5)))
    x = *y
	b :=&a
    var boolean = true
    var e int 
    var ciao char = 'a'
    var stringa string = "LALR CBC marieeeeee"
    var uno, due int = 5 , 6
    //var fsf float = 2.0
    var car = 'a' // senza tipo 
    var a, b, c = 3, 4, "foo"
	x= *b
    var arr[10][10] bool
    arr [3][5] =true
    arr [7][5] = arr[3][1]
    x += 5
    x -= 49846
    x *= 56
    x /= 655
    //x++
    x = -5
    writeFloat ("dsdsds")
    readFloat()
    return *x
}

func zeroptr(iptr *int) void {
    iptr = 0
    var cacca **int 
    iptr = ******cacca
}
