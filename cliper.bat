@echo off
mode 50,20
title IDCLiper

if not %USERNAME% == ���[�U�[�l�[�� goto :usererror
    

:start
    SET COPY=
    SET FILE=
    echo =======================
    echo �R�s�[������̂�I���c
    echo.
    echo (1)ID
    echo (2)�p�X���[�h
    echo (3)���[���A�h���X
    echo (0)�v���O�����I��
    echo ========================

    SET /P COPY="�Ή��������ڂ̓��́F"

if "%COPY%"=="" goto :blank
if %COPY%==0 goto :end
if %COPY% geq 4 goto :false

:true
    if %COPY%==1 SET FILE=ID
    if %COPY%==2 SET FILE=Password
    If %COPY%==3 SET FILE=MailAddress
    clip < %FILE%.clip
    echo.
    echo %FILE%���R�s�[���܂���
    echo.
    goto start

:false
    echo.
    echo ���͂��ꂽ�l"%COPY%"�͕s���ł��B
    echo.
    goto start

:usererror
    echo.
    msg %USERNAME% /W ��ƒ��̃��[�U�[%USERNAME%�ł͑��s�ł��܂���B
    goto :end

:blank
    echo.
    echo ���������͂���Ă��܂���B
    goto start
    
:end
    echo.
    echo �I�����܂��c�B
    timeout 2 /nobreak >nul
    EXIT
