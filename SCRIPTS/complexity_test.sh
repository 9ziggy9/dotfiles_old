#!/bin/bash

FILE=$5
echo Testing $FILE
while getopts 'n:m:' OPTION; do
  case "$OPTION" in
    n)
      nvalue="$OPTARG"
      ;;

    m)
      mvalue="$OPTARG"
      ;;
  esac
done

declare total=0;
for ((i=1; i<=$mvalue; i++))
do
		start=$(date +%s.%N)
		node $FILE $nvalue
		dur=$(echo "$(date +%s.%N) - $start" | bc)
		printf "Test %d: %.6f seconds\n" $i $dur
		total=$(echo $total + $dur | bc)
done

declare avg=$(echo $total / $mvalue | bc -l)
declare linPr=$(echo 2 \* $avg | bc)
declare qudPr=$(echo 4 \* $avg | bc)

printf "Average execution time: %.6f seconds\n" $avg
printf "O(n) --> ~%.6f\nO(n^2) --> ~%.6f\n" $linPr $qudPr
