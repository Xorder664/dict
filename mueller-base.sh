#!/bin/bash
# 
WORD=`echo $1 | sed -e 's/[A-Z]*/&/g;s/[,.;:]//g'`;
if [ -z $WORD ]; then exit; fi;
LINES=50;  
DICTIONARY="$HOME/Soft/dict/mueller-base.dict.dz"; 
# 
zgrep -aA$LINES '^'$WORD'$' $DICTIONARY | sed -e '/^$/d; 1s/^/ &/;/^[^ ]/,$d'
#
