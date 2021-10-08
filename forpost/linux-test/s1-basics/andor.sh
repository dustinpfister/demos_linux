#!/bin/bash
MESSTRUE="Yep"
MESSFALSE="Nope"
test 100 -gt 99 && echo $MESSTRUE || echo  $MESSFALSE
# Yep
test 80 -gt 99 && echo $MESSTRUE || echo  $MESSFALSE
# Nope