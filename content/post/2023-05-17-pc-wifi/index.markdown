---
title: 电脑连不上网
author: 刘卢路
date: '2023-05-17'
slug: pc-wifi
categories: []
tags: []
subtitle: ''
summary: ''
authors: []
lastmod: '2023-05-17T08:03:25+08:00'
featured: no
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: []
---



**法一：重设代理服务器设置**

打开Windows设置  -->  网络和Internet  -->  代理  -->  关闭自动代理设置和手动代理设置。




**查看是否自动获取IP**

转自： <https://baijiahao.baidu.com/s?id=1754872717480480346&wfr=spider&for=pc&searchword=%E7%94%B5%E8%84%91%E8%BF%9E%E4%B8%8D%E4%B8%8Awifi/> 

1、按下【Win+i】，单击【网络和Internet】，然后单击【更改适配器选项】。鼠标双击【WLAN】，在打开的窗口点击【属性】；

<img src="1-1.jpg" width="75%" style="display: block; margin: auto;" />


2、在项目列表里面，查找并双击以打开【Internet协议版本4(TCP/IPv4)】

<img src="1-2.jpg" width="75%" style="display: block; margin: auto;" />


3、单击【高级】

<img src="1-3.jpg" width="75%" style="display: block; margin: auto;" />

4、切换到【WINS】界面，把【启用TCP/IP上的NetBIOS】前面的方框勾选上，再选择【确定】。然后查看【ipv4连接】的状态，如果看到了【internet】，这表示网络可以正常使用了。

<img src="1-4.jpg" width="75%" style="display: block; margin: auto;" />
