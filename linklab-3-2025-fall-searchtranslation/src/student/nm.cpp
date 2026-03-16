#include "fle.hpp"
#include <iomanip>
#include <iostream>
#include <algorithm>

/*void FLE_nm(const FLEObject& obj)
{
    // TODO: 实现符号表显示工具
    throw std::runtime_error("Not implemented");
}*/


void FLE_nm(const FLEObject& obj)
{
    // 遍历所有符号
    for (const auto& sym : obj.symbols) {
        // 忽略未定义符号 
        if (sym.section.empty() || sym.type == SymbolType::UNDEFINED) {
            continue;
        }
    
        uint64_t addr = sym.offset;

        if (obj.type != ".obj" && obj.type != ".ar") {
            for (const auto& shdr : obj.shdrs) {
                if (shdr.name == sym.section) {
                    addr += shdr.addr;
                    break;
                }
            }
        }

        // 确定符号类型码
        char type_code = '?';
        bool is_global = (sym.type == SymbolType::GLOBAL || sym.type == SymbolType::WEAK);
        bool is_weak = (sym.type == SymbolType::WEAK);
        
        // 确定基本字符
        if (sym.section == ".text" || sym.section.rfind(".text.", 0) == 0) {
            type_code = 't';
        } else if (sym.section == ".data" || sym.section.rfind(".data.", 0) == 0) {
            type_code = 'd';
        } else if (sym.section == ".bss" || sym.section.rfind(".bss.", 0) == 0) {
            type_code = 'b';
        } else if (sym.section == ".rodata" || sym.section.rfind(".rodata.", 0) == 0) {
            type_code = 'r';
        }

        // 处理弱符号情况 
        if (is_weak) {
            if (type_code == 't') type_code = 'W'; 
            else type_code = 'V';                 
            
        } 
        // 处理强符号的全局情况
        else {
            if (is_global) {
                type_code = std::toupper(type_code);
            }
        }
        // 格式化输出
        std::cout << std::setw(16) << std::setfill('0') << std::hex << addr 
                  << " " << type_code 
                  << " " << sym.name << "\n";
    }
}

/*#include "fle.hpp"
#include <iomanip>
#include <iostream>
#include <algorithm>

void FLE_nm(const FLEObject& obj)
{
    for (const auto& sym : obj.symbols) {
        if (sym.section.empty() || sym.type == SymbolType::UNDEFINED) {
            continue;
        }
    
        uint64_t addr = sym.offset;

        if (obj.type != ".obj" && obj.type != ".ar") {
            for (const auto& shdr : obj.shdrs) {
                if (shdr.name == sym.section) {
                    addr += shdr.addr;
                    break;
                }
            }
        }

        char type_code = '?';
        bool is_global = (sym.type == SymbolType::GLOBAL || sym.type == SymbolType::WEAK);
        bool is_weak = (sym.type == SymbolType::WEAK);
        
        // --- 新增对 .got 和 .plt 的支持 ---
        std::string sec = sym.section;
        if (sec == ".text" || sec.rfind(".text.", 0) == 0)        type_code = 't';
        else if (sec == ".plt")                                   type_code = 't'; // PLT 是代码
        else if (sec == ".data" || sec.rfind(".data.", 0) == 0)   type_code = 'd';
        else if (sec == ".got")                                   type_code = 'd'; // GOT 是数据
        else if (sec == ".bss" || sec.rfind(".bss.", 0) == 0)     type_code = 'b';
        else if (sec == ".rodata" || sec.rfind(".rodata.", 0) == 0) type_code = 'r';

        if (is_weak) {
            if (type_code == 't') type_code = 'W'; 
            else type_code = 'V';                 
        } else {
            if (is_global) {
                type_code = std::toupper(type_code);
            }
        }

        std::cout << std::setw(16) << std::setfill('0') << std::hex << addr 
                  << " " << type_code 
                  << " " << sym.name << "\n";
    }
}*/