---
layout: default
title: 错误呈现
parent: 开发者体验设计因子
nav_order: 2
---

# 开发者体验：错误呈现
{: .no_toc }

## 目录
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## 定义开发者体验

开始之前，先让我们转换一下视角，让我们思考一下开发者是如何处理错误的？

### 开发者如何处理错误？

经典玩笑场景下，一旦开发者接收到错误时，会通过以下的三种方式解决：

 - Copying and pasting from Stack Overflow。即从问答网站寻求解决方案
 - Googling the Error Message。搜索“错误信息”
 - Blaming the User。责备用户（PS：这是个玩笑）

所以，从模式来说，我们应该要能满足前两种场景的需求：告诉开发者足够多的错误信息，以让开发者能够寻求帮助。

诸如于，我们遇到：`Segmentation fault (core dumped)`  的错误时，它是由于内存不当操作造成的，如空指针、野指针的读写操作，数组越界访问，破坏常量等。遇到这一类的问题，**如果**返回的错误信息太少时，我们需要详细潜在的错误原因，并像大海捞针一样去解决。所以，debug 成了这时最好的解决手段之一。

基本的处理错误机制，可以告诉开发者，你可以尝试用 `--help` 来解决：

```log
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
```

优秀的错误机制，则可以告诉开发者更多的信息，建议开发者使用类似的方式解决。

## 错误呈现原则

我尝试性的整理出第一个版本的错误处理四要素：

1. 以人为本，信息友好。为人类而非机器设计、返回有意义的错误信息、不指责用户（PS：映射回 blaming the user）
2. 构建学习体验。一步步指引，从错误码、到 GitHub issue 邮件组等。
3. 一致性设计。如 API 错误码，在 Slack 的 API 设计原则，要求与行业、其他产品和 API 保持一致性。
4. 避免错误产生。及时反馈、通过 IDE 消除、运行时验收、请求-确认

基于这四个要素，我们可以思考一些潜在的错误呈现模式。

## 错误呈现模式

依据于上述的几个原则，我尝试性地整理了一些相关的模式，未来将更新在：[https://dx.phodal.com/](https://dx.phodal.com/) 上。

### 模式：为求助设计

从开发者的角度来思考问题，当开发者遇到问题时，他们会使用怎样的方式去解决。常见的几种方式是：

1. Google 搜索。我们是否就需要在错误信息里，提供足够多的信息。
2. 开源项目 Issue。我们是否直接提供相关的 issue 搜索链接功能？
3. 邮件形式。我们是否有工具能一次性收集相关的信息，诸如 log 文件等。
4. ……

针对于不同的情况，再提供优化手段，如在命令行提供高亮语法功能，以便于开发人员截图。

### 模式：自动提供潜在方案

当开发者遇到一些常见的问题后，接建议用户尝试某些方案来解决。这个已经被广泛应用在用户体验上，毕竟普通用户是更大的受众。

### 模式：错误码文档内置

针对于工具来说，由于安全因素，可能会存在一些离线用户，这时就需要提供诸如于 Rust 的错误码文档内置的方式来解决。

### 模式：自动 issue 管理

如上述的 Scoop，通过 GitHub Action 构建自动化机器人，以实施 issue 的自动化处理。

### 模式：开发者可贡献

如采用开源的形式，开发者可以针对错误内容进行贡献。

### 模式：FAQ

源自于 FAQ是英文Frequently Asked Questions的缩写，中文意思就是“经常问到的问题”，或者更通俗地叫做“常见问题解答”。

## 示例

这里主要介绍两个案例，一个是 Rust 语言，一个是 Scoop（Windows 下的命令行安装器）。

### Rust 语言示例

在我使用过的多数语言里，Rust 的编译器抛出的异常，大概是最为“友好的”，毕竟它是一个新世纪的语言。所以，在编写 Rust 的时候，我们相当于是“[编译器驱动开发](https://www.phodal.com/blog/rust-compile-driven-design/)”。

首先，先简单来编写一个缺少 `main` 函数的程序，然后运行它，就会报错：

```bash
error[E0601]: `main` function not found in crate `lumos`
  --> src/main.rs:1:1
   |
1  | / pub mod store;
...  |
10 | |
11 | | }
   | |_^ consider adding a `main` function to `src/main.rs`

For more information about this error, try `rustc --explain E0601`.
error: could not compile `lumos` due to previous error
```

在这个错误里，告诉了我们：

1. 缺少 `main` 函数，可以考虑在 `src/main.rs` 文件的 11 行里，添加一个 `main` 函数 
2. 更详细的详细可以执行 `rustc --explain E0601`，这里的 `E0601` 是一个错误码

而在 IDE 里，则可以 Rust 语言的插件，来直接添加 `main` 函数。

随后，从 Rust 的源码 `compiler/rustc_passes/src/entry.rs` 中的 `no_main_err` 函数里，我们可以发现更多的细节，这里就不展开了。在 Rust 的编译器里，设计了自己的错误码机制，使用错误码 + markdown 的方式来展示。在执行上述的 `explain` 参数之后， 可以读取相关的 markdown 文件，并展示相关的内容。所以，初步的总结下来，它包含了：

- 错误码维护机制。
- 使用易于维护的文件 —— markdown
- 跨平台的终端优化。使用 less 显示 
- 可扩展的错误机制。易于与 IDE 集成

### Scoop 示例

[Scoop](https://github.com/ScoopInstaller/Main) 是我先前从朋友圈看到的一个开源项目，它提供了一个自动化错误处理方案。诸如于，我们在安装工具、软件的时候，出现了异常。它会提供：

1. 创建相关 issue 的链接。一点击即会在 GitHub 上创建对应 issue
2. 自动化尝试重现错误。通过 GitHub Action 执行对应的脚本，来看是否会出错。
3. 自动化尝试给解决方案。尝试通过 Action 给出解决方案，如版本是否有问题，有问题的话，还可以尝试自动化修复。

示例：https://github.com/ScoopInstaller/Main/issues/2711

详细可以参见对应的 GitHub Actions: [https://github.com/shovel-org/GithubActions](https://github.com/shovel-org/GithubActions)


## 参考资料

- [The Error Model](http://joeduffyblog.com/2016/02/07/the-error-model/) 一篇详细介绍编程语言错误模型的文章。

