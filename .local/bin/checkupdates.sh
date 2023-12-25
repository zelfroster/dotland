#!/bin/sh

output="$(checkupdates)"
number="$(echo "$output" | wc -l)"
text="$number"

if [ $number -eq 0 ]; then
  text="No Updates"
  tooltip=""
else
  if (( $number > 20 ))
  then
    tooltip="$(echo "$output" | head -n 20 | sed -z 's/\n/\ \r/g')"
    tooltip+='...'
  else
    tooltip="$(echo "$output" | sed -z 's/\n/\ \r/g')"
    tooltip=${tooltip::-2}
  fi
fi

echo "{\"text\":\""$text"\", \"tooltip\":\""$tooltip"\"}"
exit 0
