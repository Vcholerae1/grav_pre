#import "@preview/touying:0.4.2": *
#import "@preview/unify:0.6.0": num
#import "seu-beamer.typ" as theme-seu
#import "@preview/cetz:0.2.2"
#import "@preview/mitex:0.2.4": *

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



== 均衡的发现


#figure(
  image("firset.png", width: 50%),
  caption: [假设地形不存在的重力],
) <fig:fig>

== 均衡的发现


#figure(
  image("second.png", width: 50%),
  caption: [假设地形存在，不存在质量亏损的重力],
) <fig:fig>

== 均衡的发现

#figure(
  image("third.png", width: 50%),
  caption: [地形存在，质量亏损存在的重力],
) <fig:fig>

== 均衡的原理


- 可以设想在地球内部某个深度（称为补偿深度）的下面，地球内部的压力是静水压力。
- 说明补偿深度处单位横截面上覆柱体重量相等
- 如果在地球上面存在质量过剩（山脉），在均衡的情况下，在补偿深度之上一定存在一个对应的质量亏损
- 对于海洋这样的质量亏损，在均衡的情况下，在补偿深度之上一定存在一个对应的质量过剩





== 两种均衡模式
#grid(
  columns: (1fr,1fr),
  figure(
    image("array.png"),
    caption: [艾里模型 $ sigma_0 H = (sigma - sigma_0)t $],
  ),
  figure(
    image("plt.png"),
    caption: [普拉特模型$ sigma (D+H) = sigma_0 D $]

  )

)


= 解题过程

== 题目
一处理想化山脉和根系，如下图所示，处于均衡平衡状态。密度单位为$"kg/"m^3$.请用深度D来表示A点的高度H
#figure(
  image("test.png", width: 50%),
  caption: [题目图片],
) <fig:fig>
#pause
设$rho_1 = 2000 "kg/"m^3,rho _2 = 2500 "kg/"m^3,rho_3 = 3000"kg/"m^3$
== 解答
#figure(
  image("color!.png", width: 60%),
  caption: [题目图片],  
) <fig:fig>



#let colred(x) = text(fill: yellow, $#x$)
#let colblued(x) = text(fill: blue, $#x$)
#let coly(x) = text(fill: purple, $#x$)
$ colred(1/2(H+D) times rho_1) + colblued(1/2 rho_2 times D)  = colblued(H/2 times rho_2) +coly(rho_3 times(D - H/2))  $
$ H = 3/5 D $









#ending-slide(title: [Thanks for Listening.])[
]
