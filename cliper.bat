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
if %COPY%==0 goto :end

if %COPY%==1 SET FILE=ID
if %COPY%==2 SET FILE=pass
If %COPY%==3 SET FILE=mail
if %COPY% geq 4 SET FILE=###


echo %FILE%
if %COPY%==### (
    echo 0����3�̒l����͂��Ă��������B
    echo.
    goto :start
    ) else (
        clip < %FILE%.clip
        echo.
        goto :start
        )


:end
    echo.
    echo �I�����܂��c�B
    timeout 2 /nobreak >nul
    EXIT
