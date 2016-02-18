#!/bin/sh
setlocal enabledelayedexpansion
set outputDir=
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
echo start
title ADB Tester
echo" i INPUT"
echo" o OUTPUT"
echo" a ADB"
IF "$~1"=="-i" set inputDir=$2
IF "$~3"=="-o" set outputDir=$4
IF "$~5"=="-a" ADB()
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
echo Exiting Command Line
EXIT /B no