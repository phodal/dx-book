---
layout: default
title: 一行命令安装
parent: 实践模式
nav_order: 1
---

# 实践模式：一行命令安装
{: .no_toc }

## 目录
{: .no_toc .text-delta }

1. TOC
{:toc}

---



```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

要素：

1. 安装环境检查
   1. 系统环境。如系统架构
   2. `endianness` 大小端
2. 执行环境检查
   1. uname 等
3. 下载器
4. 验证包
5. 安装包


## 示例

### macOS

### Windows

[Scoop](https://scoop.sh/) usage: 

```bash
scoop install curl
```

安装

```powershell
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
```

```powershell
# or shorter
iwr -useb get.scoop.sh | iex
```