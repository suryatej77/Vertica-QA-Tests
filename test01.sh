#!/bin/bash
j=10
for i in {1..200}
do
	java -jar client.jar test_server "get $i" "set $i $j" "get $i"
done
