#!/bin/bash
root_path=$(dirname "$(readlink -f "$0")")
template_path="${root_path}/template.doc"
filename="（平原王树志）.doc"

# 创建日期目录
today_dir_name=$(date +"%Y%m%d")
today_dir_path="${root_path}/${today_dir_name}"
cd "$root_path"
mkdir -p "$today_dir_path" || { echo "Directory creation failed"; exit 1; }

# 拷贝模板文件
dest_file="${today_dir_path}/${filename}"
[ -f "$template_path" ] || { echo "Template missing"; exit 2; }
cp -n "$template_path" "$dest_file" || echo "${dest_file} exists"

# 打开文件
if [ -e "$dest_file" ]; then
    xdg-open "$dest_file" &
fi
