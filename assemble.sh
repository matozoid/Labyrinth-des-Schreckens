#!/usr/bin/env bash
rm *.prg
rm *.d64
petcat -w2 -o "offear.prg" offear.bas
petcat -w2 -o labyrinth.prg labyrinth.bas
c1541 -format "labyrinth,00" d64 labyrinth.d64
c1541 -attach labyrinth.d64 -write labyrinth.prg "labyrinth"
c1541 -attach labyrinth.d64 -write offear.prg "of fear"