#!/bin/bash -x

echo "welcome to flip coin combination problem"

for (( i=1;i<=20;i++ ))
do
num=$(( $RANDOM % 2 ))
  if [ $num -eq 0 ]
    then
        echo "Head"
        let count1++
  else
        echo "Tail"
        let count2++
  fi
done

echo $count1
echo $count2

dict1[Head]="$count1"
dict1[Tail]="$count2"

percentage_of_head=$(( $count1 * 5 ))
percentage_of_tail=$(( $count2 * 5 ))

echo "Percentage_of_head : $percentage_of_head"
echo "Percentage_of_tail : $percentage_of_tail"



#hh=1 tt=2 ht=3 th=4
for (( i=1;i<=20;i++ ))
do
num1=$(( 1 + $RANDOM % 4 ))
  if [ $num1 -eq 1 ]
    then
        echo "HH"
        let counthh++
  elif [ $num1 -eq 2 ]
   then     echo "TT"
        let counttt++
  elif [ $num1 -eq 3 ]
    then    echo "HT"
        let countht++
  else [ $num1 -eq 4 ]
        echo "TH"
        let countth++

  fi
done

echo $counthh
echo $counttt
echo $countht
echo $countth

dict1[HH]="$counthh"
dict1[TT]="$counttt"
dict1[HT]="$countht"
dict1[TH]="$countth"

percentage_of_hh=$(( $counthh * 5 ))
percentage_of_tt=$(( $counttt * 5 ))
percentage_of_ht=$(( $countht * 5 ))
percentage_of_th=$(( $countth * 5 ))

echo "Percentage_of_HH : $percentage_of_hh"
echo "Percentage_of_TT : $percentage_of_tt"
echo "Percentage_of_HT : $percentage_of_ht"
echo "Percentage_of_TH : $percentage_of_th"
