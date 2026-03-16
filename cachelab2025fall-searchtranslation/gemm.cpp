/*
请注意，你的代码不能出现任何 int/short/char/float/double/auto 等局部变量/函数传参，我们仅允许使用 reg 定义的寄存器变量。
其中 reg 等价于一个 int。

你不能自己申请额外的内存，即不能使用 new/malloc，作为补偿我们传入了一段 buffer，大小为 BUFFER_SIZE = 64，你可以视情况使用。

我们的数组按照 A, B, C, buffer 的顺序在内存上连续紧密排列，且 &A = 0x30000000（这是模拟的设定，不是 A 的真实地址）

如果你需要以更自由的方式访问内存，你可以以相对 A 的方式访问，比如 A[100]，用 *(0x30000000) 是无法访问到的。

如果你有定义常量的需求（更严谨的说法是，你想定义的是汇编层面的立即数，不应该占用寄存器），请参考下面这种方式使用宏定义来完成。
*/

#include "cachelab.h"

// ========== 全局宏定义（必须放在最开头，所有函数可见） ==========
#define CACHE_LINE_SIZE 4   // 适配16字节Cache块（4个int）
#define REG_BLOCK_4     4   // 4路分块（核心）
#define REG_BLOCK_5     5   // case3专用5路分块
// ==============================================================

#define m case0_m
#define n case0_n
#define p case0_p

// 我们用这个 2*2*2 的矩阵乘法来演示寄存器是怎么被分配的
void gemm_case0(ptr_reg A, ptr_reg B, ptr_reg C, ptr_reg buffer)
{ // allocate 0 1 2 3
  for (reg i = 0; i < m; ++i)
  { // allocate 4
    for (reg j = 0; j < p; ++j)
    {               // allocate 5
      reg tmpc = 0; // allocate 6
      for (reg k = 0; k < n; ++k)
      {                          // allocate 7
        reg tmpa = A[i * n + k]; // allocate 8
        reg tmpb = B[k * p + j]; // allocate 9
        tmpc += tmpa * tmpb;
      } // free 9 8
      // free 7
      C[i * p + j] = tmpc;
    } // free 6
    // free 5
  }
  // free 4
} // free 3 2 1 0

#undef m
#undef n
#undef p

#define m case1_m
#define n case1_n
#define p case1_p

void gemm_case1(ptr_reg A, ptr_reg B, ptr_reg C, ptr_reg buffer)
{
  /*for (reg i = 0; i < m; ++i)
  {
    for (reg j = 0; j < p; ++j)
    {
      reg tmpc = 0;
      for (reg k = 0; k < n; ++k)
      {
        reg tmpa = A[i * n + k];
        reg tmpb = B[k * p + j];
        tmpc += tmpa * tmpb;
      }
      C[i * p + j] = tmpc;
    }
  }*/
   // i 和 j 以 4 为步长
  for (reg i = 0; i < m; i += 4)
  {
    for (reg j = 0; j < p; j += 4)
    {
      // 1. 初始化 16 个累加寄存器
      reg c00 = 0; reg c01 = 0; reg c02 = 0; reg c03 = 0;
      reg c10 = 0; reg c11 = 0; reg c12 = 0; reg c13 = 0;
      reg c20 = 0; reg c21 = 0; reg c22 = 0; reg c23 = 0;
      reg c30 = 0; reg c31 = 0; reg c32 = 0; reg c33 = 0;

      // 2. 内层循环：遍历 k
      for (reg k = 0; k < n; ++k)
      {
        // 加载 A 的一列 (4个)
        reg a0 = A[(i + 0) * n + k];
        reg a1 = A[(i + 1) * n + k];
        reg a2 = A[(i + 2) * n + k];
        reg a3 = A[(i + 3) * n + k];

        // 加载 B 的一行 (4个) - 此时利用了 spatial locality (连续访问)
        reg b0 = B[k * p + (j + 0)];
        reg b1 = B[k * p + (j + 1)];
        reg b2 = B[k * p + (j + 2)];
        reg b3 = B[k * p + (j + 3)];

        // 计算 4x4 外积
        c00 += a0 * b0; c01 += a0 * b1; c02 += a0 * b2; c03 += a0 * b3;
        c10 += a1 * b0; c11 += a1 * b1; c12 += a1 * b2; c13 += a1 * b3;
        c20 += a2 * b0; c21 += a2 * b1; c22 += a2 * b2; c23 += a2 * b3;
        c30 += a3 * b0; c31 += a3 * b1; c32 += a3 * b2; c33 += a3 * b3;
      }

      // 3. 写回 C
      C[(i + 0) * p + (j + 0)] = c00; C[(i + 0) * p + (j + 1)] = c01;
      C[(i + 0) * p + (j + 2)] = c02; C[(i + 0) * p + (j + 3)] = c03;
      
      C[(i + 1) * p + (j + 0)] = c10; C[(i + 1) * p + (j + 1)] = c11;
      C[(i + 1) * p + (j + 2)] = c12; C[(i + 1) * p + (j + 3)] = c13;
      
      C[(i + 2) * p + (j + 0)] = c20; C[(i + 2) * p + (j + 1)] = c21;
      C[(i + 2) * p + (j + 2)] = c22; C[(i + 2) * p + (j + 3)] = c23;
      
      C[(i + 3) * p + (j + 0)] = c30; C[(i + 3) * p + (j + 1)] = c31;
      C[(i + 3) * p + (j + 2)] = c32; C[(i + 3) * p + (j + 3)] = c33;
    }
  }
}


#undef m
#undef n
#undef p

#define m case2_m
#define n case2_n
#define p case2_p

void gemm_case2(ptr_reg A, ptr_reg B, ptr_reg C, ptr_reg buffer)
{
  // 代码逻辑同 case1，因为 32 也是 4 的倍数
  for (reg i = 0; i < m; i += 4) {
    for (reg j = 0; j < p; j += 4) {
      reg c00 = 0; reg c01 = 0; reg c02 = 0; reg c03 = 0;
      reg c10 = 0; reg c11 = 0; reg c12 = 0; reg c13 = 0;
      reg c20 = 0; reg c21 = 0; reg c22 = 0; reg c23 = 0;
      reg c30 = 0; reg c31 = 0; reg c32 = 0; reg c33 = 0;

      for (reg k = 0; k < n; ++k) {
        reg a0 = A[(i + 0) * n + k];
        reg a1 = A[(i + 1) * n + k];
        reg a2 = A[(i + 2) * n + k];
        reg a3 = A[(i + 3) * n + k];

        reg b0 = B[k * p + (j + 0)];
        reg b1 = B[k * p + (j + 1)];
        reg b2 = B[k * p + (j + 2)];
        reg b3 = B[k * p + (j + 3)];

        c00 += a0 * b0; c01 += a0 * b1; c02 += a0 * b2; c03 += a0 * b3;
        c10 += a1 * b0; c11 += a1 * b1; c12 += a1 * b2; c13 += a1 * b3;
        c20 += a2 * b0; c21 += a2 * b1; c22 += a2 * b2; c23 += a2 * b3;
        c30 += a3 * b0; c31 += a3 * b1; c32 += a3 * b2; c33 += a3 * b3;
      }
      C[(i + 0) * p + (j + 0)] = c00; C[(i + 0) * p + (j + 1)] = c01;
      C[(i + 0) * p + (j + 2)] = c02; C[(i + 0) * p + (j + 3)] = c03;
      C[(i + 1) * p + (j + 0)] = c10; C[(i + 1) * p + (j + 1)] = c11;
      C[(i + 1) * p + (j + 2)] = c12; C[(i + 1) * p + (j + 3)] = c13;
      C[(i + 2) * p + (j + 0)] = c20; C[(i + 2) * p + (j + 1)] = c21;
      C[(i + 2) * p + (j + 2)] = c22; C[(i + 2) * p + (j + 3)] = c23;
      C[(i + 3) * p + (j + 0)] = c30; C[(i + 3) * p + (j + 1)] = c31;
      C[(i + 3) * p + (j + 2)] = c32; C[(i + 3) * p + (j + 3)] = c33;
    }
  }
}

#undef m
#undef n
#undef p

#define m case3_m
#define n case3_n
#define p case3_p

void gemm_case3(ptr_reg A, ptr_reg B, ptr_reg C, ptr_reg buffer)
{
  reg m_split = 25;
  reg p_split = 28;

  // =========================================================
  // 第一阶段：处理前 25 行 (使用 5x4 分块)
  // =========================================================
  for (reg i = 0; i < m_split; i += 5) {
    for (reg j = 0; j < p_split; j += 4) {
      // 20 个累加器
      reg c00 = 0; reg c01 = 0; reg c02 = 0; reg c03 = 0;
      reg c10 = 0; reg c11 = 0; reg c12 = 0; reg c13 = 0;
      reg c20 = 0; reg c21 = 0; reg c22 = 0; reg c23 = 0;
      reg c30 = 0; reg c31 = 0; reg c32 = 0; reg c33 = 0;
      reg c40 = 0; reg c41 = 0; reg c42 = 0; reg c43 = 0;

      for (reg k = 0; k < n; ++k) {
        // 加载 B (4个常驻)
        reg b_idx = k * p + j;
        reg b0 = B[b_idx + 0];
        reg b1 = B[b_idx + 1];
        reg b2 = B[b_idx + 2];
        reg b3 = B[b_idx + 3];

        reg a; 

        // Row 0
        a = A[(i + 0) * n + k];
        c00 += a * b0; c01 += a * b1; c02 += a * b2; c03 += a * b3;

        // Row 1
        a = A[(i + 1) * n + k];
        c10 += a * b0; c11 += a * b1; c12 += a * b2; c13 += a * b3;

        // Row 2
        a = A[(i + 2) * n + k];
        c20 += a * b0; c21 += a * b1; c22 += a * b2; c23 += a * b3;

        // Row 3
        a = A[(i + 3) * n + k];
        c30 += a * b0; c31 += a * b1; c32 += a * b2; c33 += a * b3;

        // Row 4
        a = A[(i + 4) * n + k];
        c40 += a * b0; c41 += a * b1; c42 += a * b2; c43 += a * b3;
      }
      
      // 写回
      C[(i+0)*p+j+0]=c00; C[(i+0)*p+j+1]=c01; C[(i+0)*p+j+2]=c02; C[(i+0)*p+j+3]=c03;
      C[(i+1)*p+j+0]=c10; C[(i+1)*p+j+1]=c11; C[(i+1)*p+j+2]=c12; C[(i+1)*p+j+3]=c13;
      C[(i+2)*p+j+0]=c20; C[(i+2)*p+j+1]=c21; C[(i+2)*p+j+2]=c22; C[(i+2)*p+j+3]=c23;
      C[(i+3)*p+j+0]=c30; C[(i+3)*p+j+1]=c31; C[(i+3)*p+j+2]=c32; C[(i+3)*p+j+3]=c33;
      C[(i+4)*p+j+0]=c40; C[(i+4)*p+j+1]=c41; C[(i+4)*p+j+2]=c42; C[(i+4)*p+j+3]=c43;
    }
  }

  // =========================================================
  // 第二阶段：处理剩下的 4 行 (使用 4x4 分块)
  // =========================================================
  for (reg i = m_split; i < m; i += 4) {
    for (reg j = 0; j < p_split; j += 4) {
      reg c00 = 0; reg c01 = 0; reg c02 = 0; reg c03 = 0;
      reg c10 = 0; reg c11 = 0; reg c12 = 0; reg c13 = 0;
      reg c20 = 0; reg c21 = 0; reg c22 = 0; reg c23 = 0;
      reg c30 = 0; reg c31 = 0; reg c32 = 0; reg c33 = 0;

      for (reg k = 0; k < n; ++k) {
        reg b_idx = k * p + j;
        reg b0 = B[b_idx+0]; reg b1 = B[b_idx+1]; reg b2 = B[b_idx+2]; reg b3 = B[b_idx+3];

        reg a;
        a = A[(i+0)*n+k]; c00+=a*b0; c01+=a*b1; c02+=a*b2; c03+=a*b3;
        a = A[(i+1)*n+k]; c10+=a*b0; c11+=a*b1; c12+=a*b2; c13+=a*b3;
        a = A[(i+2)*n+k]; c20+=a*b0; c21+=a*b1; c22+=a*b2; c23+=a*b3;
        a = A[(i+3)*n+k]; c30+=a*b0; c31+=a*b1; c32+=a*b2; c33+=a*b3;
      }

      C[(i+0)*p+j+0]=c00; C[(i+0)*p+j+1]=c01; C[(i+0)*p+j+2]=c02; C[(i+0)*p+j+3]=c03;
      C[(i+1)*p+j+0]=c10; C[(i+1)*p+j+1]=c11; C[(i+1)*p+j+2]=c12; C[(i+1)*p+j+3]=c13;
      C[(i+2)*p+j+0]=c20; C[(i+2)*p+j+1]=c21; C[(i+2)*p+j+2]=c22; C[(i+2)*p+j+3]=c23;
      C[(i+3)*p+j+0]=c30; C[(i+3)*p+j+1]=c31; C[(i+3)*p+j+2]=c32; C[(i+3)*p+j+3]=c33;
    }
  }

  // =========================================================
  // 第三阶段：处理右侧 1 列边缘 
  // =========================================================
  if (p_split < p) {
    for (reg i = 0; i < m; ++i) {
      for (reg j = p_split; j < p; ++j) {
        reg tmpc = 0;
        for (reg k = 0; k < n; ++k) {
          reg ta = A[i * n + k];
          reg tb = B[k * p + j];
          tmpc += ta * tb;
        }
        C[i * p + j] = tmpc;
      }
    }
  }
}
#undef m
#undef n
#undef p