---
layout: default
title: 易用性设计（TBC）
parent: 开发者体验设计因子
nav_order: 3
---

# 开发者体验：易用性设计（TBC）
{: .no_toc }

## 目录
{: .no_toc .text-delta }

1. TOC
{:toc}

---


## 模式：一键式安装

示例：macOS 开发者与 Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

```
brew install wget
```

示例：应用安装 - 根据不同环境选择

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Rust 应用

## 模式：自助式搭建

示例：[Spring Initializr](https://start.spring.io)

不幸的是 Windows 用户暂时只能通过 `rustup-init.exe` 安装。

## 模式：自动化版本迁移工具

示例：Angular 版本更新

Angular Schematics


相关文章：

- [https://www.invespcro.com/blog/usability-design-for-a-better-user-experience/](https://www.invespcro.com/blog/usability-design-for-a-better-user-experience/)
- [前端的自动化重构](https://www.phodal.com/blog/frontend-auto-refactor/)