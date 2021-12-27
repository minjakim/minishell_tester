#!/bin/bash
source ./test.sh

pt "11_unset"
test_leaks 'unset a'
test_leaks 'unset A'
test_leaks 'unset _'
test_leaks 'unset nonimihello= nonimihello nonimihello'
test_leaks "export nominihello=world && unset nominihello && export | grep nominihello || env | grep nominihello"
test_leaks "unset nominihello= || export | grep nominihello"
test_leaks "unset nominihello=world || export | grep nominihello"
test_leaks 'export nominihello=world nominimarry=christmas nominihappy=newyear && unset nominihello nominimarry nominihappy && echo $nominihello$nominimarry$nominihappy'
test_leaks 'export a=a && unset a && echo $a'
test_leaks 'export a=a a a= a && unset a && echo $a'
test_leaks 'unset = + += ? 1'
test_leaks 'unset 1 2 3 4 5 6 7 8 9 0'
