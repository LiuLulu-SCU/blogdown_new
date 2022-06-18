---
date: "2021-01-01"
title: 概率敏感性分析
type: book
weight: 70
math: true
mathjax: "book/MathJax/MathJax.js"
---
## 一、基本概念

## 二、参数的分布

<img src="/courses/probability/PSA_files/figure-html/2.jpg" width="672" />

<img src="/courses/probability/PSA_files/figure-html/1-1.png" width="672" />
<img src="/courses/probability/PSA_files/figure-html/1-4.png" width="672" />

### 1.Beta分布
- 适用于：二分类数据（Binomial Data）、效用参数  

如果，已知事件发生数$=r$，样本量$=n$，则$\alpha=r$，$\beta=n-r$。如果已知发生概率及其标准差，则用以下公式：

$$
\alpha=mean \times \left (\frac{mean \times(1-mean)}{SD^2}-1 \right)
$$
$$
\beta= \frac{mean \times(1-mean)}{SD^2}-1 -\alpha
$$
注：已知$\alpha和\beta$求$mean$和$s$的公式
$$
mean=\frac{\alpha}{\alpha+\beta}
$$
$$
s^2=\frac{\alpha \times\beta}{(\alpha+\beta)^2(\alpha+\beta+1)}
$$
标准误还可等于
$$
se=\sqrt{ \frac{p(1-p)}{n}}
$$
### 2.狄利克雷分布（Dirichlet distribution）/多元Beta分布（multivariate Beta distribution）：
- 适用于：多项式数据（multinomial data）  

A状态转移概率服从$Dirichlet(1251, 350, 116, 17)$

B状态的转移概率服从$Dirichlet(731, 512, 15)$

### 3.Lognormal分布
- 适用于：相对风险比（Relative Risk）参数

<img src="/courses/probability/PSA_files/figure-html/1-3.png" width="672" />


$$
\begin{align} 
RR&=\frac{a}{a+c}/\frac{b}{b+d} \\\\
&=\frac{a}{a+c} \times \frac{b+d}b{} 
\end{align}
$$
通常将RR值转换成对数形式：$ln(RR)=ln(a)-ln(a+c)+ln(b+d)-ln(b)$,
此时RR就服从$lognormal$分布，$ln(RR)$的标准误为：
$$
se[ln(RR)]=\sqrt{ \frac{1}{a} - \frac{a}{a+c} +\frac{1}{b+d}  }
$$

例子：已知RR值=0.51，置信区间0.365-0.710。求$ln(RR)$的标准误

$$
\begin{align} 
se[ln(RR)]&=\frac{(-0.342)-(-1.008)}{2 \times1.96} \\\\
&=0.173
\end{align} 
$$
那么lnRR就服从正态分布$(-0.675, 0.173)$, 然后取指数。

### 3.Gamma分布

- 适用于：成本参数

$$
\alpha= \left( \frac{mean}{se}\right)^2
$$
$$
\beta=  \frac{se^2}{mean}
$$
### 4.三角分布（triangular distributions）
三角分布有三个参数：最小值（min）、最大值（max）、众数（mode）
$$
mean=\frac{1}{3}(min+mode+max)
$$

$$
\begin{align} 
var= & \frac{1}{18}(min^2+mode^2+max^2 \\\\
&-min\times mode-min \times max - mode \times max)
\end{align} 
$$

## 三、Excel散点图美化
有增量成本和增量效果两列数据，绘制散点图
- 美化散点大小：双击“散点”，【设置数据系列格式】-【标记】-【标记选项】-【内置】-【大小】选择1或2
- 美化散点颜色：双击“散点”，【设置数据系列格式】-【标记】-【填充】-【颜色】













