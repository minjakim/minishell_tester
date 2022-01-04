#!/bin/bash
source ./test.sh

pt "10_export"
test_leaks 'export nominihello && export | grep nominihello'
test_leaks 'export nominihello && env | grep nominihello'
test_leaks 'export nominihello= && env | grep nominihello'
test_leaks 'export nominihello=merrychristmas && env | grep nominihello'
test_leaks 'export spiderman=no_way_home && env | grep spiderman'
test_leaks 'export spiderman=no_way_home && env | grep nominihello'
test_leaks 'export nominihello && env | grep nominihello || export nominihello= && env | grep nominihello'
test_leaks 'export nominihello && env | grep nominihello || export nominihello+= && env | grep nominihello'
test_leaks 'export nominihello && env | grep nominihello || export nominihello= && env | grep nominihello && export nominihello+= && env | grep nominihello'
test_leaks 'export = + += ? 1'
test_leaks 'export 1 2 3 4 5 6 7 8 9 0'
test_leaks 'export 1 2 nominihello || export | grep nominihello'

test_leaks 'export zzzzzzzzzzz zzzzzzzzzzzzzz= zzzzzzzzzzzzzzzz=nominihello && echo $zzzzzzzzzzz$zzzzzzzzzzzzzz$zzzzzzzzzzzzzzzz'
test_leaks 'export zzzzzzzzzzz && export zzzzzzzzzzz && export | grep zzzzzzzzzzz'
test_leaks 'export zzzzzzzzzzz=hello && echo $zzzzzzzzzzz && export zzzzzzzzzzz+=" world" && echo $zzzzzzzzzzz'
test_leaks 'export zzzzzzz="   a   bb      cc" && echo $zzzzzzz'
test_leaks 'export zzzzzzz="                a" && echo $zzzzzzz'
test_leaks 'export zzzzzzz="                 " && echo $zzzzzzz'
