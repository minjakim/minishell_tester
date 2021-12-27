#!/bin/bash
source ./test.sh

pt "unset"
test 'unset a'
test 'unset A'
test 'unset _'
test "export hello=world && unset hello && export | grep hello"
test "unset hello= || export | grep hello"
test "unset hello=world || export | grep hello"
test 'export hello=world marry=christmas happy=newyear && unset hello marry happy && echo $hello$marry$happy'
test 'export a=a && unset a && echo $a'
test 'export a=a a a= a && unset a && echo $a'
test 'unset = + += ? 1'
test 'unset 1 2 3 4 5 6 7 8 9 0'
