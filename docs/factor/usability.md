---
layout: default
title: 易用性设计
parent: 开发者体验设计因子
nav_order: 3
---

# 开发者体验：易用性设计
{: .no_toc }


定义：易用性是一种以使用者为中心的设计概念，易用性设计的重点在于让产品的设计能够符合使用者的习惯与需求。以互联网网站的设计为例，希望让使用者在浏览的过程中不会产生压力或感到挫折，并能让使用者在使用网站功能时，能用最少的努力发挥最大的效能。
{: .fs-6 .fw-300 }

## 目录
{: .no_toc .text-delta }

1. TOC
{:toc}

---

PS：请注意，这里的易用性设计是在开发者体验背景下，因此与用户体验中的易用性设计存在一定的差异。

我们可以关注于，最少的努力发挥最大的效能。 对于开发者体验而言，它是围绕于开发人员使用技术产品的各个阶段（生命周期），来提升相关的体现，诸如于：一键安装、自服务搭建、版本自动迁移等。

易用性专家 Jakob Nielsen 与计算机科学教授 Ben Shneiderman 曾经分别讨论系统可接受度（acceptability）的框架，其中指出易用性是“有用”（usefulness）的一部分，而且包含下列元素：

- 可学习性 (Learnability)
- 效率 (Efficiency)
- 可记忆性（Memorability）
- 很少出现严重错误 (Errors)
- 满意度 (Satisfaction)

评估时，可以简化为：目标使用者感受到该操作界面的有效性（有达到目的）以及效率（使用时所需的工夫或时间）

## 易用性设计原则

在构建易用性时，它依赖于技术产品本身是**满足功能性需求**的。从模式上来说，它应该：

1. 从开发者旅程出发。从生命周期进行考量，以
2. 满足最小努力原则。 
3. 引导开发者学习。

### 从开发者旅程出发

全生命周期考量，诸如于：

- 评估。诸如于提供一个简单的同类产品分析
- 安装与应用。
- 文档与配置。
- 失败恢复。如何去处理失败场景
- 错误支持。
- 卸载软件体验。

### 采用一致性的设计

- 使用工业标准。如 API 能使用 OpenAPI 、RAML 来描述 API，并提供诸如于 Swagger 的交互式在线 API 文档。
- 不同接口/API 的对齐。

### 满足最少努力原则 

最小努力原则(Principle of Least Effort)最小努力原则是指人们在解决任何一个问题时，总是力图把所有可能付出的平均工作最小化。

对于开发者来说，当他们想尝试一个东西时，如果能用最少的步骤完成对应的工作时。针对于不同需求的开发者、 不同知识水平的开发者们， 能设计一个度量模型，以用于：

- 度量开发者所需要的流程。
- 度量开发者在每一个流程上的时间。

基于这两个维度，来构建相关的模型。

### 引导开发者学习

如在开源项目中的 README 中，一般都会分为多个部分：

- 使用该项目的 Usage
- 搭建该项目的开发指南 Setup
- 为该项目贡献的 Contribute 

而在文档中，则会包含更多的内容。

## 示例

### Just

GitHub: [https://github.com/casey/just](https://github.com/casey/just)

针对于操作系统、包管理工具、包名、安装命令。 从构建的层面来考虑，这是一个非常复杂的工作，它需要通过自动化来解决。 除此，对应的还有 Sublime Text 相关的语法支持。

安装命令：

```bash
curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to DEST
```

### OpenSuSE 

## 易用性设计模式

- 谁是使用者，他们知道什么，以及他们能够学习什么？
- 使用者想要／需要什么？
- 使用者一般具备什么背景？
- 使用者作业的环境
- 机器应该负责做什么？

使用 CLI，

### 模式：1-Click 安装

示例：OpenSuSE

![OpenSuSE 1 Click 安装](/image/opensuse-1-click.png)

Vim 示例：[https://software.opensuse.org/package/vim](https://software.opensuse.org/package/vim)

![IDEA Rust 插件示例](/image/idea-rust-click.png)

示例：Jetbrains IDE

Rust 插件：[https://plugins.jetbrains.com/plugin/8182-rust](https://plugins.jetbrains.com/plugin/8182-rust)

示例：VSCode

Rust 插件：[https://marketplace.visualstudio.com/items?itemName=rust-lang.rust](https://marketplace.visualstudio.com/items?itemName=rust-lang.rustv)


### 模式：一行命令安装

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

不幸的是 Windows 用户暂时只能通过 `rustup-init.exe` 安装。

### 模式：自助式搭建

> Spring Initializr 是 Pivotal Web 服务提供的基于 Web 的工具。借助 Spring Initializr, 我们可以轻松生成 Spring Boot Project 的结构。

试用地址：[Spring Initializr](https://start.spring.io)，如下图所示：

![Spring Initializr](image/spring-initalizr.png)

### 模式：自动化版本迁移工具

示例：Angular 版本更新，只要执行：

```bash
ng update @angular/cli -- migrate-only production-by-default
```

相应的机制比较简单，参见：[前端的自动化重构](https://www.phodal.com/blog/frontend-auto-refactor/)

### 模式：自助卸载

对于软件包安装来说，

## 相关资料

相关文章：

- [https://www.invespcro.com/blog/usability-design-for-a-better-user-experience/](https://www.invespcro.com/blog/usability-design-for-a-better-user-experience/)

