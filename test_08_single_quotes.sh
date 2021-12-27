#!/bin/bash
source ./test.sh

pt "08_single_quotes"

echo "직접 테스트 해야합니다"
echo "echo ''"
echo "ls ''"
echo "echo" "'"'$USER'"'"
echo "echo test" "'> hello'"
echo "echo test" "'>> hello'"
echo "cat" "'< hello'"
echo "cat" "'<< hello'"
echo "echo merry chrstmas '| cat'"
echo "echo hello > hello && cat '< hello'"
