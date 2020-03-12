#! /bin/sh
oper=OP_WtsnAdmin
rm -f *.def
~/apex/apex.sh Export APPLICATION -outf APPLICATION.def -oi $oper
~/apex/apex.sh Export FLOW -outf FLOW.def -oi $oper


