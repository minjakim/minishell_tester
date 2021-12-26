#!/bin/bash
source ./test.sh

pt "Export"
test 'export hello && export | grep'
test 'export hello=world && env | grep hello'
test 'export merry=christmas && env | grep merry'
test 'export spiderman=no_way_home && env | grep spiderman'
test 'export spiderman=no_way_home && env | grep merry'

test 'export nominitest && export | grep nominitest'
test 'export nominitest nominitest && export | grep nominitest'
test 'export nominitest= && exort | grep nominitest'
test 'export nominitest= nominitest= && exort | grep nominitest'
test 'export nominitest nominitest= && exort | grep nominitest'
test 'export nominitest= nominitest && exort | grep nominitest'
test 'export nominitest=mac && exprt | grep nominitest'
test 'export nominitest=mac nominitest && exprt | grep nominitest'
test 'export nominitest=mac nominitest= && exprt | grep nominitest'
test 'export nominitest+=nominitest && export | grep nominitest'
test 'export nominitest=mac nominitest+=nominitest && export | grep nominitest'
test 'export nominitest=mac nominitest+=nominitest nominitest +=_m1 || export | grep nominitest'
test 'export nominitest=mac nominitest=minishelltesttestteston && exort | grep nominitest'
test 'export aaaaaaaaaaaaaaaaaa && export | grep aaaaaaaaaaaaaaaaaa'
test 'export 1'
test 'export a1 && export | grep a1'
test 'export 1 2 3 4 5 6 7 8 9 0'

test 'export zz zzz= zzzz=asd && echo $zz$zzz$zzzz'
test 'export zz && export zz && export | grep zz'
test 'export zz=hello && echo $zz && export zz+=" world" && echo $zz'
