currentDots=0
cdTo=""
allDots=true
temp=""

for ((i=0; i<${#1}+1; i++)); do
	temp+=${1:$i:1}
	if [ "." == "${1:$i:1}" ]; then
		currentDots=$((currentDots+1))
	elif [ "/" == "${1:$i:1}" ] || [ $i -eq ${#1} ]; then
		if [ $i -eq 0 ] || ! $allDots; then
			cdTo+=$temp
		else
			if [ $currentDots == "1" ]; then
				cdTo+=./
			fi
			for ((j=1; j<${currentDots}; j++)); do
				cdTo+=../
			done
		fi
		allDots=true
		currentDots=0
		temp=""
	else
		allDots=false
	fi
done

cd $cdTo