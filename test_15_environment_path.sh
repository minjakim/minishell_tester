#!/bin/bash
source ./test.sh

pt "15_environment_path"
test_leaks "unset PATH && ls"
test_leaks "unset PATH && pwd"
test_leaks "cd etc/path && unset PATH && ft_echo"
test_leaks 'cd etc/path && unset PATH && export PATH=$PWD && ft_echo'
test_leaks 'cd etc/path && unset PATH && export PATH=$PWD/1 && ft_echo'
test_leaks 'cd etc/path && unset PATH && export PATH=$PWD/2 && ft_echo'
test_leaks 'cd etc/path && unset PATH && export PATH=$PWD/3 && ft_echo'
test_leaks 'cd etc/path && unset PATH && export PATH=$PWD/4 && ft_echo'
test_leaks 'cd etc/path && unset PATH && export PATH=$PWD/5 && ft_echo'
test_leaks 'cd etc/path && unset PATH && export PATH=$PWD/6 && ft_echo'
test_leaks 'cd etc/path && unset PATH && export PATH=$PWD:$PWD/1 && ft_echo'
test_leaks 'cd etc/path && unset PATH && export PATH=$PWD/1:$PWD && ft_echo'
test_leaks 'cd etc/path && unset PATH && export PATH=:$PWD/1:$PWD && ft_echo'
test_leaks 'cd etc/path && unset PATH && export PATH=: && ft_echo'
test_leaks 'cd etc/path && unset PATH && export PATH=: && cd 1 && ft_echo'
test_leaks 'cd etc/path && unset PATH && export PATH=:::::: && ft_echo'
