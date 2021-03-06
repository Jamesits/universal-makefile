Universal Makefile
==================

一个针对单个 C 程序源文件优化过的 Makefile。

**仅用于特定用途，小心使用！**

## 环境要求

* make、gcc 和/或 clang 及其依赖项所在路径已经添加到 %PATH% 或者处于 C:\MinGW\bin 或 C:\MinGW\msys\1.0\bin 中
* 盗版系统导致的奇奇怪怪的问题不关我事

测试环境：Windows 8.1 x64，使用 MinGW Installation Manager 安装 mingw32-base 和 mingw-developer-toolkit 到 C:\MinGW\，LLVM/clang 和 Git 均按默认路径安装并添加到 %PATH%。

## 使用方法

[戳这里下载](../../archive/master.zip)然后解压。

推荐方法：

1. 把 Makefile 和 compile-and-execute-file.bat 复制到 .c 源文件相同的目录中
2. 直接把要编译的 .c 源文件拖动到 compile-and-execute-file.bat 上
3. 坐等自动的编译和运行

方法二：

按照[下一节](#makefile-%E4%BF%AE%E6%94%B9%E8%AF%B4%E6%98%8E)的做法修改 Makefile，然后直接执行 compile-and-execute.bat

## Makefile 修改说明

把 Makefile 复制到该 .c 文件所在目录，然后修改 Makefile 顶部的变量：

SRC = 源文件名.c

PROGRAM = 程序名

其余变量按需修改。

最后在当前目录下执行 make auto 或者直接运行 compile.bat 即可。

## Makefile Target 说明

* 默认：编译生成可执行文件
* exec：编译并运行可执行文件
* clean：删除 .o 文件
* clean-all：删除 .exe 文件

## 批处理文件功能说明

* compile.bat：编译 Makefile 内 SRC 变量指定的 .c 文件，生成对应的 .exe 文件
* compile-and-execute.bat：编译 Makefile 内 SRC 变量指定的 .c 文件，生成对应的 .exe 文件**并逐一运行**
* compile-all.bat：编译当前目录下所有 .c 文件，生成对应的 .exe 文件
* compile-and-execute-all.bat：编译当前目录下所有 .c 文件，生成对应的 .exe 文件**并逐一运行**
* compile-file.bat：编译第一个参数指定的 .c 文件，生成对应的 .exe 文件
* compile-and-execute-file.bat：编译第一个参数指定的 .c 文件，生成对应的 .exe 文件**并运行**

注：每个批处理文件均使用 C:\MinGW\bin 和 C:\MinGW\msys\1.0\bin 作为默认搜索路径。这两个路径是 MinGW 的默认安装位置。
