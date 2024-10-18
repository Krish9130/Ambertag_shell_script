#!/bin/bash
echo "Age : "
read age

if [ "$age" -gt 18 ] || [ "$age" -lt 30 ]
then
        echo "Valid age"
else
        echo "Age is not valid"
fi

