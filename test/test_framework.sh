#!/bin/bash

ec="You survived and went on to kill the dragon!"
ac="actual"

rm -Rf dungeon dungeon_mod dungeon_mod.o

gcc -o mod mod.c
./mod

gcc -o dungeon test/dungeon.o
gcc -o dungeon_mod dungeon_mod.o

ac=$(./dungeon_mod) 

if [[ "$1" == "debug" ]]; then
  echo ${ec}
  echo ${ac}
fi

if [ "${ec}" == "${ac}" ]; then
  echo "Test passes"
else
  echo "Test fails"
  echo ${ac}
fi

