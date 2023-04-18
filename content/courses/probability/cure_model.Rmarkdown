---
date: "2023-04-18"
title: 混合治愈模型
type: book
weight: 100
math: true
mathjax: "book/MathJax/MathJax.js"
---



标准的混合治愈模型（mixture cure model）估计患者在时间$t$的总生存率（OS）$S_o (t+a)$，其中$a$表示患者队列年龄的均值。 混合治愈模型假设总生存率的结果由两个亚组人群导致：治愈的患者（治愈比例为$\pi$）和未治愈的患者（$1-\pi$）。值得注意的是，我们无法确认一个特定患者是属于治愈组或者未治愈组，我们只能得到治愈或未治愈患者占总人群的比例。

在治愈的患者中，癌症不再对生存率产生负面影响，其生存率应该和一般人群的生存率相同。治愈患者的背景生存率（background survival）表示为$S_b(t+a)$。

在未治愈的患者中，癌症会对生存率产生负面影响，其生存率会比一般人群的生存率低。未治愈患者的生存率表示为$S_u(t)$，该生存率取决于基线特征，如年龄、性别等，并可通过标准参数模型（standard parametric survival model）或灵活参数模型（flexible parametric survival model）估计得到。

在混合治愈模型中，总生存率等于背景生存率乘以癌症特异生存率。

$$
S_o(t+a)=S_b(t+a) × (\pi + (1-\pi)S_u(t)) 
$$

混合治愈模型也可以用风险函数（hazard function）表示。
类似的，总风险函数$h_o(t)$也有两部分组成：
治愈患者的背景风险函数$h_b(t+a)$和未治愈患者中癌症导致的高风险。

$$
h_o(t)=h_b(t+a) + \frac{(1-\pi) × f_u(t)}{\pi +(1-\pi) × S_u(t)}
$$

其中，$ f_u(t)$是$ S_u(t)$的的概率密度函数（probability density function，PDF）。每一种分布的生存和风险函数（如Weibull或Gompertz分布）都有其特定的参数，详见[Github仓库](https://github.com/felizzi/Cure_models)的“funs_hazard.R” and “funs_long_term_survival.R”。

当时用风险函数表示模型更容易计算log似然（likelihood，$L$)，进而来使用最大似然法来估计模型参数。

$$
logL= \sum_{i=1}^N d_i × logh_o(t_i) + \sum_{i=1}^N logS_o(t_i)
$$










