#!/bin/bash

make re -C ../ > /dev/null
chmod 755 ../minishell

TESTS=$(/bin/ls | grep test_)

for test in ${TESTS[@]}
do
	./$test
	sleep 1
done
