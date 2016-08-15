#!/bin/bash
yellow="\e[93m"
colors=("\e[92m" "\e[96m" "\e[91m" "\e[95m" "\e[31m")
so=("so ascii")
very=("very bash" "very colors")
much=("much command")
such=("such linux")
many=("many code" "many text")
how=("how program")
phrases=("so" "very" "much" "such" "many" "how")
#echo "${colors[$rand]}"
reset="\e[39m"
doge0="                   +++ "
doge1="                  ??+=+                      ??+=? "
doge2="                  ??+==+                   I++==~~I "
doge3="                  ?++===?                 I+=+=~~~+ "
doge4="                  ?++====?              I++=====~~~ "
doge5="                  ?+==+++++++?IIIIIII.I?==~===~~~=~I "
doge6="                 ++++++++++++++++++=+=+==:==~~~~~~~I "
doge7="                ++????++++====++++++=~=~:===::::=~~I "
doge8="             ++???????++===++++++++++++:~===:,:~=== "
doge9="            ??????????++==++++++=+=+=+++===,,,:===? "
doge10="          ????????????+===+++?+++++++++++=~::~~=:~? "
doge11="         ??????+=++??+====+?+??++===+++++++=======+? "
doge12="        ??III?~::?:++++=++???+?++++=+++++++++===~~=+? "
doge13="        ?I7III+~:.=+??+++++++~,.~+===++++++++++=:~=+? "
doge14="       ?II7I??=~=??+?+??+==:,?,,,.~=++++++++++++=~=+? "
doge15="       ?IIII?+???+??????++=,:=:..~=+++++++++++++===+? "
doge16="      IIIIIII???????????+==++~~~+++???????????+++=+=+I "
doge17="      ?IIIII===~~++??????+++?++++++?????+???????+++++? "
doge18="      ??III,,,.,,,,+??I?+?+???+?????????????????++++++ "
doge19="      IIII?=,,...,,=????????????????????????????++++++? "
doge20="     ?III??,,.,.,,:+??++++??????????????????+++++=++++? "
doge21="      III?=~:,,,::+=????++?????????I?????+++++++==+++++? "
doge22="     ?III?=~~:::::=+++++++++??????+????+++???++===++=++? "
doge23="      II???::...,,~=+=+=++=++??++++??++???????++==+==+++? "
doge24="      III??+~:,,,,,,,=,,,:~=+++++???+??????+??+=====+=++? "
doge25="      III???+=~~=~~:::~~=~++?+++??????++???++++++=====++?I "
doge26="       II???+?====++++=+++?+++++++?+????+?+++==++=====+=+? "
doge27="       I????????+??+++++++++++++++??????+++++==========++? "
doge28="        ????????+?++++++++++++++?????++?+++=+========+=++? "
doge29="        ???????+++++++++++++++???????+++++++=========++++? "
doge30="        ?????????++++++++++++++?+?+++++++++++=====++++++?? "
doge31="        ????+++++++++++++++++++++++++++++++++===+++++?++?? "
doge32="        ??????++++++++++++++====++++++++?++++==+?+???????I "
doge33="       I???????+++==========++++??+??++?++?++??????????++?"
num=1
delay=1
if [ "$1" -eq "$1" ] 2>/dev/null ; then
	num=$1
fi
if [ "$2" -eq "$2" ] 2>/dev/null ; then
	num=$2
fi
if [ "$3" -eq "$3" ] 2>/dev/null ; then
	num=$3
fi
if [ "$1" == "-hyper" ] || [ "$2" == "-hyper" ] || [ "$3" == "-hyper" ] ; then
	delay=0.1
fi
if [ "$1" == "-warp" ] || [ "$2" == "-warp" ] || [ "$3" == "-warp" ] ; then
	delay=0
fi
while [ $num -gt 0 ]; do
	color=()
	N=3
	for index in `shuf --input-range=0-$(( ${#colors[*]} - 1 )) | head -${N}`
	do
	   	color+=("${colors[$index]}")
		#echo "${colors[$index]}"
	done
	N=2
	phrasetype=()
	for index in `shuf --input-range=0-$(( ${#phrases[*]} - 1 )) | head -${N}`
	do
		phrasetype+=("${phrases[$index]}")
	done
	#for i in {0..2}; do
	#	echo "${color[$i]}"
	#	echo "${phrasetype[$i]}"
	#done
	p1="${phrasetype[0]}"
	ph1="${!p1}"
	#echo "$p1"
	#echo "${#ph1[@]}"
	phrase1=${ph1[$RANDOM % ${#ph1[@]} ]}
	#echo "$phrase1"
	p2="${phrasetype[1]}"
	ph2="${!p2}"
	phrase2=${ph2[$RANDOM % ${#ph1[@]} ]}
	#echo "$phrase2"
	phrase3="wow"

	pos=($(shuf -i 0-30 -n 2))

	for i in {0..33}; do
		line="doge${i}";
		linevar=${!line}
		#echo "$i ${pos[0]}"
		if [ $i == ${pos[0]} ]; then
			phrasestart=$(shuf -i "0-$((${#linevar}-1))" -n 1})
			phraseend=$((${#phrase1}+$phrasestart))
			frag1="${linevar:0:$((phrasestart))}"
			frag3="${linevar:$((phraseend))}"
			echo -e "$yellow$frag1${color[0]}$phrase1$yellow$frag3$reset"
		elif [ $i == ${pos[1]} ]; then
			phrasestart=$(shuf -i "0-$((${#linevar}-1))" -n 1})
			phraseend=$((${#phrase2}+$phrasestart))
			frag1="${linevar:0:$((phrasestart))}"
			frag3="${linevar:$((phraseend))}"
			echo -e "$yellow$frag1${color[1]}$phrase2$yellow$frag3$reset"
			#echo -e "$yellow${!line}$reset${color[1]}$phrase2$reset"
		elif [ $i == 32 ]; then
			phrasestart=$(shuf -i "0-$((${#linevar}-1))" -n 1})
			phraseend=$((${#phrase3}+$phrasestart))
			frag1="${linevar:0:$((phrasestart))}"
			frag3="${linevar:$((phraseend))}"
			echo -e "$yellow$frag1${color[2]}$phrase3$yellow$frag3$reset"
		else
			echo -e "$yellow${!line}$reset";
		fi
	done
	echo ""
	num=$(($num-1))
	sleep "$delay"
done

