数据的表示方法：词向量、tf-idf

词袋模型（bag of words）

仅仅考虑所有词的权重（出现的频率）



分词 tokenizing - 统计修订此特征量 counting -标准化 normalizing



向量化：是稀疏的



 CountVectorizer ： 将文本中的词语转换为词频矩阵 



 TF-IDF ：是一种加权技术， 用以评估一个字词对于一个文件集或一个语料库中的其中一份文件的重要程度 

 字词的重要性随着它在文件中出现的次数成正比增加，但同时会随着它在语料库中出现的频率成反比下降  TF-IDF实际上是：TF * IDF。  如果某个词或短语在一篇文章中出现的频率TF高，并且在其他文章中很少出现，则认为此词或者短语具有很好的类别区分能力，适合用来分类 





五步实现朴素贝叶斯文本分类



现在考虑两类问题，垃圾邮件和非垃圾邮件  Spam  and Ham



前期准备：带有标签的训练集




