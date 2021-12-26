#!/bin/bash
source ./test.sh

pt "Redirects"
test '> hello && ls | grep hello && rm hello'
test '>> hello && ls | grep hello && rm hello'
test '> hello echo hi && cat hello && rm hello'
test 'echo > hello hi && cat hello && rm hello'
test 'echo hi > hello && cat hello && rm hello'
test 'touch hello && < hello && rm hello'
test '< hello'
test 'echo hi > hello && echo hello > hello && cat hello && rm hello'
test 'echo hi > hello && echo hello >> hello && cat hello && rm hello'
test 'echo hi >> hello && echo hello >> hello && cat hello && rm hello'
test 'echo hello > 1 > 2 > 3 > 4 > 5 && cat 1 2 3 4 5 && rm 1 2 3 4 5'
test 'echo hello >> 1 > 2 >> 3 > 4 >> 5 && cat 1 2 3 4 5 && rm 1 2 3 4 5'
test 'echo 1 > 1 && echo 2 > 2 && echo 3 > 3 && echo 4 > 4 && cat < 1 < 2 < 3 < 4 && rm 1 2 3 4'
echo "heredoc은 직접 테스트 해야합니다"
echo 'cat << eof'
echo '	hello'
echo '	world'
echo '	$USER'
echo "	'"'$USER'"'"
echo '	"''$USER''"' 
echo '	eof'
echo
echo 'export EOF=eof'
echo
echo 'cat << $EOF'
echo '	hello'
echo '	world'
echo "	'"'$EOF'"'"
echo '	"''$EOF''"' 
echo '	eof'
echo '	$EOF'
echo
echo 'cat << ''$EOF'
echo '	hello'
echo '	world'
echo "	'"'$EOF'"'"
echo '	"''$EOF''"' 
echo '	eof'
echo '	$EOF'
echo
echo 'cat << ''"''$EOF''"'
echo '	hello'
echo '	world'
echo "	'"'$EOF'"'"
echo '	"''$EOF''"' 
echo '	eof'
echo '	$EOF'
echo
echo 'unset EOF'
echo
echo '<< eof'
echo
echo 'echo hello > hi && cat << eof < hi && rm hi'
echo
echo 'echo hello > hi && cat < hi << eof && rm hi'
echo
echo '<< 1 << 2 << 3 << 4 << 5 << 6 << 7 << 8 << 9 << 10 << 11 << 12 << 13 << 14 << 15 << 16'
echo
echo '<< 1 << 2 << 3 << 4 << 5 << 6 << 7 << 8 << 9 << 10 << 11 << 12 << 13 << 14 << 15 << 16 << 17'
echo 'echo $?'
echo
echo 'touch 17 && << 1 << 2 << 3 << 4 << 5 << 6 << 7 << 8 << 9 << 10 << 11 << 12 << 13 << 14 << 15 << 16 < 17 && rm 17'
echo
echo '<< 1 << 2 << 3 << 4 << 5 << 6 << 7 << 8 << 9 << 10 << 11 << 12 << 13 << 14 << 15 << 16 > 17 && rm 17'
echo
echo '<< 1 << 2 << 3 << 4 << 5 << 6 << 7 << 8 << 9 << 10 << 11 << 12 << 13 << 14 << 15 << 16 >> 17 && rm 17'
