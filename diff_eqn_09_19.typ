#import "@preview/slydst:0.1.4": *

#show: slides.with(
  title: "Differential Equations",
  subtitle: "Tougaloo College",
  date: none,
  authors: ("Miraj Samarakkody",),
  layout: "medium",
  ratio: 16/9,
  title-color: none,
)

//== Outline


// #outline()

= First-Order Differential Equations

= Modeling with First-Order Differential Equations 



*Example* Escape Velocity

A body of constant mass $m$ is projected away from the earth in a direction perpendicular to the earth's surface with an initial velocity $v_0$.

#figure(image("images/fig_03.png", width: 50%))

#pagebreak()

1. Assuming that there is no air resistance, but taking into account the variation of the earth gravitational field with distance, find and expression for the velocity during the ensuing motion. (The gravitational force acting on the body in inversely proportional to the square of the distance from the center of the earth). 

$
  v & = plus.minus sqrt((2g R^2)/(R+x) + v_0 ^2 -2 g R)
$

#pagebreak()

2. Find the initial velocity that is required to lift the body to given maximum altitude $A_"max"$ above the surface of the earth.


#pagebreak()

3. Find the least initial velocity for which the body will not return to the earth. (escape velocity). 





Assumptions: 
1. neglects the effect of air resistance
etc...

#pagebreak()
== Difference between linear and non-linear Equations

=== Existence and Uniqueness of Solutions

#thm(title: "Existence and Uniqueness theorem for first-order linear equations")[
  IF the functions $p$ and $g$ are continuous on an open interval $I$ containing the point $t=t_0$, then there exists a unique function $y= phi (t)$ that satisfies the differential equation 
  $
    y' + P(t) y = g(t)
  $ for each $t$ in $I$, and also satisfies the initial condition 
  $
    y(t_0) = y_0,
  $ where $y_0$ is an arbitrary prescribed initial value. 
]

We omit the proof.

#thm(title: "Existence and Uniqueness theorem for first-order non-linear equation")[
Let the functions $f$ and $(partial f)/(partial y)$ be continuous in some rectangle $alpha < t < beta$, $gamma < y < delta$ containing the point $(t_0, y_0)$. Then, in some interval $t_0 -h < t < t_0 +h$ contained in $ alpha < t < beta$, there is a unique solution $y=phi (t)$ of the initial value problem. 
$
  y' = f(t,y) , quad y(t_0)= y_0
$
]

We omit the proof. 

*Example:*

Find an interval in which the initial value problem 
$
  t y' +2 y = 4t^2,\
  y(1) = 2
$ has a unique solution. Then do the same when the initial condition is changed to $y(-1)=2$. 

#pagebreak()

*Example:*

Find an interval in which the initial value problem 
$
  (d y)/(d x) = (3x^2 +4x +2)/(2(y-1)), \
  y(0)=-1
$ Repeat this analysis when the initial condition is changed to $y(0)=1$. 
