#!/bin/bash

if ! command -v curl &> /dev/null; then
    echo "Error: curl is not installed. Please install curl before running this script."
    exit 1
fi

# 文件路径
access_key_file=".access_key"
handin_file="gemm.cpp"

# 读取 access_key 文件中的密钥
if [ -s "$access_key_file" ]; then
    access_key=$(cat "$access_key_file")
else
    # 提示用户输入密钥
    echo "Access key file is empty. Please enter the access key:"
    read -r access_key
    
    # 检查输入是否为空
    if [ -z "$access_key" ]; then
        echo "Error: No access key provided. Exiting."
        exit 1
    fi
    
    # 保存密钥到文件
    echo "$access_key" > "$access_key_file"
fi

# 使用 curl 命令发送 POST 请求
    url="http://cachelab.rucics.tech"

curl -X POST "$url/upload" \
-A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36" \
-F "file=@$handin_file" \
-F "access_key=$access_key" \
--progress-bar

echo "" # 换行
