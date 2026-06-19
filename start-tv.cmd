@echo off
title YSR-TV antenna
cd /d "%~dp0"
echo.
echo   YSR-TV — raising the antenna on http://localhost:3333
echo   keep this window open while you watch. ctrl+c powers down.
echo.
start "" "http://localhost:3333"
npx -y serve -l 3333 .
