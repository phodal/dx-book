---
layout: default
title: 文档体验设计
parent: 开发者体验设计因子
nav_order: 1
---

# 开发者体验：文档体验设计
{: .no_toc }

文档体验设计面向于文档使用者的阅读体验，与文档编写者的构建体验。 
{: .fs-6 .fw-300 }

## 目录
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## 设计原则

### 保持内容准确性

作为文档编写者，需要确保语义准确性，基于人的维度来考虑，相应的机制有：

- 概念词汇表
- 内容一致性
- 文档测试

### 根据用户反馈改进

诸如于：

- 提供有意义的反馈方式。如评分等。
- 让用户可以直接 PR 进行修改。

### 引导开发者学习

常见方式：

- 在内容中进行引导
- 从搜索引擎中引导
- 从错误处理中引导

## 模式

### 模式：应用开放式协作

采用文档代码化的方式进行管理。如文档相关的内容在 GitHub 上，文档指向对应的源码位置，读者可以直接发起对文档的修改。

示例 1：[https://dx.phodal.com/](https://dx.phodal.com/)

示例 2：[https://github.com/MicrosoftDocs/azure-docs-cli](https://github.com/MicrosoftDocs/azure-docs-cli)

### 模式：为搜索引擎设计

以 [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-linux?pivots=apt) 示例，用户从需求出发，从搜索引擎中搜索：

![在 Google 在搜索](image/search-in-google.png)

重要的一个差异：标题与左侧导航并不需要一致：

![Azure 示例](image/design-for-search-engine.png)

获取对应的安装方式。

### 模式：一页式快速开发

对于使用项目的文档，如果不能提供快速搭建的 CLI，应该在一个页面内提供快速开发。

### 模式：库文档自动生成

对于软件库来，其文档应该是自动生成的，主流的编程语言都有各自的文档生成工具。

### 模式：更新日志

大版本以博客的形式展示，如《[Angular 12 更新](https://blog.angular.io/angular-v12-is-now-available-32ed51fbfd49?gi=a0a6358507d3)》，包含：

- 重要更新
