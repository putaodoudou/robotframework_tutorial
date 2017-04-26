@echo off
cd c:\Test\robot-scripts\testproject
call pybot -d results/taskscheduler/ -v BROWSER:Firefox --name Firefox tests/amazon.robot
pause