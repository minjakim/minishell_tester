#!/bin/bash
source ./test.sh

pt "env"
test 'env | grep SHLVL'
