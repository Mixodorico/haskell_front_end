base = Go

LEX = alex -g
PAR = happy -gca
GHC = ghc


# $(base): LexGo.hs Parser.hs TypeChecker.hs AbstractSyntaxTree.hs PrettyPrinter.hs TacGen.hs TacPrettyPrinter.hs TacAST.hs
$(base): LexGo.hs ParGo.hs TypeChecker.hs AbsGo.hs PrintGo.hs TestGo.hs
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

.PHONY : prova
prova: $(base)
	-./$(base) ./tests/prova.go
