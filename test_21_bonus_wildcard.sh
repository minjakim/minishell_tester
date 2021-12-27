#/bin/bash
source ./test.sh

pt "21_bonus_wildcard"
test_leaks 'echo .*'
test_leaks 'echo *helloworld'
test_leaks '> *helloworld && ls | grep *helloworld && rm *helloworld'
test_leaks 'touch a aa && cat < a* || rm a aa'
test_leaks 'echo hello > oneandonly && cat < one*only && rm oneandonly'
test_leaks 'cat < *21*'
test_leaks 'mkdir hello && cd hello && echo *helloworld && cd .. && rm -rf hello'
test_leaks 'mkdir hello && cd hello && touch *helloworld *world && echo *helloworld && cd .. && rm -rf hello'
test_leaks 'touch *helloworld && echo *hello && rm *helloworld'

mkdir nonefile
test_leaks 'cd nonefile && echo *'
test_leaks 'cd nonefile && echo .*'
test_leaks 'cd nonefile && echo */'
test_leaks 'cd nonefile && cat < *'
test_leaks 'cd nonefile && echo hello world > * && cat < *'
rm -r nonefile

mkdir onefile
echo onefile only > onefile/file
test_leaks 'cd onefile && echo *'
test_leaks 'cd onefile && echo .*'
test_leaks 'cd onefile && cat < *'
test_leaks 'cd onefile && echo new text > * && cat < * && echo next line > * && cat < * && > *'
test_leaks 'cd onefile && echo new text > one* && cat < one* && echo next line > one* && cat < one* && > *'
test_leaks 'cd onefile && echo new file > new* && cat < new* && ls | grep new* && rm new*'

rm -r onefile

mkdir manyfiles
cd manyfiles
touch head body tail
touch headbody headtail bodyhead bodytail tailhead tailbody
touch headbodytail headtailbody bodyheadtail bodytailhead tailheadbody tailbodyhead
cd ..

test_leaks 'cd manyfiles && echo hello > head*'
test_leaks 'cd manyfiles && echo hello > *body*'
test_leaks 'cd manyfiles && echo hello > *tail'
test_leaks 'cd manyfiles && echo hello < *head'
test_leaks 'cd manyfiles && echo hello < body*'
test_leaks 'cd manyfiles && echo hello < *tail*'

rm -r manyfiles

echo
echo "추가 테스트를 하신다면 wildcard 디렉토리로 가보세요"
