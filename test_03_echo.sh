#!/bin/bash
source ./test.sh

pt "03_echo"
test_leaks 'echo'
test_leaks 'echo hello'
test_leaks 'echo hello world'
test_leaks 'echo merry christmas'
test_leaks 'echo hello world merry christmas'
test_leaks 'echo hello   world      merry     christmas'
test_leaks 'echo -n hello   world      merry     christmas'
test_leaks 'echo -n'
test_leaks 'echo -n -n hello'
test_leaks 'echo -n -n -n -n -n -n -n -n -n -n -n -n -n -n -n -n -n -n -n'
test_leaks 'echo -nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn -nnnnnnnnnnnnnnnn -nn'
test_leaks 'echo -nnnnnnnnnnnnnnnnnnnnnnnnnn hello'
test_leaks 'echo "-n    -n" hello'
test_leaks 'echo "hello"world"'"merry"'"christmase'
test_leaks 'echo "           hello         "'
