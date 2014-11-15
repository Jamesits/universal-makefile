/*
 * 画个蛋
 * by James Swineson, 2014－11-06
 */

#include <stdio.h>
#include <math.h>

/* ========== 程序设置部分 ========== */
#define FONT_HEIGHT_WIDTH_RATIO 2.0
        // 字符的高度与宽度之比
#define RADIUS 20.0
        // 圆半径
#define EPSILON 20.0
        // 线宽控制变量（一般与 RADIUS 相同即可）
#define OUTPUT_STRING "*"
        // 需要绘图位置输出的字符串
#define OUTPUT_EMPTY_STRING " "
        // 无需绘图位置输出的字符串

/* =========== 主程序 =========== */
int main()
{
    int scan_pointer_x, scan_pointer_y;
    for (scan_pointer_x = 0; scan_pointer_x <= 2 * (RADIUS - 1) / FONT_HEIGHT_WIDTH_RATIO; scan_pointer_x++)
        // 行扫描
        {
            for (scan_pointer_y = 0; scan_pointer_y <= 2 * (RADIUS - 1); scan_pointer_y++)
                // 列扫描
                {
                    if (fabs(pow(fabs(FONT_HEIGHT_WIDTH_RATIO * scan_pointer_x - (RADIUS - 1)), 2) + pow(fabs(scan_pointer_y - (RADIUS - 1)), 2) - pow((RADIUS - 1), 2)) <= EPSILON)
                        printf(OUTPUT_STRING);
                    else
                        printf(OUTPUT_EMPTY_STRING);
                }
        printf("\n"); // 一列扫描结束，换行
        }
    return 0;
}
