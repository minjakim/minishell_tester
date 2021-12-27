#!/bin/bash
source ./test.sh

pt "bonus_and_or"
test 'true && echo and and'
test 'false && echo and and'
test 'true || echo or or'
test 'false || echo or or'
test 'echo hello && echo world'
test 'echo hello || echo world'
test '42 && echo 42 is command'
test '42 || echo 42 is not command'
test 'unset ABC && export ABC=abc && echo $ABC'
test 'unset ABC && export ABC=abc && false || echo $ABC'
test 'unset ABC && export ABC=abc | echo $ABC && echo $ABC'
test 'unset ABC && export ABC=ABC && export ABC=abc | echo $ABC && echo $ABC && echo $ABC'
test 'true && true && true && true && true && echo true'    
test 'false || false || false || false || false || false || echo test' 
