#!/bin/bash

os=('Windows' 'Ubuntu' 'Kali' 'Redhat')

os[4]='mac'                          #append the value using indexing

unset os[2]                          #remove the value using indexing

echo "${os[@]}"
echo "${os[0]}"
echo "${!os[@]}"
echo "${#os[@]}"


string=dkfhfghk

echo "${string[@]}"
echo "${string[0]}"
echo "${!string[1]}"
echo "${#string[@]}"

