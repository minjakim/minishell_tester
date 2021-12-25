source ./test.sh

pt "Redirects"
test '> hello && ls | grep hello'
test '< hello'
test 'echo hello > 1 > 2 > 3 > 4 > 5 && cat 1 2 3 4 5 && rm 1 2 3 4 5'
