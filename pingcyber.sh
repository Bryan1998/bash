#!/bin/bash
trap "exit;" SIGINT SIGTERM
for i in {2..11}
do
	ping 10.183.0.$i -c2;
done
