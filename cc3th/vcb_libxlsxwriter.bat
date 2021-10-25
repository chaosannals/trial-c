@echo off

set WORK_DIR=%~dp0
set SRC_DIR=%WORK_DIR%libxlsxwriter_src
set INSTALL_DIR=%WORK_DIR%libxlsxwriter

echo %WORK_DIR%libxlsxwriter_src

git clone git@github.com:jmcnamara/libxlsxwriter.git %SRC_DIR%
cd %SRC_DIR%
mkdir build
cd    build

:: 这是 vs2017 根据自己的版本设置
cmake .. -G "Visual Studio 15 Win64" -DCMAKE_INSTALL_PREFIX:PATH="%INSTALL_DIR%" -DZLIB_ROOT:STRING="%WORK_DIR%zlib"

cmake --build . --config Release --target install

cd %WORK_DIR%