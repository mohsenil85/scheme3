#!/bin/bash
lex ex.l; yacc -d ex.y; cc lex.yy.c y.tab.c -o ex; ./ex
