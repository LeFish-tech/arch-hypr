#!/bin/bash

option=$(printf "Mathematics\nChemistry\nPhysics\nBiology\nEGP" | rofi -dmenu -p "Subject")

case "$option" in
	"Mathematics") qutebrowser "https://papers.xtremepape.rs/index.php?dirpath=./CAIE/AS+and+A+Level/Mathematics+%289709%29/&order=0"  ;;
	"Chemistry") qutebrowser "https://papers.xtremepape.rs/index.php?dirpath=./CAIE/AS+and+A+Level/Chemistry+%289701%29/&order=0"  ;;
	"Physics") qutebrowser "https://papers.xtremepape.rs/index.php?dirpath=./CAIE/AS+and+A+Level/Physics+%289702%29/&order=0"  ;;
	"Biology") qutebrowser "https://papers.xtremepape.rs/index.php?dirpath=./CAIE/AS+and+A+Level/Biology+%289700%29/&order=0"  ;;
	"EGP") qutebrowser "https://papers.xtremepape.rs/index.php?dirpath=./CAIE/AS+and+A+Level/English+General+Paper+%28AS+Level+only%29+%288021%29/&order=0"  ;;
esac
