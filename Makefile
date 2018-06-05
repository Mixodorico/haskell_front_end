all:
	happy -gcai ParGo.y
	alex -g LexGo.x
	ghc --make TestGo.hs -o Testgo

clean:
	-rm -f *.bak *.log *.aux *.hi *.o *.dvi
	-rm -f Docgo.ps

demo1: 
	./Testgo ./examples/ex1.go

demo2: 
	./Testgo ./examples/ex2.go

demo3: 
	./Testgo ./examples/ex3.go

demo4: 
	./Testgo ./examples/ex4.go

demo5: 
	./Testgo ./examples/ex5.go

demo6: 
	./Testgo ./examples/ex6.go
