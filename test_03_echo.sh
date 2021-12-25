source ./test.sh

pt "echo"
test 'echo'
test 'echo -n'
test 'echo world'
test 'echo merry'
test 'echo merry christmas'
test 'echo hello world merry christmas'
test 'echo hllo           world             merry                                           christmas'
test 'echo -n hello              world                      merry                     christmas'
test 'echo "hello"world"'"merry"'"christmase'
test 'echo $USER "" $USER'
test 'echo $USERr $HOME1'
test 'echo -n -n hello'
test 'echo -nnnnnnnnnnnnnnnnnnnnnnnnnn hello'
test 'echo "           hello         "'
test 'echo "-n    -n" hello'
test 'echo $USER=4'
