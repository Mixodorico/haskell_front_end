all:
	happy -gca ParGo.y
	alex -g LexGo.x
	ghc --make TestGo.hs -o TestGo

clean:
	-rm -f *.log *.aux *.hi *.o *.dvi

distclean: clean
	-rm -f DocGo.* LexGo.* ParGo.* LayoutGo.* SkelGo.* PrintGo.* TestGo.* AbsGo.* TestGo ErrM.* SharedString.* ComposOp.* go.dtd XMLGo.* Makefile*
	

