#!/bin/bash

fdisk -l

echo Podaj nazwe dysku do wyczyszczenia

read DISK_NAME

echo Czyszczenie dysku $DISK_NAME

dd if=/dev/zero of=$DISK_NAME status=progress

for i in {1..5}
do
    echo Zapelnianie dysku losowymi danymi. Obieg $i z 5.
    dd if=/dev/urandom of=$DISK_NAME status=progress
done
