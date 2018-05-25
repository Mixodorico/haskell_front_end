package programma
/*
Raccogliamo un po' di definizioni ed assegnamenti
*/


func sum (x, y int) *int {
    
    // dichiarazioni 
    var intero int 
    var carattere char = 'a'
    var stringa string = "Stringa"
    var boolean = true
    var floating float = 2.0
    
    // doppia dichiarazione
    var uno, due int = 5 , 6
    
    // dichiarazioni senza tipo
    var car = 'a'
    var a, b, c = 3, 4, "foo"
    
    // dichiarazioni strette
    y := x *(y+2*((5)))
	b :=&a
        
    // dichiarazione con operatore
    x += 5
    x -= 49846
    x *= 56
    x /= 655
    x = -5
    
    // dichiarazione vettore
    var vettore [5] string
    var matrice [10][10] bool
    
    //LExp
    x++
    variabile_a_caso
    
    // assegnamento variabili 
    x = 5
    stringa = ""
	x = *b
    x++ = y++

    // assegnamento vettori
    arr [3][5] =true
    arr [7][5] = arr[3][1]
    
    // chiamata di funzione
    y = f(*h)
    
    writeFloat ("dsdsds")
    readFloat()
    return *x
}

func zeroptr(iptr *int) void {
    iptr = 0
    var cacca **int 
    iptr = ******cacca
}
