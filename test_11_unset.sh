#!/bin/bash
source ./test.sh

test 'unset PWD && cd'
test 'unset OLDPWD && cd -'
test 'unset OLDPWD && cd .. && cd -'
