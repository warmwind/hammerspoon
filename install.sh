#!/bin/bash

# Hammerspoon 工作目录
WORKING_DIR="$HOME/.hammerspoon"

# 工作目录不存在
if [ ! -d "$WORKING_DIR" ]
then
  mkdir "$WORKING_DIR"
fi

cd "$WORKING_DIR" || exit
echo "Working directory：$WORKING_DIR"
# 删除旧文件
rm -rf *
rm -rf .idea
rm -rf .vscode
rm -rf .git
rm -rf .gitignore
rm -rf .config
rm -rf .emoji
# 拉取工程（为加快拉取速度，不拉取历史记录）
git clone git@github.com:warmwind/hammerspoon.git --depth=1
mv hammerspoon/* .
mv hammerspoon/.git .
mv hammerspoon/.gitignore .
rm -rf hammerspoon
cp modules/shortcut.lua.example modules/shortcut.lua