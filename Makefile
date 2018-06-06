base = Go

all:
	happy -gcai ParGo.y
	alex -g LexGo.x
	ghc --make TestGo.hs -o Go

LEX = alex -g
PAR = happy -gca
GHC = ghc

$(base): LexGo.hs ParGo.hs AbsGo.hs PrintGo.hs TestGo.hs Structures.hs
	$(GHC) $^ -w -o $@

Parser.hs: ParGo.y
	$(PAR) $<

Lexer.hs: LexGo.x
	$(LEX) $<

.PHONY : clean
clean:
	-rm -fv $(base) Parser.hs Lexer.hs *.o *.hi *.bak

.PHONY : ex1
ex1: $(base)
	-./$(base) ./tests/ex1.go
	
.PHONY : ex11
ex11: $(base)
	-./$(base) ./tests/ex11.go
	
.PHONY : ex2
ex2: $(base)
	-./$(base) ./tests/ex2.go

.PHONY : ex3
ex3: $(base)
	-./$(base) ./tests/ex3.go

.PHONY : ex4
ex4: $(base)
	-./$(base) ./tests/ex4.go

.PHONY : ex5
ex5: $(base)
	-./$(base) ./tests/ex5.go

.PHONY : ex6
ex6: $(base)
	-./$(base) ./tests/ex6.go
	
.PHONY : ex11
ex7: $(base)
	-./$(base) ./tests/ex11.go
	
.PHONY : prova
ex8: $(base)
	-./$(base) ./tests/prova.go
