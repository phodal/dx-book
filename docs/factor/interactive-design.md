---
layout: default
title: 交互设计
parent: 开发者体验设计因子
nav_order: 4
---

# 开发者体验：交互设计
{: .no_toc }


定义：交互设计，又称互动设计，(英文Interaction Design, 缩写 IxD 或者 IaD),是定义、设计人造系统的行为的设计领域，侧重在互动模式的设计。 
{: .fs-6 .fw-300 }

## 目录
{: .no_toc .text-delta }

1. TOC
{:toc}

---

TBC。

不同层级，提供完全的键盘操作与导航

## 原则 

### 使用现代化工具与技术

采用与当前时代一样的技术方式 —— 即不使用逐渐不流行的工具。

### 为连接而设计

内部连接到社区，社区连接到人

### 构建学习体验，降低认知负荷


## 示例

### Apple Swift Playgrounds

使用 Playground 构建学习体验

示例：Swift Playgrounds，在线 [https://developer.apple.com/cn/swift-playgrounds/](https://developer.apple.com/cn/swift-playgrounds/)

Swift Playgrounds 是由苹果公司在 2016 年 6 月 14 日苹果全球开发者大会 WWDC 上发布的 Swift 编程语言学习 App。

## 模式

### 模式：零配置/低配置

示例：Raspberry Pi

Simple HTTP Server

### 模式：CLI

面向开发者设计交互时，与面向普通用户的产品存在一些差异性。诸如于面向普通用户时，GUI 是一个更好的选择，而面向开发人员时，CLI 是一个更好的选择。

> CLI，命令行界面（英語：Command-Line Interface，缩写：CLI）是在图形用户界面得到普及之前使用最为广泛的用户界面，它通常不支持鼠标，用户通过键盘输入指令，计算机接收到指令后，予以执行。也有人称之为字符用户界面（character user interface, CUI）[^cli]。

[^cli]: https://zh.wikipedia.org/zh/%E5%91%BD%E4%BB%A4%E8%A1%8C%E7%95%8C%E9%9D%A2

对于一个现代化的 CLI 来说，它需要提供一个能面向 IDE/ 编辑器作为接口的 API，以帮助于工具开发者，更好的集成到系统中。而CLI 可以提供用于命令行的运行环境，只需要复制/粘贴一下，就能快速解决问题。同时，可以适用于无 GUI 的无服务器端。

甚至于基于 Terminal 进行模拟。

### 模式：CLI 交互模式

[Azure CLI 交互模式](https://docs.microsoft.com/zh-cn/cli/azure/interactive-azure-cli)

> Azure CLI 交互模式 (az interactive) 为用户提供一个交互式的环境来运行 Azure CLI 命令。 使用交互模式可以更轻松地了解 Azure CLI 的功能、命令语法和输出格式。 它提供自动完成下拉列表、自动缓存的建议以及运行时文档，包括各个命令的用法示例。 Azure CLI 交互模式旨在为学习如何使用 Azure CLI 命令的用户提供理想的体验。

### 模式：一键复制

诸如于 Crates.io 上的软件包，以 [writing](https://crates.io/crates/writing) 为例：

![Writing 示例](/image/writing-copy.png)

### 模式：Playground

> Playground 不仅旨在防止损坏测试机器，还应包含损坏网络上其他地方的数据和机器的任何潜在副作用。

关于这个定义的讨论: [Playground](https://english.stackexchange.com/questions/502671/what-does-playground-mean-in-an-informatics-educational-context)

示例：https://play.rust-lang.org/

示例：https://pest.rs/

示例：https://tree-sitter.github.io/tree-sitter/playground

![Tree Sitter 示例](/image/tree-sitter-sample.png)

### 模式：沙盒环境

> 沙箱是一种测试环境，可将未经测试的代码更改和直接实验与生产环境或存储库隔离，在软件开发环境中，包括 Web 开发、自动化和修订控制。 

[https://jsfiddle.net](https://jsfiddle.net)

### 模式：DSL 构建编程体验 

从体验层面来看，使用 DSL

### 模式：训战

如阿里云官方实验平台，提供真实云环境、精品实验项目、详细实验文档， 帮助你快速上手并掌握阿里云产品。

示例：[阿里云 - 云起实验室](https://developer.aliyun.com/adc/) 


## 参考资料

- 《[我是如何在谷歌做开发者用户体验的](https://github.com/xitu/gold-miner/blob/master/TODO/how-i-do-developer-ux-at-google.md)》 en：[How I do Developer UX at Google](https://medium.com/google-design/how-i-do-developer-ux-at-google-b21646c2c4df)
