#!/bin/bash
source ./test.sh

#제대로 동작 안함
#test "echo \'\'"
#test "ls \'\'"
#test "echo \''$USER''\'"

pt	"Single Quotes"
echo "직접 테스트 해야합니다"
echo "echo ''" 
echo "ls ''"
echo "echo" "'"'$USER'"'"
echo "echo test" "'> hello'"
echo "echo test" "'>> hello'"
echo "cat" "'< hello'"
echo "cat" "'<< hello'"
echo "echo hello > hello && cat '< hello'"
echo "echo merry chrstmas '| cat'"

