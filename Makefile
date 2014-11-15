# James' Universal Makefile for simple C programs
# Version 1.0
# by James Swineson, 2014-11-15


# ================================ 设置部分开始 ===================================
# 源文件名
# 示例：
# SRC = hello.c

SRC = draw_circle.c

# 可执行程序名
# 示例：
# PROGRAM = hello.exe

PROGRAM = draw_circle.exe

# Object 文件名（如无特殊需求不要改动）
# 默认值：
# OBJ += $(SRC:.c=.o)

OBJ = $(SRC:.c=.o)

# 编译器命令行
# 示例：
# CC = gcc

CC = clang

# Include 目标路径
# 示例：
# INCLUDE = -I/usr/include/ncurses -I/usr/include/
#MINGW_PATH = C:\MinGW\lib\gcc\mingw32\4.8.1
#INCLUDE = -I"$(MINGW_PATH)/include/" \
			-I"$(MINGW_PATH)/lib/gcc/mingw32/4.5.2/include" \
			-I"$(MINGW_PATH)/lib/gcc/mingw32/4.5.2/include/c++" \
			-I"$(MINGW_PATH)/lib/gcc/mingw32/4.5.2/include/c++/backward" \
			-I"$(MINGW_PATH)/lib/gcc/mingw32/4.5.2/include/c++/mingw32" \
			-I"$(MINGW_PATH)/lib/gcc/mingw32/4.5.2/include-fixed"
# 链接器参数
# 示例：
# LINKPARAM = -lpthread -lncurses

# 编译器参数
# 示例
# 	调试环境：
#	CFLAGS = -g -Wall
# 	发布环境：
# 	CFLAGS = -O -Wall

CFLAGS = -O -Wall -Wno-invalid-source-encoding

# 目标程序执行时的参数
# 示例：
# ARG = 1

# 执行程序前的参数（如无特殊需求不要改动）
# 默认值：
# EXEC_PREFIX = cmd /c

EXEC_PREFIX = cmd /c

# 删除文件时的参数（如无特殊需求不要改动）
# 默认值：
# RM_FLAGS = -I

RM_FLAGS = -I

# ======================= 设置部分结束，不要改动以下内容 =============================

# 默认运行
: $(PROGRAM)

# 链接
$(PROGRAM): $(OBJ)
	@echo "> Linking $(OBJ)..."
	@$(CC) -o $(PROGRAM) $(LINKPARAM) $(OBJ)

# 编译
%.o: %.c
	@echo "> Compiling $<..."
	@$(CC) $(INCLUDE) $(CFLAGS) -c -o $@ $<

# 运行
exec: $(PROGRAM)
	@echo "> Executing $(PROGRAM)"
	@echo "> =================================================="
	@$(EXEC_PREFIX) $(PROGRAM) $(ARG);
	@echo "> =================================================="
	@echo "> Program finished."

# 清理所有编译器产生的文件
clean-all:
	@echo "> Cleaning all binary files..."
	@echo "> List of files to be deleted:"
	@echo "> $(OBJ) $(PROGRAM)"
	@rm $(RM_FLAGS) $(OBJ) $(PROGRAM)

# 清理所有中间文件
clean:
	@echo "> Cleaning all object files (*.o)..."
	@echo "> List of files to be deleted:"
	@echo "> $(OBJ)"
	@rm $(RM_FLAGS) $(OBJ)

# 懒人操作
auto: $(PROGRAM) exec
