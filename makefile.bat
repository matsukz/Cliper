@echo off

echo =====================================================================
echo clip�g���q�̃e�L�X�g�t�H���_���쐬���܂��B
echo �y���Ӂz�v���O�������I������ۂ�stop�Ɠ��͂��Ă��������B
echo �y���Ӂz��L�̎d�l�ɂ��ustop.clip�v�Ƃ����t�@�C���͍쐬�ł��܂���B
echo �������������B
echo =====================================================================

:start
    set name=
    set /P name="�t�@�C�����̓���:"

if "%name%" == "" goto start
if "%name%" == "stop" EXIT

:main
    set naiyou=
    set /P naiyou="�������ޓ��e�����(���s�s��)�F"
    echo %name%
    echo %naiyou%
    echo (%naiyou%)>> %name%.clip
    clip < %name%.clip
    echo ======================================
    echo cliper.bat�̏C��
    echo 20�s�ڂ̃R�[�h�̏C��
    echo ======================================
    echo.
    echo ������x�쐬���܂����H
    choice
    if errorlevel 2 goto :end
    if errorlevel 1 goto :start

:end
    PAUSE
