@echo off

:start
echo =======================
echo �R�s�[������̂�I���c
echo.
echo (1)ID
echo (2)�p�X���[�h
echo (3)���[���A�h���X
echo (0)�v���O�����I��
echo ========================

SET COPY=
SET /P COPY="�Ή��������ڂ̓��́F"

if "%COPY%"=="" goto :start
if "%COPY%"=="0" goto :end

if "%COPY%"=="1" SET FILE =

clip < %COPY%.clip
echo OK
goto :start
echo.

:end
echo.
echo �I�����܂��B
pause
