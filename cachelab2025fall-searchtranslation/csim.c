// student id: 2024201452
// please change the above line to your student id
/*
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>

void printSummary(int hits, int misses, int evictions)
{
  printf("hits:%d misses:%d evictions:%d\n", hits, misses, evictions);
  FILE *output_fp = fopen(".csim_results", "w");
  assert(output_fp);
  fprintf(output_fp, "%d %d %d\n", hits, misses, evictions);
  fclose(output_fp);
}

void printHelp(const char *name)
{
  printf(
      "Usage: %s [-hv] -s <num> -E <num> -b <num> -t <file>\n"
      "Options:\n"
      "  -h         Print this help message.\n"
      "  -v         Optional verbose flag.\n"
      "  -s <num>   Number of set index bits.\n"
      "  -E <num>   Number of lines per set.\n"
      "  -b <num>   Number of block offset bits.\n"
      "  -t <file>  Trace file.\n\n"
      "Examples:\n"
      "  linux>  %s -s 4 -E 1 -b 4 -t traces/yi.trace\n"
      "  linux>  %s -v -s 8 -E 2 -b 4 -t traces/yi.trace\n",
      name, name, name);
}

int main(int argc, char *argv[])
{
  // printHelp(argv[0]);
  printSummary(0, 0, 0);
  return 0;
}*/

// student id: 2024201452
// please change the above line to your student id

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include <unistd.h>
#include <stdint.h>
#include <string.h>
#include <limits.h>

/* ================= 全局变量与类型定义 ================= */

// 定义 Cache 行
typedef struct {
    int valid;          // 有效位
    uint64_t tag;       // 标记位 (64位地址)
    int lru_stamp;      // LRU 时间戳
} CacheLine;

// 定义 Cache 组
typedef struct {
    CacheLine *lines;   // 每个组包含 E 行
} CacheSet;

// 全局变量用于存储 Cache 参数和统计数据
int s = 0;              // 组索引位数 (Set index bits)
int E = 0;              // 关联度 (Lines per set)
int b = 0;              // 块偏移位数 (Block offset bits)
char *trace_file = NULL;// 轨迹文件名
int verbose = 0;        // 是否输出详细信息 (-v)

// 统计计数器
int hit_count = 0;
int miss_count = 0;
int eviction_count = 0;

// 全局时间戳，每操作一次加1，用于 LRU
int global_time = 0;

// Cache 实体：S = 2^s 个组
CacheSet *cache = NULL; 
int S = 0; // 组的总数

/* ================= 辅助函数声明 ================= */

void printSummary(int hits, int misses, int evictions)
{
  printf("hits:%d misses:%d evictions:%d\n", hits, misses, evictions);
  FILE *output_fp = fopen(".csim_results", "w");
  assert(output_fp);
  fprintf(output_fp, "%d %d %d\n", hits, misses, evictions);
  fclose(output_fp);
}

void printHelp(const char *name)
{
  printf(
      "Usage: %s [-hv] -s <num> -E <num> -b <num> -t <file>\n"
      "Options:\n"
      "  -h         Print this help message.\n"
      "  -v         Optional verbose flag.\n"
      "  -s <num>   Number of set index bits.\n"
      "  -E <num>   Number of lines per set.\n"
      "  -b <num>   Number of block offset bits.\n"
      "  -t <file>  Trace file.\n\n"
      "Examples:\n"
      "  linux>  %s -s 4 -E 1 -b 4 -t traces/yi.trace\n"
      "  linux>  %s -v -s 8 -E 2 -b 4 -t traces/yi.trace\n",
      name, name, name);
}

/* ================= Cache 核心逻辑 ================= */

// 初始化 Cache
void initCache() {
    S = 1 << s; // S = 2^s
    cache = (CacheSet *)malloc(S * sizeof(CacheSet));
    if (!cache) { fprintf(stderr, "Malloc failed.\n"); exit(1); }

    for (int i = 0; i < S; i++) {
        cache[i].lines = (CacheLine *)malloc(E * sizeof(CacheLine));
        if (!cache[i].lines) { fprintf(stderr, "Malloc failed.\n"); exit(1); }
        // 初始化每一行
        for (int j = 0; j < E; j++) {
            cache[i].lines[j].valid = 0;
            cache[i].lines[j].tag = 0;
            cache[i].lines[j].lru_stamp = 0;
        }
    }
}

// 释放 Cache 内存
void freeCache() {
    for (int i = 0; i < S; i++) {
        free(cache[i].lines);
    }
    free(cache);
}

// 访问 Cache 的核心函数
// 参数：addr - 访问地址

void accessCache(uint64_t addr) {
    // 1. 计算 Set Index 和 Tag
    // Set Index 位于地址的中间部分： (addr >> b) & ((1 << s) - 1)
    // Tag 位于高位： addr >> (s + b)
    
    // 使用 uint64_t 防止溢出，位运算生成掩码
    uint64_t set_index_mask = ((uint64_t)1 << s) - 1;
    uint64_t set_index = (addr >> b) & set_index_mask;
    uint64_t tag = addr >> (s + b);

    CacheSet *set = &cache[set_index];
    int hit = 0;
    int empty_line_index = -1; // 记录找到的空行位置
    int eviction_line_index = -1; // 记录如果需要驱逐，该驱逐哪一行
    int min_lru = INT_MAX; // 用于找最小 LRU

    // 2. 遍历该组内的所有行，查找 Hit
    for (int i = 0; i < E; i++) {
        if (set->lines[i].valid) {
            // 如果有效，检查 Tag
            if (set->lines[i].tag == tag) {
                hit = 1;
                hit_count++;
                set->lines[i].lru_stamp = global_time; // 更新 LRU 时间
                if (verbose) printf(" hit");
                break;
            }
            // 同时记录最小 LRU 的行，以备驱逐
            if (set->lines[i].lru_stamp < min_lru) {
                min_lru = set->lines[i].lru_stamp;
                eviction_line_index = i;
            }
        } else {
            // 记录遇到的第一个空行位置
            if (empty_line_index == -1) {
                empty_line_index = i;
            }
        }
    }

    // 3. 处理 Miss
    if (!hit) {
        miss_count++;
        if (verbose) printf(" miss");

        if (empty_line_index != -1) {
            // 情况 A: 有空行，直接填入 (No Eviction)
            set->lines[empty_line_index].valid = 1;
            set->lines[empty_line_index].tag = tag;
            set->lines[empty_line_index].lru_stamp = global_time;
        } else {
            // 情况 B: 组满了，需要驱逐 (Eviction)
            eviction_count++;
            if (verbose) printf(" eviction");
            // 替换掉 LRU 最小的那一行
            if (eviction_line_index != -1) {
                set->lines[eviction_line_index].tag = tag;
                set->lines[eviction_line_index].lru_stamp = global_time;
            }
        }
    }
}

/* ================= 主函数 ================= */

int main(int argc, char *argv[])
{
    char opt;
    // 解析命令行参数
    while ((opt = getopt(argc, argv, "hvs:E:b:t:")) != -1) {
        switch (opt) {
            case 'h':
                printHelp(argv[0]);
                return 0;
            case 'v':
                verbose = 1;
                break;
            case 's':
                s = atoi(optarg);
                break;
            case 'E':
                E = atoi(optarg);
                break;
            case 'b':
                b = atoi(optarg);
                break;
            case 't':
                trace_file = optarg;
                break;
            default:
                printHelp(argv[0]);
                return 1;
        }
    }

    // 检查必要参数
    if (s == 0 || E == 0 || b == 0 || trace_file == NULL) {
        printf("Missing required arguments.\n");
        printHelp(argv[0]);
        return 1;
    }

    // 初始化 Cache
    initCache();

    // 读取 Trace 文件
    FILE *fp = fopen(trace_file, "r");
    if (!fp) {
        printf("Failed to open trace file: %s\n", trace_file);
        return 1;
    }

    char operation;     // 'L', 'S'
    uint64_t address;   // 64位地址
    int size;           // 访问大小
    int reg_placeholder;// 寄存器

    // 读取文件循环
    // 格式字符串 " %c" 前的空格用于跳过换行符
    while (fscanf(fp, " %c %lx,%d %d", &operation, &address, &size, &reg_placeholder) > 0) {
        
        if (verbose) printf("%c %lx,%d", operation, address, size);

        // 更新全局时间
        global_time++;

        accessCache(address);

        if (verbose) printf("\n");
    }

    fclose(fp);

    // 打印结果并生成 .csim_results 文件
    printSummary(hit_count, miss_count, eviction_count);

    // 释放内存
    freeCache();

    return 0;
}
