#/bin/bash
source ./test.sh

pt "bonus_wildcard"
test 'echo .*'
test 'echo *helloworld'
test '> *helloworld && ls | grep *helloworld && rm *helloworld'
test 'touch a aa && cat < a* || rm a aa'
test 'echo hello > oneandonly && cat < one*only && rm oneandonly'
test 'cat < *21*'
test 'mkdir hello && cd hello && echo *helloworld && cd .. && rm -rf hello'
test 'mkdir hello && cd hello && touch *helloworld *world && echo *helloworld && cd .. && rm -rf hello'
test 'touch *helloworld && echo *hello && rm *helloworld'

mkdir nonefile
test 'cd nonefile && echo *'
test 'cd nonefile && echo .*'
test 'cd nonefile && echo */'
test 'cd nonefile && cat < *' 
test 'cd nonefile && echo hello world > * && cat < *' 
rm -r nonefile

mkdir onefile
echo onefile only > onefile/file
test 'cd onefile && echo *'
test 'cd onefile && echo .*'
test 'cd onefile && cat < *'
test 'cd onefile && echo new text > * && cat < * && echo next line > * && cat < * && > *'
test 'cd onefile && echo new text > one* && cat < one* && echo next line > one* && cat < one* && > *'
test 'cd onefile && echo new file > new* && cat < new* && ls | grep new* && rm new*'

rm -r onefile

mkdir manyfiles
cd manyfiles
touch head body tail
touch headbody headtail bodyhead bodytail tailhead tailbody
touch headbodytail headtailbody bodyheadtail bodytailhead tailheadbody tailbodyhead
cd ..

test 'cd manyfiles && echo hello > head*'
test 'cd manyfiles && echo hello > *body*'
test 'cd manyfiles && echo hello > *tail'
test 'cd manyfiles && echo hello < *head'
test 'cd manyfiles && echo hello < body*'
test 'cd manyfiles && echo hello < *tail*'

rm -r manyfiles

echo
echo "추가 테스트를 하신다면 wildcard 디렉토리로 가보세요"
