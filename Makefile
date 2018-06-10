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

.PHONY : demo1
demo1: $(base)
	-./$(base) ./tests/demo1.go
	
.PHONY : demo2
demo2: $(base)
	-./$(base) ./tests/demo2.go
	
.PHONY : demo3
demo3: $(base)
	-./$(base) ./tests/demo3.go 

.PHONY : demo
demo: $(base)
	-./$(base) ./tests/demo1.go ./tests/demo2.go ./tests/demo3.go

