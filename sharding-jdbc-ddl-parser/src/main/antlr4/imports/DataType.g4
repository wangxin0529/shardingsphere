lexer grammar DataType;

import Keyword,Symbol;

STRING: 
	DOUBLE_QUOTA ('\\"'|.)*? DOUBLE_QUOTA
    |SINGLE_QUOTA (SINGLE_QUOTA |.)*? SINGLE_QUOTA
	;

ZERO:
    '0'
    ;

NUMBER:
     MINUS? INT_ DOT INT_+ EXP?
     |MINUS? INT_ | EXP
     |MINUS? INT_
     ;

INT_ :
   [0-9]+
   ;
          
EXP :
    E [+\-]? INT_
    ;
    
fragment HEX : 
	[0-9a-fA-F] 
	;
	
HEX_DIGIT:
	'0x' HEX+
	|'X' SINGLE_QUOTA HEX+ SINGLE_QUOTA
	;

BIT_NUM:
	('0b' ('0'|'1')+)
	|(B SINGLE_QUOTA ('0'|'1')+ SINGLE_QUOTA) 
	;
	
WS:  
	[ \t\r\n] + ->skip
	;
