#!/bin/sh
	ADB()
		{     
			echo Ready to use ADB commands.
			sleep
			echo
			echo Showing currently connected ADB devices. Serial number first, then status.
			sleep
			adb devices
			echo
			adb get-serialno
			!serialno!
			echo !SERIALNO!
			adb pull !inputDir! !outputDir!
			sleep
			echo
			echo Pulled from the input Directory !inputDir! and pushed to the output Directory !outputDir!.
		}
	echo Start Android2PC program
	echo i INPUT
	echo o OUTPUT
	echo a ADB
	if "$~1"=="-i" set inputDir=$2 
	if "$~3"=="-o" set outputDir=$4 
	if "$~5"=="-a" ADB 
	SET inputDir=$2
	SET outputDir=$4
	echo New input directory is !inputDir!
	sleep  
	mkdir !outputDir!
	mkdir !outputDir!\output      
	echo New output directory is !outputDir!
	sleep
	echo
	sleep
	echo Program complete, exit command line.
