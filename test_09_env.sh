#!/bin/bash
source ./test.sh

pt "09_env"
test_leaks 'env | grep SHLVL'
