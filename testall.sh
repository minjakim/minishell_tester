#!/bin/bash

TESTS=$(/bin/ls | grep test_)

for test in ${TESTS[@]}
do
	./$test
	sleep 1
done
