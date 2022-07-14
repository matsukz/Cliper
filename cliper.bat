@echo off


:start
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

if %COPY%==1 SET FILE=ID
if %COPY%==2 SET FILE=pass
If %COPY%==3 SET FILE=mail
if %COPY% geq 4 SET FILE=###


echo %FILE%
if %COPY%==### (
    echo 0から3の値を入力してください。
    echo.
    goto :start
    ) else (
        clip < %FILE%.clip
        echo.
        goto :start
        )


:end
    echo.
    echo 終了します…。
    timeout 2 /nobreak >nul
    EXIT
