To run:

```
lex filename.lex
yacc -d filename.y
cc lex.yy.c y.tab.c -ll -ly
./a.out
```
