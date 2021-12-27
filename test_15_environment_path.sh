#!/bin/bash
source ./test.sh

pt "Environment Path"
test "unset PATH && ls"
test "unset PATH && pwd"
test "cd path && unset PATH && ./ft_echo"
test 'cd path && unset PATH && export PATH=$PWD &&./ft_echo'
test 'cd path && unset PATH && export PATH=$PWD/1 &&./ft_echo'
test 'cd path && unset PATH && export PATH=$PWD/2 &&./ft_echo'
test 'cd path && unset PATH && export PATH=$PWD/3 &&./ft_echo'
test 'cd path && unset PATH && export PATH=$PWD/4 &&./ft_echo'
test 'cd path && unset PATH && export PATH=$PWD/5 &&./ft_echo'
test 'cd path && unset PATH && export PATH=$PWD/6 &&./ft_echo'
test 'cd path && unset PATH && export PATH=$PWD:$PWD/1 &&./ft_echo'
test 'cd path && unset PATH && export PATH=$PWD/1:$PWD &&./ft_echo'
test 'cd path && unset PATH && export PATH=:$PWD/1:$PWD &&./ft_echo'
test 'cd path && unset PATH && export PATH=: &&./ft_echo'
test 'cd path && unset PATH && export PATH=: && cd 1 &&./ft_echo'
test 'cd path && unset PATH && export PATH=:::::: &&./ft_echo'
