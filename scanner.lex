%{
#include <stdio.h>
#include <stdlib.h>
#include "output.hpp"

#include "attributes.hpp"
#ifndef YYSTYPE
#define YYSTYPE VarType*
#endif
//using namespace output;
#include "parser.tab.hpp"
//extern void errorLex(int);

%}

%option yylineno
%option noyywrap

letter 																		([a-zA-Z])
id_letter 																	([a-zA-Z0-9])
hex_letter																	([a-fA-F])
digit 																		([0-9])
hex_word																	({digit}|{hex_letter})
whitespace																	([\x9\xA\xD\x20])

%%

void 																		{ yylval = new VarType("VOID",""); return VOID;}
int 																		{ yylval = new VarType("INT",""); return INT;}
byte 																		{ yylval = new VarType("BYTE",""); return BYTE;}
b 																			return B;
bool 																		{ yylval = new VarType("BOOL",""); return BOOL;}
and 																		return AND;
or 																			return OR;
not 																		return NOT;
true 																		{ yylval = new VarType("BOOL","",true); return TRUE; }
false 																		{ yylval = new VarType("BOOL","",false); return FALSE; }
return 																		return RETURN;
if 																			return IF;
else 																		return ELSE;
while 																		return WHILE;
break 																		return BREAK;
\x3B																		return SC;
\x2C 																		return COMMA;
\x28																		{ return LPAREN;}
\x29																		{ return RPAREN;}
\x7B 																		{ return LBRACE;}
\x7D 																		{ return RBRACE;}
\x5B																		return LBRACK;
\x5D																		return RBRACK;
\x3D 																		return ASSIGN;
\x3D\x3D                                                                    { yylval = new VarType("","","=="); yylval->setOp("=="); return RELOP_EQUAL;}
\x21\x3D                                                                    { yylval = new VarType("","","!="); yylval->setOp("!="); return RELOP_EQUAL;}



\x3C                                                                        { yylval = new VarType("",""); yylval->setOp("<");return RELOP_NORMAL;}
\x3E                                                                        { yylval = new VarType("",""); yylval->setOp(">");return RELOP_NORMAL;}
\x3C\x3D                                                                    { yylval = new VarType("",""); yylval->setOp("<=");return RELOP_NORMAL;}
\x3E\x3D                                                                    { yylval = new VarType("",""); yylval->setOp(">=");return RELOP_NORMAL;}
\x2A                                                                        { yylval = new VarType("",""); yylval->setOp("*");return BINOP_MULT;}
\x2F                                                                        { yylval = new VarType("",""); yylval->setOp("/");return BINOP_MULT;}
\x2B                                                                        { yylval = new VarType("",""); yylval->setOp("+"); return BINOP_ADD;}
\x2D                                                                        { yylval = new VarType("",""); yylval->setOp("-");return BINOP_ADD;}
{letter}{id_letter}* 														{ yylval = new TEntry(yytext,""); return ID;}
0|[1-9]{digit}* 															{ yylval = new VarType("","",atoi(yytext)); return NUM; }
\x22([^\n\r\"\\]|\\[rnt"\\])+\x22											{ yylval = new VarType("STRING",""); return STRING;}
{whitespace}																;
\x2F\x2F[^\r\n]*[\r|\n|\r\n]?												;
<<EOF>>																		return EOF;
.																			{ errorLex(yylineno); exit(0); }

%%
