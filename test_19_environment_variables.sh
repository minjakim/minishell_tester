#!/bin/bash
source ./test.sh

pt "19_enviroment_variable"
test_leaks 'export ABC=abc && echo $ABC'
test_leaks 'export ABC=abc && echo $ABC "" $ABC'
test_leaks 'export ABC=abc && echo ABC=4 $ABC'
test_leaks 'export ABC=abc && echo $ABC=4'
test_leaks 'export ABC=abc && echo $ABC.qwe'
test_leaks 'export ABC=abc && echo $ABCqwe'
test_leaks 'export ABC=abc && echo " $"ABC'
test_leaks 'export ABC=abc && echo "$ABC"'
test_leaks 'export ABC=abc && echo '"'"'$ABC'"'"
test_leaks 'unset ABC && echo $ABC'
test_leaks 'unset ABC && echo $ABC=4'
test_leaks 'unset ABC && echo $ABC.qwe'
test_leaks 'unset ABC && echo $ABCqwe'
test_leaks 'unset ABC && echo " $"ABC'
test_leaks 'unset ABC && echo "$ABC"'
test_leaks 'unset ABC && echo '"'"'$ABC'"'"
test_leaks 'echo $?$?$?$?$?$?$'
test_leaks 'export CMD=echo && $CMD hello'
test_leaks 'export A=a B=b C=c && echo $A$B$C'
test_leaks 'export =a || echo $a'
test_leaks 'echo $'
test_leaks 'echo $?'
test_leaks 'unset ABC && echo "a" $ABC "a" $ABC "a"'
test_leaks 'unset ABC && echo ABC=4 $ABC "a"'
test_leaks 'export ABC="a              b              c" && echo $ABC'
test_leaks 'export ABC="a              b              c" && cat $ABC'
