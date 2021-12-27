#!/bin/bash
source ./test.sh

pt "echo"
test 'echo'
test 'echo hello'
test 'echo hello world'
test 'echo merry christmas'
test 'echo hello world merry christmas'
test 'echo hello   world      merry     christmas'
test 'echo -n hello   world      merry     christmas'
test 'echo -n'
test 'echo -n -n hello'
test 'echo -n -n -n -n -n -n -n -n -n -n -n -n -n -n -n -n -n -n -n'
test 'echo -nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn -nnnnnnnnnnnnnnnn -nn'
test 'echo -nnnnnnnnnnnnnnnnnnnnnnnnnn hello'
test 'echo "-n    -n" hello'
test 'echo "hello"world"'"merry"'"christmase'
test 'echo "           hello         "'
