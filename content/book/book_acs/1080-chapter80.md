# (PART) 其他 {-}


# 基于Stata使用RMarkdown书写动态文档（Statamarkdown）


## 下载Statamarkdown并连接Stata
### 下载Statamarkdown

```r
library(devtools) # 如果没有devtools包，需要提前安装
install_github("hemken/Statamarkdown")
```

### 加载Statamarkdown


```r
library(Statamarkdown)
stataexe <- "E:/STATA13/安装程序/StataMP-64.exe"
knitr::opts_chunk$set(engine.path=list(stata=stataexe))
```




### 例子

```stata
sysuse auto
summarize
```

```

    Variable |       Obs        Mean    Std. Dev.       Min        Max
-------------+--------------------------------------------------------
        make |         0
       price |        74    6165.257    2949.496       3291      15906
         mpg |        74     21.2973    5.785503         12         41
       rep78 |        69    3.405797    .9899323          1          5
    headroom |        74    2.993243    .8459948        1.5          5
-------------+--------------------------------------------------------
       trunk |        74    13.75676    4.277404          5         23
      weight |        74    3019.459    777.1936       1760       4840
      length |        74    187.9324    22.26634        142        233
        turn |        74    39.64865    4.399354         31         51
displacement |        74    197.2973    91.83722         79        425
-------------+--------------------------------------------------------
  gear_ratio |        74    3.014865    .4562871       2.19       3.89
     foreign |        74    .2972973    .4601885          0          1

```



## 链接各个代码块
注意，每个STATA代码块都是作为一个独立的STATA会话来执行，彼此相互独立。即，第一个代码块调用的数据和生成的新变量，第二个代码块并不会自动继承，而需要重新调用和生成。

### collectcode代码块选项
当Statamarkdown包加载之后，Stata代码块就可以利用collectcode选项作为块钩（chunk hook），把各代码块连接起来。这样前面块调用的数据和生成的新变量，后面的代码直接继承。Markdown代码如下。
````

```stata
sysuse auto
generate gpm = 1/mpg
summarize price gpm
```
````
````

```stata
regress price gpm
```
````







