#!/bin/bash
source ./test.sh

pt "export"
test 'export nominihello && export | grep nominihello'
test 'export nominihello && env | grep nominihello'
test 'export nominihello= && env | grep nominihello'
test 'export nominihello=merrychristmas && env | grep nominihello'
test 'export spiderman=no_way_home && env | grep spiderman'
test 'export spiderman=no_way_home && env | grep nominihello'
test 'export nominihello && env | grep nominihello || export nominihello= && env | grep nominihello'
test 'export nominihello && env | grep nominihello || export nominihello+= && env | grep nominihello'
test 'export nominihello && env | grep nominihello || export nominihello= && env | grep nominihello && export nominihello+= && env | grep nominihello'
test 'export = + += ? 1'
test 'export 1 2 3 4 5 6 7 8 9 0'
test 'export 1 2 nominihello || export | grep nominihello'

test 'export zzzzzzzzzzz zzzzzzzzzzzzzz= zzzzzzzzzzzzzzzz=nominihello && echo $zzzzzzzzzzz$zzzzzzzzzzzzzz$zzzzzzzzzzzzzzzz'
test 'export zzzzzzzzzzz && export zzzzzzzzzzz && export | grep zzzzzzzzzzz'
test 'export zzzzzzzzzzz=hello && echo $zzzzzzzzzzz && export zzzzzzzzzzz+=" world" && echo $zzzzzzzzzzz'
