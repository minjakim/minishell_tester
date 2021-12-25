source ./test.sh

pt "Arguments & history"
test '/bin/ls /'
test '/bin/ls .'
test '/bin/ls ..'
test '/bin/echo hello'
test '/bin/echo world'
