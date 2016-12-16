### 随机抽样模块介绍

- require.txt：

  输入自己所得到的约束或需求

  - 第一行输入总的人数(m)和想要设定的指标维数(n)

  - 之后从第二行到第n+1行分别输入相应维度下所设定的人数

- random_data\.py

  - 读入需求文档，根据总人数m申请m\*(n+1)的二维数组并初始化，前n维表示该人是否符合该维度下对应的指标，如果符合则将该位赋值为1，否则为0，第n+1维表示该人是否被选上参加选举。生成的所有数据中默认所有人没有被选上。
  - 对于每一个指标维度，调用python 中random模块，根据该指标需要的人数使用其中的random.sample函数随机抽出符合该指标的人。
  - 将结果输入到data.txt中

- data.txt

  - 每一行对应一个人的所有属性

   > 若开始设定了6个维度，eg:
   > 0 1 0 0 1 0 0 
   >
   > 表示该人符合第2、5维度的指标，没有被选上