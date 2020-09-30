#!/bin/bash -x

declare -A dict1
declare -A dict2
declare -A dict3

echo "welcome to flip coin combination problem"
echo "Enter the number of times you would like to flip : "
read n
echo "Enter Choice"
echo "1.Singlet"
echo "2.Doublet"
echo "3.Triplet"
read option

case "$option" in

"1")
 for (( i=1;i<=$n;i++ ))
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
dict1[Head]="$count1"
dict1[Tail]="$count2"

percentage_of_head=$(( $count1 * 5 ))
percentage_of_tail=$(( $count2 * 5 ))
;;

#hh=1 tt=2 ht=3 th=4
"2")
 for (( i=1;i<=$n;i++ ))
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

dict2[HH]="$counthh"
dict2[TT]="$counttt"
dict2[HT]="$countht"
dict2[TH]="$countth"

percentage_of_hh=$(( $counthh * 5 ))
percentage_of_tt=$(( $counttt * 5 ))
percentage_of_ht=$(( $countht * 5 ))
percentage_of_th=$(( $countth * 5 ))

;;

#hhh=1 ttt=2 hht=3 hth=4 thh=5 tth=6 tht=7 htt=8
"3")
 for (( i=1;i<=$n;i++ ))
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

dict3[HHH]="$counthhh"
dict3[TTT]="$countttt"
dict3[HHT]="$counthht"
dict3[HTH]="$counthth"
dict3[THH]="$countthh"
dict3[TTH]="$counttth"
dict3[THT]="$counttht"
dict3[HTT]="$counthtt"


#hhh=1 ttt=2 hht=3 hth=4 thh=5 tth=6 tht=7 htt=8

percentage_of_hhh=$(( $counthhh * 5 ))
percentage_of_ttt=$(( $countttt * 5 ))
percentage_of_hht=$(( $counthht * 5 ))
percentage_of_hth=$(( $counthth * 5 ))
percentage_of_thh=$(( $countthh * 5 ))
percentage_of_tth=$(( $counttth * 5 ))
percentage_of_tht=$(( $counttht * 5 ))
percentage_of_htt=$(( $counthtt * 5 ))

;;

esac
