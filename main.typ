#import "@preview/touying:0.4.2": *
#import "@preview/unify:0.6.0": num
#import "seu-beamer.typ" as theme-seu
#import "@preview/cetz:0.2.2"

#let s = theme-seu.register(aspect-ratio: "4-3")
#let s = (s.methods.info)(
  self: s,
  title: [利用重力均衡计算],
  short-title: [均衡模式],
  subtitle: [第三次作业 第6小题],
  author: [杨璞 向果],
  date: datetime.today(),
  institution: [School of Geosciences and Info-physics,\ Central South University],
)
#let (init, slides, touying-outline, alert, speaker-note, tblock) = utils.methods(s)
#show: init

// #show strong: alert

#let (slide, empty-slide, title-slide, outline-slide, new-section-slide, ending-slide) = utils.slides(s)
#show: slides.with(title-slide: false)

#title-slide(authors: [ 向果 杨璞
])

#outline-slide()


= 知识回顾

== 均衡的发现

+ 在安第斯山附近测量重力时，按安第斯山的地形计算得到的垂线偏差远远大于实际的偏差
+ Boscovitch使用山下物质的亏损来解释这一现象
+ Dutton 引用均衡来解释这一现象
+ 






== 均衡的发现


TODO：

== 均衡的原理


- 可以设想在地球内部某个深度（称为补偿深度）的下面，地球内部的压力是静水压力。
- 说明补偿深度处单位横截面上覆柱体重量相等
- 如果在地球上面存在质量过剩（山脉），在均衡的情况下，在补偿深度之上一定存在一个对应的质量亏损
- 对于海洋这样的质量亏损，在均衡的情况下，在补偿深度之上一定存在一个对应的质量过剩





== 两种均衡模式

- 


= 解题过程
#figure(
  image("figures/test.png", width: 50%),
  caption: [题目图片],
) <fig:fig>

TODO：图片处理



#ending-slide(title: [Thanks for Listening.])[
]
