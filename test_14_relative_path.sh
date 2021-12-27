#!/bin/bash
source ./test.sh

pt "14_relative_path"
test_leaks "cd etc/path && ./ft_echo"
test_leaks "cd etc/path && ./1/ft_echo"
test_leaks "cd etc/path && ./2/ft_echo"
test_leaks "cd etc/path && ./3/ft_echo"
test_leaks "cd etc/path && ./4/ft_echo"
test_leaks "cd etc/path && ./5/ft_echo"
test_leaks "cd etc/path && ./6/ft_echo"
test_leaks "cd etc/path/1 && ./ft_echo"
test_leaks "cd etc/path/2 && ./ft_echo"
test_leaks "cd etc/path/3 && ./ft_echo"
test_leaks "cd etc/path/4 && ./ft_echo"
test_leaks "cd etc/path/1 && ../ft_echo"
test_leaks "cd etc/path/1 && ../5/ft_echo"
test_leaks "cd etc/path/1 && ../3/ft_echo"
test_leaks "cd etc/path/1 && ../3/../1/ft_echo"
