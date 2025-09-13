#import "@preview/slydst:0.1.4": *

#show: slides.with(
  title: "Advanced Calculus",
  subtitle: "Tougaloo College",
  date: none,
  authors: ("Miraj Samarakkody",),
  layout: "medium",
  ratio: 16/9,
  title-color: none,
)

= Euclidean Space

== Euclidean Space - Cont. 


#def()[For eaach positive integer $k$, let $bb(R)^k$ be the set of all ordered $k-$tuples, $ bold(x) = (x_1, x_2, dots, x_k)$, where $x_1,x_2, dots, x_k$ are real numbers, called coordinates of $bold(x)$. ]
- The elements of $bb(R)^k$ is called points, or vectors, especially when $k>1$. 

If $bold(y)=(y_1,y_2,dots,y_k)$ and if $alpha$ is a real number $ bold(x)+bold(y) & =(x_1+y_1, dots , x_k+y_k)\
alpha bold(x) & = (alpha x_1, alpha x_2, dots, x_n) $  
- These two operations satisfy the commutative, associative and distributive laws. 
- That makes $bb(R)^k$ into a vector space over real field. 
- The zero element of $bb(R)^k$ is the point $bold(0)=(0,0,dots,0)$ (origin)

#def(title: "Inner Product" )[$ bold(x) dot bold(y) = sum_(i=1)^k x_i y_i= x_1y_1+x_2y_2+dots +x_k y_k$ ]

#def(title: "Norm")[ $ |bold(x)|= (bold(x) dot bold(x))^(1/2) = (sum_(i=1)^k x_i^2)^(1/2)$]

This structure is called Euclidean $k-$space.

#pagebreak()

== Theorem 

#thm()[Suppose $bold(x), bold(y), bold(z) in bb(R)^k$, and $alpha$ is real. Then 
1. $|bold(x)| >= 0$ 
2. $|bold(x)|=0$ if and only if $bold(x)=0$. 
3. $|alpha bold(x)|=|alpha||bold(x)|$ 
4. $|bold(x) dot bold(y)| <= |bold(x)||bold(y)|$ 
5. $|bold(x)+bold(y)| <= |bold(x)|+|bold(y)|$  
6. $|bold(x)+bold(y)| <= |bold(x)-bold(y)|+|bold(y)-bold(z)|$]


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

4. $|bold(x) dot bold(y)| <= |bold(x)||bold(y)|$ 

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

7. $|bold(x)+bold(y)| <= |bold(x)-bold(y)|+|bold(y)-bold(z)|$ 


= Basic Topology

== Finite, Countable, and Uncountable Sets

#def()[Consider two sets $A$ and $B$ and suppose that with each element $x$ of $A$ thers is associated an element of $B$, which we denoted by $f(x)$. Then $f$ is said to be a function from $A$ to $B$. 
- The set $A$ is called the *domain of $f$*.
- The elements $f(x)$ are called the values of $f$.
- The set of all values is called the *range of $f$* 
]

#def()[Let $A$ and $B$ be two sets and let $f$ be a mapping of $A$ into $B$. If $E subset A$, $f(E)$ is defined to be the set of all elements $f(x)$, for $x in E$.\
We call $f(E)$ the *image of $E$ under $f$*. \
As previous definition, $f(A)$ is the range of $f$ and clear that $f(A)subset B$. \
If $f(A)=B$, we say that $f$ is maps $A$ *onto* $B$. \
\
If $E subset B$, $f^(-1)(E)$ denotes the set of all $x in A$ such that $f(x) in E.$ We call $f^(-1)(E)$ the *inverse image of $E$ under $f$*. \
If $y in B$, $f^(-1)(y)$ is the set of all $x in A$ such that $f(x)=y$. \
If, for each $y in B$, $f^(-1)(y)$ consists of at most one element of $A$, then $f$ is said to be 1-1 (one to one) mapping of $A$ into $B$.     
]

A 1-1 mapping of $A$ to $B$ also expressed as follows: 

$f(x_1) != f(x_2)$ whenever $x_1 != x_2$ for $x_, x_2 in A$. 



