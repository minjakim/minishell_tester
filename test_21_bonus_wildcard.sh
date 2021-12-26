#!/bin/bash
source ./test.sh

pt "WildCard"
test 'echo * | sort'
test 'echo .* | sort'
test 'echo */ | sort'
test 'touch a aa && cat < a* || rm a aa'
test 'echo hello > oneandonly && cat < one*only && rm oneandonly'
