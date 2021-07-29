#!/bin/zsh
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
shift "$(($OPTIND -1))"

for i in {1..$mvalue}; do node ./linked-list-timing.js $nvalue; done;
