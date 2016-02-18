#!/bin/sh
	ADB()
		{     
			echo Ready to use ADB commands.
			sleep
			echo
			echo Showing currently connected ADB devices. Serial number first, status.
			sleep
			adb devices
			echo
			adb get-serialno
			$serialno
			echo "$serialno"
			adb pull "$inputDir" "$outputDir"
			sleep
			echo
			echo Pulled from the input Directory "$inputDir" and pushed to the output Directory "$outputDir".
					}
	echo Start Android2PC program
	echo i INPUT
	echo o OUTPUT
	echo a ADB
	if [ "$1" = "-i" ]; then
	 set "inputDir" = "$2" 
	fi
	if [ "$3" = "-o" ]; then
	 set "outputDir" = "$4" 
	fi
	if [ "$5" = "-a" ]; then
	 ADB 
	fi
	set "inputDir" = "$2"
	set "outputDir" = "$4"
	echo New input directory is $inputDir
	mkdir -p "$outputDir"
	mkdir -p "$outputDir"\\output      
	echo New output directory is $outputDir
	echo Program complete, exit command line
	exit 0
