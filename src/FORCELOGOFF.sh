#!/usr/bin/expect -f
 
set operatorid [lindex $argv 0];
set console [lindex $argv 1];

set timeout 20
spawn /SYM/SYMPR/symop
sleep 4
expect "*Operator Id"
send -- "$operatorid\r"
expect ">"
send -- "FORCELOGOFF\r"
expect "*Consoles to Force Off"
send -- "$console\r"
expect ">"
send -- "EXIT\r"
expect eof