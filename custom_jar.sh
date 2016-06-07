#!/bin/bash


jarBaseName=$1
tempSmaliDir=$2

dirs="android/app/ android/view/ android/widget/"

if [ "$jarBaseName" = "framework" ];then
	echo ">>> in custom_jar $jarBaseName"
	for dir in $dirs
	do
		echo ">>> in custom_jar moving $dir"
		mv $tempSmaliDir/smali/$dir $tempSmaliDir/smali_classes2/$dir
	done
fi
