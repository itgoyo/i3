amixer get Master | awk -F'[]%[]' '/%/ {if ($7 == "off") { print "0" } else { print $2 }}'
