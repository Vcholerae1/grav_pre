#import "@preview/touying:0.4.2": *
#import "@preview/unify:0.6.0": num
#import "seu-beamer.typ" as theme-seu
#import "@preview/cetz:0.2.2"
#import "@preview/mitex:0.2.4": *

#let s = theme-seu.register(aspect-ratio: "4-3")
#let s = (s.methods.info)(
  self: s,
  title: [直流电法勘探中测量磁场及磁场梯度的可行性],
  short-title: [MMR],
  author: [秦子凡 龚静 杨璞],
  date: datetime.today(),
  institution: [School of Geosciences and Info-physics,\ Central South University],
)
#let (init, slides, touying-outline, alert, speaker-note, tblock) = utils.methods(s)
#show: init

// #show strong: alert

#let (slide, empty-slide, title-slide, outline-slide, new-section-slide, ending-slide) = utils.slides(s)
#show: slides.with(title-slide: false)

#title-slide(authors: [ 秦子凡 龚静 杨璞])

#outline-slide()

= 均匀半空间的求解

== 麦克斯韦方程组
我们首先观察麦克斯韦方程组
$ nabla times E = - (partial B) / (partial t) $
$ nabla times H = J + J_s + (partial D)/(partial t) $
$ nabla dot D = q $
$ nabla dot B = 0 $

== 电势方程
直流电法勘探一般认为是稳定的电流场，这意味着可以简化麦克斯韦方程组,我们提取电场有关的方程并加上一定的本构关系
$ nabla times E = 0 $
$ nabla times H - sigma E = J_s $ #pause
可以把电场写成一个场的散度
$ E = - nabla phi$
利用这个结果并对上面的式子取散度即可得到
$ nabla dot (sigma nabla phi) = nabla dot J_s $
这个结果就是著名的DC方程,#pause 配合混合边界条件
$ (partial U)/(partial n) + (cos theta)/r phi  = 0 $
我们就完成了DC的理论建模

== 迷思

- 我们只利用了麦克斯韦方程组中的两个方程
- 直流电法勘探中的场源真的是纯直流吗？

== 迷思

- 事实上，我们不必假设所有的磁效应都不存在，$(partial B)/(partial t) =0$与
$nabla times H = J$是独立的
- 我们实际不能肯定直流电法勘探供入地下之后一定是纯直流，事实上是一个低频的电流场

== 求解磁场方程

重新考虑麦克斯韦方程组
$ nabla times E = 0 $
$ nabla times H - sigma E = J_s $
$ nabla dot (mu H) = 0 $
我们通过DC方程可以计算$phi$,得到$phi$后，可以通过求解得到H
$ nabla times H = J_s - sigma nabla phi = f $

== 求解磁场方程
待求解方程
$ nabla times H = J_s - sigma nabla phi = f $
考虑$ nabla dot H = 0 $
可以定义
$ nabla times A = mu H $ 
这样可以把方程化为
$ nabla times nabla times A = mu f $
选用一定的规范条件避免旋度算子的零空间，即可求解。
#pause
$ nabla dot A = 0 $
== 均匀半空间
在直流电法勘探的语境下，供电大致如下图
#figure(
  image("uniform.png."),
caption:[直流电法勘探点电流源]
)
#pause
$ B_phi^n = B_phi + B_phi^"OB" = (mu I)/(4 pi r)  $
= 电导率对磁场的影响
== Biot-Savart定律
待求解问题
$ nabla times nabla times A = mu f $
$ nabla dot A = 0 $
利用双旋度的展开
$ nabla^2 A = -mu f  $
这是一个标量泊松方程，其解析解

#mitex(`A(r)  = \frac{\mu}{4\pi}\iiint \frac{j(r)}{r-r^{'}}\mathbf{d}v
`)

== Biot-Savart定律

#mitex(`A(r)  = \frac{\mu}{4\pi}\iiint \frac{j(r)}{r-r^{'}}\mathbf{d}v
`)
对上式取旋度并作一定的推导
#mitex(`B(r) = \frac{\mu}{4\pi} \iiint _V \frac{(r - r^{'})\times j(r)}{|r - r^{'}|^3}`)
利用$U(r)$与$J(r)$的关系,以及矢量恒等式
#mitex(`B(r) = \frac{\mu}{4\pi} \iiint _V \frac{\nabla U(r) \times \nabla \sigma(r)}{|r - r^{'}|^3}`)

== 电导率对磁场的影响
#mitex(`B(r) = \frac{\mu}{4\pi} \iiint _V \frac{\nabla U(r) \times \nabla \sigma(r)}{|r - r^{'}|^3}`)

- 均匀半空间的电导率对磁场没有影响（可以推广到层状介质）

- 磁场对电导率的梯度敏感

- 可以利用异常磁场来获取地下电导率的信息

- 只能获得相对电导率信息

= 论证磁场以及其旋度进行勘探的可能性


== 可能性
#mitex(`B(r) = \frac{\mu}{4\pi} \iiint _V \frac{\nabla U(r) \times \nabla \sigma(r)}{|r - r^{'}|^3}`)
- 异常磁场的源是地下不均匀分布的电流，如果存在高电导率介质，就会出现电流的集中，进而出现异常磁场，理论上可以用于金属矿探测。
- 对于浸染状矿体，常规电磁法响应较弱，这种方法可以较好的识别（Dentith and Mudge, 2014）。


== 对比
#figure(
  image("compare.png."),
  caption: [几种方法的对比（Bouchedda Abderrezak，2017）]
)








#ending-slide(title: [Thanks for Listening.])[
]
