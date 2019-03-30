#!/bin/bash
for i in {1..100}
do
	java -jar client.jar test_server "create $i"
done
