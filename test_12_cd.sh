#!/bin/bash
source ./test.sh

pt "cd"
test '/bin/pwd && cd && /bin/pwd'
test 'cd .. && cd -'
test 'cd .. && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd -'
test '/bin/pwd && cd / && /bin/pwd'
test 'cd nominihello'
test '/bin/pwd && cd nominihello || /bin/pwd'
test '/bin/pwd && unset OLDPWD && cd - || /bin/pwd'
test '/bin/pwd && unset HOME && cd || /bin/pwd'
test '/bin/pwd && unset OLDPWD && cd .. && cd - && /bin/pwd'
