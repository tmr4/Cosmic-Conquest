: <BUILDS 0  CONSTANT ;
: ENDIF POSTPONE THEN ; IMMEDIATE

: HOME ; 
: VHTAB AT-XY ;
: H1 ; 
: HCLR PAGE ; \ *** TODO: this needs to redraw headings ***
: HCOLOUR DROP ;
: HLINE DROP DROP ;
: HPOSN DROP DROP ;
: SCALE DROP ;
: SKETCH X @ Y @ VHTAB EMIT ; \ *** TODO:  this needs to place symbol at X,Y ***

: MINUS NEGATE ;
: -DUP DUP IF DUP THEN ;
: SP! DSP0 DEPTH - !;
: ?TERMINAL ?KEY ;
