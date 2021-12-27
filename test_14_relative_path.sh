#!/bin/bash
source ./test.sh

pt 'Relative Path'
test "cd path && ./ft_echo"
test "cd path && ./1/ft_echo"
test "cd path && ./2/ft_echo"
test "cd path && ./3/ft_echo"
test "cd path && ./4/ft_echo"
test "cd path && ./5/ft_echo"
test "cd path && ./6/ft_echo"
test "cd path/1 && ./ft_echo"
test "cd path/2 && ./ft_echo"
test "cd path/3 && ./ft_echo"
test "cd path/4 && ./ft_echo"
test "cd path/1 && ../ft_echo"
test "cd path/1 && ../5/ft_echo"
test "cd path/1 && ../3/ft_echo"
test "cd path/1 && ../3/../1/ft_echo"
