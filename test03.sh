#!/bin/bash
coproc java -jar client.jar test_server
j=50
for i in {1..200}
do
	echo get $i >&${COPROC[1]}
	echo set $i $j >&${COPROC[1]}
	echo get $i >&${COPROC[1]}
done
