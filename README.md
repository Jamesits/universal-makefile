Universal Makefile
==================

一个针对单个 C 程序源文件优化过的 Makefile。

**仅用于特定用途，小心使用！**

## 使用方法

把 Makefile 复制到该 .c 文件所在目录，然后修改 Makefile 顶部的变量：

SRC = 源文件名.c

PROGRAM = 程序名

其余变量按需修改。

最后在当前目录下执行 make auto 或者直接运行 compile.bat 即可。

## Target 说明

* 默认：编译生成可执行文件
* exec：编译并运行可执行文件
* clean：删除 .o 文件
* clean-all：删除 .exe 文件
