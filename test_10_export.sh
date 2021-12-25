#!/bin/bash
source ./test.sh

pt "Export"
test 'export zz zzz= zzzz=asd && echo $zz$zzz$zzzz'
test 'export zz && export zz && export'
test 'export zz=hello && echo $zz && export zz+=" world" && echo $zz'
