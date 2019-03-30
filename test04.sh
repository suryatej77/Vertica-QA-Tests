#!/bin/bash
coproc java -jar client.jar test_server
for i in {101..200}
do
	echo create $i >&${COPROC[1]}
done
