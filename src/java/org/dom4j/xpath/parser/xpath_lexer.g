
header
{
	package org.dom4j.xpath.parser;

	/** Generated by <a href="http://www.antlr.org/">antlr parser-generator</a> */
}

class XPathLexer extends Lexer;
	options
	{
		charVocabulary='\3'..'\377';
		k = 3;
		importVocab=DefaultXPath;
	}

	tokens
	{
		KW_OR = "or";
		KW_AND = "and";
	}

WS
	:
		('\n' | ' ' | '\t' | '\r')+
		{
			$setType(Token.SKIP);
		}
	;

protected
DIGIT
	:
		('0'..'9')
	;

protected 
SINGLE_QUOTE_STRING
	:
		'\''! (~('\''))* '\''!
	;

protected
DOUBLE_QUOTE_STRING
	:
		'"'! (~('"'))* '"'!
	;

LITERAL
	:
		SINGLE_QUOTE_STRING | DOUBLE_QUOTE_STRING
	;

NUMBER
	:
		(DIGIT)+ ('.' (DIGIT)+)?
	;

IDENTIFIER

	options
	{
		testLiterals=true;
	}

	: 	
		('\241'..'\377'|'a'..'z'|'A'..'Z'|'_') ('\241'..'\377'|'a'..'z'|'A'..'Z'|'-'|'_'|'0'..'9'|'.')*	
	;

LEFT_PAREN
	:	'('		;

RIGHT_PAREN	
	:	')'		;

LEFT_BRACKET
	:	'['		;

RIGHT_BRACKET	
	:	']'		;
	
PIPE
	:	'|'		;

DOT
	:	'.'		;

DOT_DOT
	:	".."	;

AT
	:	'@'		;

COMMA
	:	','		;

DOUBLE_COLON
	:	"::"	;

COLON
	:	":"		;

SLASH
	:	'/'		;

DOUBLE_SLASH
	:	'/' '/'	;

DOLLAR_SIGN
	:	'$'		;

PLUS
	:	'+'		;

MINUS
	:	'-'		;

EQUALS
	:	'='		;

NOT_EQUALS
	:	"!="	;

LT
	:	'<'		;

LTE
	:	"<="	;

GT
	:	'>'		;

GTE
	:	">="	;

STAR
	:	'*'		;
