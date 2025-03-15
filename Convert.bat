@echo off
set Input=%1
set OutputExtension=%2
set OutputName=%~n1
ffmpeg -i %Input% Videos\%OutputName%%OutputExtension%