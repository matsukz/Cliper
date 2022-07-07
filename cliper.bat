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
if "%COPY%"=="0" goto :end

if "%COPY%"=="1" SET FILE =

clip < %COPY%.clip
echo OK
goto :start
echo.

:end
echo.
echo 終了します。
pause
