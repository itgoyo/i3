#!/usr/bin/env python3
# prints a nice volume-bar
# for use in conky/i3bar

from subprocess import check_output

# here we define the look of the bar:
fillchar  = "▮"
emptychar = "▫"
barlength = 15

# we use a script that only outputs the value (e.g. "80" for 80% volume)
command   = ["get_volume.sh"]

text = str(check_output(command), encoding="utf-8").rstrip("\n")
volume = int(text)

# calculate the number of full and empty characters:
numfills = int(volume/100*barlength)
numempty = barlength-numfills

# print out the bar:
print("{}{}".format(fillchar*numfills, emptychar*numempty))
