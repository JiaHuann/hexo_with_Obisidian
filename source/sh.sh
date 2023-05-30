#!/bin/bash

# 遍历当前目录及子目录中所有的 .md 文件，并为它们添加 YAML 头部信息
find . -type f -name '*.md' | while read file; do
    # 获取文件名（不包括扩展名）
    filename=$(basename "$file" ".md")
    
    # 在文件头部插入 YAML 头部信息
    sed -i "1i ---\ntitle: $filename\ndate: $(date '+%F %T')\ntags: []\n---\n" "$file"
done
