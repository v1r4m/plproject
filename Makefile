default:
	bison -d ex1.ypp
	flex ex1.l
	g++ -o mycalc ex1.tab.cpp lex.yy.c