#!/bin/bash
source ./test.sh

pt "enviroment_variable"
test 'export ABC=abc && echo $ABC'
test 'export ABC=abc && echo $ABC "" $ABC'
test 'export ABC=abc && echo ABC=4 $ABC'
test 'export ABC=abc && echo $ABC=4'
test 'export ABC=abc && echo $ABC.qwe'
test 'export ABC=abc && echo $ABCqwe'
test 'export ABC=abc && echo " $"ABC'
test 'export ABC=abc && echo "$ABC"'
test 'export ABC=abc && echo '"'"'$ABC'"'"
test 'unset ABC && echo $ABC'
test 'unset ABC && echo $ABC "" $ABC'
test 'unset ABC && echo ABC=4 $ABC'
test 'unset ABC && echo $ABC=4'
test 'unset ABC && echo $ABC.qwe'
test 'unset ABC && echo $ABCqwe'
test 'unset ABC && echo " $"ABC'
test 'unset ABC && echo "$ABC"'
test 'unset ABC && echo '"'"'$ABC'"'"
test 'echo $?$?$?$?$?$?$'
test 'export CMD=echo && $CMD hello'
test 'export A=a B=b C=c && echo $A$B$C'
test 'export =a || echo $a'
test 'echo $'
test 'echo $?'
