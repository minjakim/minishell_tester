#!/bin/bash
source ./test.sh

pt "And, Or"
test 'echo hello && echo world'
test 'echo hello || echo world'
test '42 && echo 42 is command'
test '42 || echo 42 is not command'
