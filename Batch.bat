@echo off

REM start counter.
set /a x=0

REM start of the loop.
:loopstart

if %x% gtr 100 goto end
  
REM check for 15
set /a m="%x% %% 15"
if "%m%" == "0" goto fizzbuzz

REM check for 3
set /a m="%x% %% 3"
if "%m%" == "0" goto fizz

REM check for 5
set /a m="%x% %% 5"
if "%m%" == "0" goto buzz

REM not a multiple of 3, 5, or 15.  
goto none

:fizzbuzz
echo FizzBuzz
goto continue

:fizz
echo Fizz
goto continue

:buzz
echo Buzz
goto continue

:none 
echo %x%

:continue
set m=
set /a x+=1
goto loopstart


:end
REM Clean up
Set m=
Set x=