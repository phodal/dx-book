---
layout: default
title: 动态文档代码生成
parent: 实践模式
nav_order: 13
---

即：[开发者体验：文档工程](https://dx.phodal.com/docs/patterns/document-engineering.html) 中灵活代码块的展开。

## 业内案例：Chocolate Factory 文档

示例：https://framework.unitmesh.cc/rag/vector-store

基于代码切分文档：

https://github.com/unit-mesh/chocolate-factory/blob/1c70e5c326c70dcabc19ba5e13ef08832c900191/docs-builder/src/main/kotlin/cc/unitmesh/docs/model/DocGenerator.kt#L32-L51

测试用例示例：

```kotlin
@Test
@SampleCode
fun it_works() {
    // start-sample
    val embeddingStore: EmbeddingStore<Document> = InMemoryEmbeddingStore()

    embeddingStore.add(toEmbedding(floatArrayOf(1f, 3f)), Document.from("first"))
    embeddingStore.add(toEmbedding(floatArrayOf(2f, 2f)), Document.from("second"))

    val relevant: List<EmbeddingMatch<Document>> =
        embeddingStore.findRelevant(toEmbedding(floatArrayOf(4f, 0f)), 2)

    // end-sample

}
```

## 业内案例：Google Android 文档

示例：https://developer.android.com/jetpack/compose/lifecycle?hl=zh-cn 其中的代码引用会指向 GitHub 代码库。               

文档通过使用关联 tag 来实现：

```Kotlin
// [START android_compose_lifecycle_3]
@Composable
fun MoviesScreen(movies: List<Movie>) {
    Column {
        for (movie in movies) {
            // MovieOverview composables are placed in Composition given its
            // index position in the for loop
            MovieOverview(movie)
        }
    }
}
// [END android_compose_lifecycle_3]
```
  
