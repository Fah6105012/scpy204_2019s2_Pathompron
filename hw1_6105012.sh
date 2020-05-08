o "Please enter your name: "
read name
while :
do
read -p "Please enter your age : " age
	if [ $age -le 100 ]
	then
	break
	fi
	done
	echo "what is your gender?"
	PS3='Please enter your choice: '
	options=("male" "famale" "other")
	select opt in "${options[@]}"
	do
	case $opt in
	"male")
	break
	;;
	"famale")
	break
	;;
	"other")
	break
	 ;;
	*) echo "invalid option $REPLY";;
	esac
	done
	echo "Please select y/n : y=yes,n=no"
	while :
	do
	read -p "would we like to check you symptoms? [y/n]." input
	if [[ "$input" == "y" ]]; then
	break
	elif    [[ "$input" == "n" ]]; then
	exit 0
	fi
	done
	while :
	do
	read -p "what is your body temperature? : " tem
	if [ $tem -le 40 ]
	then
        break
	fi
	done
	echo -e " 1.Japan \n 2.Germany \n 3.South Korea \n 4.China \n 5.Taiwan \n 6.France \n 7.Singapore \n 8.Italy \n 9.Iran \n 10.Hong Kong \n 11.Macau"
	 while :
	do
	read -p "Have you been to 11 country risk following  lists in the last 14 days? [y/n] " input1
	if [[ "$input1" == "y" ]] || [[ "$input1" == "n" ]]; then
	break
	fi
	done
	echo -e " Fever \n Sore throat \n New cough \n New shortness of breath \n New muscle aches \n Unexplained loss of taste or smell \n Diarrhea \n Headache\n"
	while :
	do
	read -p "Do you have any of the following? [y/n] " input2
	if [[ "$input2" == "y" ]] || [[ "$input2" == "n" ]]; then
	break
	fi
	done
	while :
	do
	read -p "Have you had close contact with someone diagnosed with COVID-19? [y/n]" input3
	if [[ "$input3" == "y" ]] || [[ "$input3" == "n" ]]; then
	break
	fi
	done
	if
	[[ "$input1" ==  "n" ]] && [[ "$input2" == "n" ]] && [[ "$input3" == "n" ]]
	then
	echo "Congratulation! You are free from Covid-19"
	else
	echo "Please go to see a doctor right away!! You are at risk of Covid-19"
fi
