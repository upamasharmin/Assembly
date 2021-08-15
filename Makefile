#use command "make SHELL=cmd"

input = input.txt
output = output.txt

main: cal.l
	flex cal.l
	gcc lex.yy.c
	a <$(input)> $(output)

main2: cal.l cal.y
	bison -d cal.y 
	flex cal.l 
	gcc cal.tab.c lex.yy.c
	a <$(input)> $(output)

main3: prog.l prog.y
	bison -d prog.y 
	flex prog.l 
	gcc prog.tab.c lex.yy.c
	a <$(input)> $(output)
	


