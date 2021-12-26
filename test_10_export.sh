#!/bin/bash
source ./test.sh

pt "Export"
test 'export hello=world && env | grep hello'
test 'export merry=christmas && env | grep merry'
test 'export spiderman=no_way_home && env | grep spiderman'
test 'export spiderman=no_way_home && env | grep merry'

test 'export mini && export | grep mini'
test 'export mini mini && export | grep mini'
test 'export mini= && exort | grep mini'
test 'export mini= mini= && exort | grep mini'
test 'export mini mini= && exort | grep mini'
test 'export mini= mini && exort | grep mini'
test 'export mini=mac && exprt | grep mini'
test 'export mini=mac mini && exprt | grep mini'
test 'export mini=mac mini= && exprt | grep mini'
test 'export mini+=mini && export | grep mini'
test 'export mini=mac mini+=mini && export | grep mini'
test 'export mini=mac mini+=mini mini +=_m1&& export | grep mini'
test 'export mini=mac mini=minion && exort | grep mini'
test 'export a && export | grep mini'
test 'export _ && export | grep mini'
test 'export 1 && export | grep mini'
test 'export a1 && export | grep mini'
test 'export 1 2 3 4 5 6  7 8  9 0 && export | grep mini'

test 'export zz zzz= zzzz=asd && echo $zz$zzz$zzzz'
test 'export zz && export zz && export'
test 'export zz=hello && echo $zz && export zz+=" world" && echo $zz'
