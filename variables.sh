#!/bin/bash
BIRTHDATE="January 1, 2000"
PRESENTS=10
BIRTHDAY=$(date -j -f "%B %d, %Y" "$BIRTHDATE" +%A)
echo "Birth Date: "$BIRTHDATE
echo "Birth Day: "$BIRTHDAY