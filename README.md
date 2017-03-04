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

- operate.py

  对data.txt中的数据进行累计，结果输出到final_data.txt中
- k-means
  - data2.mat 中存放三维数据
  - k_means.m 读入ex7data2.mat中数据，通过k_means算法通过迭代将这些数据点自动聚合成k个类，得到k个类的中心点,使得对于任意的一个数据点，该点到该类中心点的欧氏距离最短，及该点到该点所属中心类最近。
  - 其余函数均在k_means中被调用，负责计算最短距离，成果展示等作用，详情可见每个函数中的注释
  - 通过简单修改k_means中的初始参数k，可以将这些数据点任意分成k类，去掉如果最后的三维显示功能，则可以改变输入数据的维度
  
