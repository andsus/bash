#!/usr/bin/env bash

main () {

  shopt -s nocasematch

  local -i score=0 
  local word=${#1}

  for (( i = 0; i < ${word}; i++ )); do
    local char=${1:i:1} 
    
    case ${char} in
      [AEIOULNRST]) score+=1 ;; 
      [DG])         score+=2 ;;
      [BCMP])       score+=3 ;;
      [FHVWY])      score+=4 ;;
      [K])          score+=5 ;;
      [JX])         score+=8 ;;
      [QZ])         score+=10 ;;
      *) ;;
    esac
  done

  echo $score
}

main "$@"