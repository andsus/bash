#!/usr/bin/env bash

function answer(){
  echo $1
  exit
}

main() {

  str="${1//[[:space:]]/}"
  len=${#str}

  (( len < 2 )) && answer false
  [[ "$str" == *[^0-9]* ]] && answer false

  for((i=1;i<=len;i++)); do
      num=${str:(-i):1}
      
      if (( i%2 == 0 )); then 
          ((num*= 2))  
          
          (( num > 9 )) && ((num-= 9))
      fi    

      ((sum+= num))
  done

  (( sum % 10 == 0 )) && answer true

  answer false


}

main "$@"