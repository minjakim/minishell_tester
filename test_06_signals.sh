#!/bin/bash
source ./test.sh

pt "06_signals"
echo " 직접 테스트 해야합니다"
echo "	prompt 비워진 상태에서"
echo "		ctrl + C"
echo '		ctrl + \'
echo "		ctrl + D"
echo
echo "	propt에 적혀있는 상태에서"
echo "		ctrl + C 누른 후 enter"
echo "		ctrl + D"
echo "		문자열 중간에서 ctrl + D"
echo '		ctrl + \'
echo
echo "	cat을 실행한 상태에서"
echo "		ctrl + C"
echo '		ctrl + \'
echo "		ctrl + D"
echo
echo "	grep을 실행한 상태에서"
echo "		ctrl + C"
echo '		ctrl + \'
echo "		ctrl + D"
