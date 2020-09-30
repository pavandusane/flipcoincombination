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


#hhh=1 ttt=2 hht=3 hth=4 thh=5 tth=6 tht=7 htt=8
for (( i=1;i<=20;i++ ))
do
num1=$(( 1 + $RANDOM % 8 ))
  if [ $num1 -eq 1 ]
    then
        echo "HHH"
        let counthhh++
  elif [ $num1 -eq 2 ]
   then     echo "TTT"
        let countttt++
  elif [ $num1 -eq 3 ]
    then    echo "HHT"
        let counthht++
  elif [ $num1 -eq 4 ]
   then     echo "HTH"
        let counthth++
  elif [ $num1 -eq 5 ]
    then    echo "THH"
        let countthh++
  elif [ $num1 -eq 6 ]
   then     echo "TTH"
        let counttth++
  elif [ $num1 -eq 7 ]
    then    echo "THT"
        let counttht++
  else [ $num1 -eq 8 ]
        echo "HTT"
        let counthtt++

  fi
done


echo $counthhh
echo $countttt
echo $counthht
echo $counthth
echo $countthh
echo $counttth
echo $counttht
echo $counthtt



dict1[HHH]="$counthhh"
dict1[TTT]="$countttt"
dict1[HHT]="$counthht"
dict1[HTH]="$counthth"
dict1[THH]="$countthh"
dict1[TTH]="$counttth"
dict1[THT]="$counttht"
dict1[HTT]="$counthtt"


#hhh=1 ttt=2 hht=3 hth=4 thh=5 tth=6 tht=7 htt=8


percentage_of_hhh=$(( $counthhh * 5 ))
percentage_of_ttt=$(( $countttt * 5 ))
percentage_of_hht=$(( $counthht * 5 ))
percentage_of_hth=$(( $counthth * 5 ))
percentage_of_thh=$(( $countthh * 5 ))
percentage_of_tth=$(( $counttth * 5 ))
percentage_of_tht=$(( $counttht * 5 ))
percentage_of_htt=$(( $counthtt * 5 ))





echo "Percentage_of_HHH : $percentage_of_hhh"
echo "Percentage_of_TTT : $percentage_of_ttt"
echo "Percentage_of_HHT : $percentage_of_hht"
echo "Percentage_of_HTH : $percentage_of_hth"
echo "Percentage_of_THH : $percentage_of_thh"
echo "Percentage_of_TTH : $percentage_of_tth"
echo "Percentage_of_THT : $percentage_of_tht"
echo "Percentage_of_HTT : $percentage_of_htt"
