#!/bin/bash -x

declare -A dict1
declare -A dict2

echo "welcome to flip coin combination problem"
echo "Enter the number of times you would like to flip : "
read n
div=$(awk 'BEGIN{print '100'/'$n'}')
echo "Enter Choice"
echo "1.Singlet"
echo "2.Doublet"
echo "3.Triplet"
read option

function one(){
 for (( i=1;i<=$n;i++ ))
 do
 num1=$(( 1 + $RANDOM%$1 ))
  if [ $num1 -eq 1 ]
   then     echo "HHH"
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
}

case "$option" in
"1")
one "2"
dict1[Head]="$counthhh"
dict1[Tail]="$countttt"
percentage_of_head=$(awk 'BEGIN{print '$counthhh'*'$div'}')
percentage_of_tail=$(awk 'BEGIN{print '$countttt'*'$div'}')
dict2[1]=$percentage_of_head
dict2[2]=$percentage_of_tail
for i in ${dict2[@]}
do
    echo "$i"
done | sort -n
;;

#hh=1 tt=2 ht=3 th=4
"2")
one "4"
dict1[HH]="$counthhh"
dict1[TT]="$countttt"
dict1[HT]="$counthht"
dict1[TH]="$counthth"
dict2[1]=$(awk 'BEGIN{print '$counthhh'*'$div'}')
dict2[2]=$(awk 'BEGIN{print '$countttt'*'$div'}')
dict2[3]=$(awk 'BEGIN{print '$counthht'*'$div'}')
dict2[4]=$(awk 'BEGIN{print '$counthth'*'$div'}')
for i in ${dict2[@]}
do
    echo "$i"
done | sort -n
;;

#hhh=1 ttt=2 hht=3 hth=4 thh=5 tth=6 tht=7 htt=8
"3")
one "8"
dict1[HHH]="$counthhh"
dict1[TTT]="$countttt"
dict1[HHT]="$counthht"
dict1[HTH]="$counthth"
dict1[THH]="$countthh"
dict1[TTH]="$counttth"
dict1[THT]="$counttht"
dict1[HTT]="$counthtt"
#hhh=1 ttt=2 hht=3 hth=4 thh=5 tth=6 tht=7 htt=8
dict2[HHH]=$(awk 'BEGIN{print '$counthhh'*'$div'}')
dict2[TTT]=$(awk 'BEGIN{print '$countttt'*'$div'}')
dict2[HHT]=$(awk 'BEGIN{print '$counthht'*'$div'}')
dict2[HTH]=$(awk 'BEGIN{print '$counthth'*'$div'}')
dict2[THH]=$(awk 'BEGIN{print '$countthh'*'$div'}')
dict2[TTH]=$(awk 'BEGIN{print '$counttth'*'$div'}')
dict2[THT]=$(awk 'BEGIN{print '$counttht'*'$div'}')
dict2[HTT]=$(awk 'BEGIN{print '$counthtt'*'$div'}')
for i in ${dict2[@]}
do
    echo "$i"
done | sort -n
;;
esac
