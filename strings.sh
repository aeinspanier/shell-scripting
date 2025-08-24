#!/bin/bash
STRING="this is a string"
echo ${#STRING} # length of a string

# find position of substring
STRING="this is a string"
SUBSTRING="t"
echo $SUBSTRING
echo $(awk -v a="$STRING" -v b="$SUBSTRING" 'BEGIN{print index(a,b)}')
echo $(gexpr index "$STRING" "$SUBSTRING") # using GNU expr
# extract substring
STRING="this is a string"
POS=1
LEN=3
echo ${STRING:$POS:$LEN}

STRING="this is a string"
echo ${STRING:1}           # $STRING contents without leading character

# Replace substring
STRING="to be or not to be"
echo ${STRING[@]/be/eat}

# Exercise: Replace buffett's saying with a few things
BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."
# replace snow with foot
REPLACE_SNOW_FOOT=${BUFFETT[@]/snow/foot}
# DELETE SECOND OCCURANCE OF 'SNOW' - use stream editor
DELETE_SECOND_SNOW=$(echo $BUFFETT | sed 's/\<snow\>//2')
REPLACE_FINDING_WITH_GETTING=${BUFFETT[@]//finding/getting}
EVERYTHING_BEFORE_WET=${BUFFETT%%wet*}

echo "Original: $BUFFETT"
echo "Replace snow with foot: $REPLACE_SNOW_FOOT"
echo "Delete second occurance of snow: $DELETE_SECOND_SNOW"
echo "Replace finding with getting: $REPLACE_FINDING_WITH_GETTING"
echo "Everything before wet: $EVERYTHING_BEFORE_WET"
