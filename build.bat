
set SRC_DIR=..\src\
set FILES=%SRC_DIR%core.c %SRC_DIR%models.c %SRC_DIR%raudio.c %SRC_DIR%rglfw.c %SRC_DIR%shapes.c %SRC_DIR%text.c %SRC_DIR%textures.c %SRC_DIR%utils.c 
set CFLAGS=-c -Wall -DPLATFORM_DESKTOP -D__TINYC__ -I..\src\external -I..\src\external\glfw\include
clang %FILES% %CFLAGS% 

set LIB_DIR="C:\Program Files (x86)\Windows Kits\10\Lib\10.0.18362.0\um\x64"
set LFLAGS=/lib /libpath:%LIB_DIR%
lld-link %LFLAGS% core.o models.o raudio.o rglfw.o shapes.o text.o textures.o utils.o /out:raylib.lib
rem llvm-ar rc raylib.lib 
