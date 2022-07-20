@echo off

echo =====================================================================
echo clip拡張子のテキストフォルダを作成します。
echo 【注意】プログラムを終了する際はstopと入力してください。
echo 【注意】上記の仕様により「stop.clip」というファイルは作成できません。
echo ご了承下さい。
echo =====================================================================

:start
    set name=
    set /P name="ファイル名の入力:"

if "%name%" == "" goto start
if "%name%" == "stop" EXIT

:main
    set naiyou=
    set /P naiyou="書き込む内容を入力(改行不可)："
    echo %name%
    echo %naiyou%
    echo (%naiyou%)>> %name%.clip
    clip < %name%.clip
    echo ======================================
    echo cliper.batの修正
    echo 20行目のコードの修正
    echo ======================================
    echo.
    echo もう一度作成しますか？
    choice
    if errorlevel 2 goto :end
    if errorlevel 1 goto :start

:end
    PAUSE
