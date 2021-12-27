#!/bin/bash
source ./test.sh

pt "12_cd"
test_leaks '/bin/pwd && cd && /bin/pwd'
test_leaks 'cd .. && cd -'
test_leaks 'cd .. && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd - && cd -'
test_leaks '/bin/pwd && cd / && /bin/pwd'
test_leaks 'cd nominihello'
test_leaks '/bin/pwd && cd nominihello || /bin/pwd'
test_leaks '/bin/pwd && unset OLDPWD && cd - || /bin/pwd'
test_leaks '/bin/pwd && unset HOME && cd || /bin/pwd'
test_leaks '/bin/pwd && unset OLDPWD && cd .. && cd - && /bin/pwd'
