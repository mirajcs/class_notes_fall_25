#import "@preview/diatypst:0.7.0": *


#show: slides.with(
  title: "Miraj Samarakkody", // Required
  subtitle: "Advanced Calculus",
  date: "",
  authors: ("Miraj Samarakkody"),
   // Optional Styling (for more / explanation see in the typst universe)
  ratio: 16/9,
  layout: "medium",
  title-color: blue.darken(60%),
  toc: true,
)

= Euclidean Space

== Euclidean Space - Cont. 


/ *Definition*: For eaach positive integer $k$, let $bb(R)^k$ be the set of all ordered $k-$tuples, $ bold(x) = (x_1, x_2, dots, x_k)$, where $x_1,x_2, dots, x_k$ are real numbers, called coordinates of $bold(x)$. 
- The elements of $bb(R)^k$ is called points, or vectors, especially when $k>1$. 

If $bold(y)=(y_1,y_2,dots,y_k)$ and if $alpha$ is a real number $ bold(x)+bold(y) & =(x_1+y_1, dots , x_k+y_k)\
alpha bold(x) & = (alpha x_1, alpha x_2, dots, x_n) $  
- These two operations satisfy the commutative, associative and distributive laws. 
- That makes $bb(R)^k$ into a vector space over real field. 
- The zero element of $bb(R)^k$ is the point $bold(0)=(0,0,dots,0)$ (origin)

/ *Definition (Inner Product)*: $ bold(x) dot bold(y) = sum_(i=1)^k x_i y_i= x_1y_1+x_2y_2+dots +x_k y_k$ 

/ *Definition (Norm)*: $ |bold(x)|= (bold(x) dot bold(x))^(1/2) = (sum_(i=1)^k x_i^2)^(1/2)$

This structure is called Euclidean $k-$space.

#pagebreak()

== Theorem 

/ *Theorem*: Suppose $bold(x), bold(y), bold(z) in bb(R)^k$, and $alpha$ is real. Then \ 1. $|bold(x)| >= 0$ \ 2. $|bold(x)|=0$ if and only if $bold(x)=0$. \ 3. $|alpha bold(x)|=|alpha||bold(x)|$ \ 4. $|bold(x) dot bold(y)| <= |bold(x)||bold(y)|$ \ 5. $|bold(x)+bold(y)| <= |bold(x)|+|bold(y)|$  \ 6. $|bold(x)+bold(y)| <= |bold(x)-bold(y)|+|bold(y)-bold(z)|$


#pagebreak()

== Theorem - Proof 

1. $|bold(x)| >= 0$
$
  |bold(x)| & =(bold(x) dot bold(x))^(1/2)=(sum_(i=1)^k x_i^2)^(1/2) \
  |bold(x)|^2 & = sum_(i=1)^k x_i^2 >=0 "for any " bold(x)
$


#pagebreak()

2. $|bold(x)|=0$ if and only if $bold(x)=0$ 
$
  |bold(x)| & =(bold(x) dot bold(x))^(1/2)=(sum_(i=1)^k x_i^2)^(1/2) = 0\
  sum_(i=0)^k x_i^2 & = 0 \
  x_1^2 + x_2^2 + dots + x_k^2 & = 0 \
  " so " x_i=0 "for all " i in {1, dots, k}\
  bold(x)=0  
$

#pagebreak()

3. $|alpha bold(x)|=|alpha||bold(x)|$ 
$
                                       |alpha|| bold(x)| & = |alpha|(sum_(i=1)^k x_i^2)^(1/2)\
                                       & =  (alpha^2)^(1/2)(sum_(i=1)^k x_i^2)^(1/2)\
                                       & =  (alpha^2sum_(i=1)^k x_i^2)^(1/2)\
                                       & =  (sum_(i=1)^k alpha^2 x_i^2)^(1/2) =  (sum_(i=1)^k (alpha x_i)^2)^(1/2) = |alpha bold(x)|
$ 

#pagebreak()

5. $|bold(x) + bold(y)| <= |bold(x)|+|bold(y)|$
$
  |bold(x)+bold(y)|^2 & = (bold(x)+bold(y)) dot (bold(x)+bold(y))\
  & = bold(x) dot bold(x) + 2 bold(x) dot bold(y) + bold(y) dot bold(y) \
  & =|bold(x)|^2 + 2 bold(x) dot bold(y) + |bold(y)|^2

$ Consider, $2 bold(x) dot bold(y)  <= |2 bold(x) dot bold(y)| = 2 | bold(x) dot bold(y)| <= 2|bold(x)||bold(y)|$
$
  |bold(x)+bold(y)|^2 & <= |bold(x)|^2+ 2|bold(x) ||bold(y)| + |bold(y)|^2\
  & = (|bold(x)|+|bold(y)|)^2
$

#pagebreak()

6. $|bold(x)+bold(y)| <= |bold(x)|+|bold(y)| $

#pagebreak()

7. $|bold(x)+bold(y)| <= |bold(x)-bold(y)|+|bold(y)-bold(z)|$ 



