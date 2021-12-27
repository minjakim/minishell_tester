#!/bin/bash
source ./test.sh

pt "20_bonus_and_or"
test_only 'true || echo or or'
test_only 'false && echo and and'
test_only '42 && echo 42 is command'
test_leaks 'true && echo and and'
test_leaks 'false || echo or or'
test_leaks 'echo hello && echo world'
test_leaks 'echo hello || echo world'
test_leaks '42 || echo 42 is not command'
test_leaks 'unset ABC && export ABC=abc && echo $ABC'
test_leaks 'unset ABC && export ABC=abc && false || echo $ABC'
test_leaks 'unset ABC && export ABC=abc | echo $ABC && echo $ABC'
test_leaks 'unset ABC && export ABC=ABC && export ABC=abc | echo $ABC && echo $ABC && echo $ABC'
test_leaks 'true && true && true && true && true && echo true'
test_leaks 'false || false || false || false || false || false || echo test'
