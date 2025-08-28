#!/bin/bash

trap "echo trapped" SIGINT SIGTERM

echo "this will run until you hit ctrl + c"

while true
do
  echo "sleeping"
  sleep 10
done

