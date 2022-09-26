---
layout: default
title: 基于持续集成的自动化模板
parent: 实践模式
nav_order: 8
---

示例:

- Intellij IDEA 插件模板：https://github.com/JetBrains/intellij-platform-plugin-template



效果：

1. 使用模板时，会通过 GitHub Action 创建创建工程，并清理无用的代码。
2. 通过在 README 里编写的 Todo 来帮助开发人员查看每一步。

Todo 示例：

## Template ToDo list
- [x] Create a new [IntelliJ Platform Plugin Template][template] project.
- [x] Get familiar with the [template documentation][template].
- [x] Verify the [pluginGroup](./gradle.properties), [plugin ID](./src/main/resources/META-INF/plugin.xml) and [sources package](./src/main/kotlin).
- [x] Review the [Legal Agreements](https://plugins.jetbrains.com/docs/marketplace/legal-agreements.html).
- [ ] [Publish a plugin manually](https://plugins.jetbrains.com/docs/intellij/publishing-plugin.html?from=IJPluginTemplate) for the first time.
- [ ] Set the Plugin ID in the above README badges.
- [ ] Set the [Deployment Token](https://plugins.jetbrains.com/docs/marketplace/plugin-upload.html).
- [ ] Click the <kbd>Watch</kbd> button on the top of the [IntelliJ Platform Plugin Template][template] to be notified about releases containing new features and fixes.

