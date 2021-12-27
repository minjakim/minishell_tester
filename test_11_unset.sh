#!/bin/bash
source ./test.sh

pt "unset"
test 'unset a'
test 'unset A'
test 'unset _'
test 'unset nonimihello= nonimihello nonimihello'
test "export nominihello=world && unset nominihello && export | grep nominihello || env | grep nominihello"
test "unset nominihello= || export | grep nominihello"
test "unset nominihello=world || export | grep nominihello"
test 'export nominihello=world nominimarry=christmas nominihappy=newyear && unset nominihello nominimarry nominihappy && echo $nominihello$nominimarry$nominihappy'
test 'export a=a && unset a && echo $a'
test 'export a=a a a= a && unset a && echo $a'
test 'unset = + += ? 1'
test 'unset 1 2 3 4 5 6 7 8 9 0'
