@echo off
mode 50,20
title IDCLiper

if not %USERNAME% == ユーザーネーム goto :usererror
    

:start
    SET COPY=
    SET FILE=
    echo =======================
    echo コピーするものを選択…
    echo.
    echo (1)ID
    echo (2)パスワード
    echo (3)メールアドレス
    echo (0)プログラム終了
    echo ========================

    SET /P COPY="対応した項目の入力："

if "%COPY%"=="" goto :blank
if %COPY%==0 goto :end
if %COPY% geq 4 goto :false

:true
    if %COPY%==1 SET FILE=ID
    if %COPY%==2 SET FILE=Password
    If %COPY%==3 SET FILE=MailAddress
    clip < %FILE%.clip
    echo.
    echo %FILE%をコピーしました
    echo.
    goto start

:false
    echo.
    echo 入力された値"%COPY%"は不正です。
    echo.
    goto start

:usererror
    echo.
    msg %USERNAME% /W 作業中のユーザー%USERNAME%では続行できません。
    goto :end

:blank
    echo.
    echo 文字が入力されていません。
    goto start
    
:end
    echo.
    echo 終了します…。
    timeout 2 /nobreak >nul
    EXIT
