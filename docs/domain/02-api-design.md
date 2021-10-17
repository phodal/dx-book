---
layout: default
title: API 体验设计（TBC）
parent: 领域案例学习
nav_order: 3
---

# 开发者体验：Web API 体验设计
{: .no_toc }

## 目录
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Slack API 设计

相关文章：[How We Design Our APIs at Slack](https://slack.engineering/how-we-design-our-apis-at-slack/)

设计原则：
 
- 为做一件事并做好。简单的 API 不仅易于理解，而且更易于扩展、性能更高且更安全。此外，向 API 添加新功能很容易，但很难删除它们。
- 使上手变得快速而轻松。
  - 基础指标：TTFHW。在 Slack，我们希望入门级开发人员能够在大约 15 分钟内了解该平台、创建应用程序并发送他们的第一个 API 调用。
  - 其它指标。对于 Slack 的我们来说，我们认为对于开发人员来说，重要的是让他们的应用程序在至少一个其他用户面前展示，或者达到某个交互点，使应用程序可以做的不仅仅是按命令广播消息。
- 力求直观的一致性。
  - 与行业标准的一致性
  - 与您的产品的一致性
  - 与您的其他 API 方法的一致性
- 返回有意义的错误。返回错误代码、长格式的错误详情、错误消息和警告等。
- 为规模和性能而设计。
- 避免破坏性更改。

设计流程

1. 编写 API 规范（spec）
2. 内部 API 检视（review）
3. 早期合作伙伴反馈
4. Beat 测试

最后，保持灵活性
