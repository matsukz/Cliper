@echo off

:start
    SET COPY="###"
    echo =======================
    echo コピーするものを選択…
    echo.
    echo (1)ID
    echo (2)パスワード
    echo (3)メールアドレス
    echo (0)プログラム終了
    echo ========================

    SET COPY=
    SET /P COPY="対応した項目の入力："

if "%COPY%"=="" goto :start
if %COPY%==0 goto :end
if %COPY% geq 4 goto false

:true
    if %COPY%==1 SET FILE=ID
    if %COPY%==2 SET FILE=pass
    If %COPY%==3 SET FILE=mail
    echo %FILE%
    clip < %FILE%.clip
    echo OK
    echo.
    goto start

:false
    echo %FILE%
    echo 入力された値が不正です。
    echo.
    goto start

:end
    echo.
    echo 終了します…。
    timeout 2 /nobreak >nul
    EXIT
