# Java程序怎么优化

这里针对代码层面

###  1. 字符串处理优化

字符串的拼接， `StringBuilder`和`StringBuffer`

字符串的分割， `StringTokenizer`比`split()`

### 2. 使用`system.arraycopy()`复制数组， `Arrays.copyof()`

### 3. 关注循环体，别做重复劳动

从循环体内提取重复的代码，可以有效的提升系统性能。

另外，在阿里开发手册中强烈推荐，循环体中的语句要考量性能，以下操作尽量移至循环体外处理，如定义对象、变量、获取数据库连接，进行不必要的 try-catch 操作(这个 try-catch 是否可以移至循环体外)。

### 4. 集合使用的较多的场景，应该使用合适的集合

![img](https://imgconvert.csdnimg.cn/aHR0cHM6Ly9tbWJpei5xcGljLmNuL21tYml6X3BuZy93YUgwREdYaFFXT0NGVmwyeThCVGtxSWlidHBpY2xocXNiQ2pYQWdKQUNpYjhFQW5pYU0wZmdLY2twS25JaDlpYnRMYW5DNWZNelhKQWZ3Q0xSWlRzR2liUHU2QS82NDA?x-oss-process=image/format,png)

![img](https://imgconvert.csdnimg.cn/aHR0cHM6Ly9tbWJpei5xcGljLmNuL21tYml6X3BuZy93YUgwREdYaFFXT0NGVmwyeThCVGtxSWlidHBpY2xocXNiRms0Zjdnckt0aWNLdndIMEtNbzhkdmtyUHpaMmg0ODMxbk9KanJTZkxLeGFXUEhUTFY1VDRHUS82NDA?x-oss-process=image/format,png)

![img](https://imgconvert.csdnimg.cn/aHR0cHM6Ly9tbWJpei5xcGljLmNuL21tYml6X3BuZy93YUgwREdYaFFXT0NGVmwyeThCVGtxSWlidHBpY2xocXNiMXVhTXlCTVFDdTJjV0pTUTd6a2pUbmlicjY3SVgyRUFuMkRFdXBhdVJXYlZnYXRUTjNpYUs4cncvNjQw?x-oss-process=image/format,png)

### 5. 使用缓冲

比如`BufferedRead`和`BufferedWriter`

### 6. 可以使用缓存， 日志

### 7. 总的原则

一个优化原则：先实现业务功能，再考虑优化性能

一个调优思路：

- 系统设计层面
- 代码层面
- Java程序运行的环境，调整JVM的参数等
- 数据库层面
- 操作系统调优

![img](https://imgconvert.csdnimg.cn/aHR0cHM6Ly9tbWJpei5xcGljLmNuL21tYml6X3BuZy93YUgwREdYaFFXT0NGVmwyeThCVGtxSWlidHBpY2xocXNiQ2d0UEoyS3BHSm9pYzV4VHd6UFdiTlYyZGcxUlNoZFFBeEZqM2NGMUlreXdtMnI4QjM5T3Z4Zy82NDA?x-oss-process=image/format,png)