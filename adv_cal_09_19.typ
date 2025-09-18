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

= Basic Topology

== Finite, Countable, and Uncountable Sets


#def()[
  For any positive integer $n$, let $J_n$ be the set whose elements are the integers $1,2,3, dots, n$.\
  Let $J$ be the set consisting of all positive integers. \
  For any set $A$, we say,
  1. $A$ is finite, if $A tilde J_n$.
  2. $A$ is infinite if $A$ is not finite. (or $A$ is infinite if $A$ is equivalent to one of its proper subsets.) 
  3. $A$ is countable if $A tilde J$. 
  4. $A$ is uncountable if $A$ is neither finite nor countable. 
  5. $A$ is at most countable if $A$ is finite or countable.  
]

#pagebreak()

*Example: * Let $A$ be the set of all integers (of course not finite). Prove that $A$ is countable. 
 

 
#pagebreak()

#def(title: "Sequence")[
  A sequence is a function $f$ defined on the set of all positive integers. If $f(n)=x_n$, for $n in bb(Z)^+$ denote the sequence $f$ by the symbol ${x_n}$. The values of $f$ (the elements $x_n$), are called the *terms* of the sequence. 
]

If $A$ is a set and if $x_n in A$ for all $n in bb(Z)^+$, then ${x_n}$ is said to be a sequence in $A$. \
\
Examples: $
            {2,4,6,8,dots}\
            {1,1,1, dots}
          $

#pagebreak()

#thm()[
  Every infinite subset of a countable set $A$ is countable. 
]

#def()[
  Let $A$ and $Omega$ be sets, and suppose that with each element $alpha$ of $A$ there is associated a subset $E_alpha$ of $Omega$.
]

The set whose elements are the sets $E_alpha$ is denoted by ${E_alpha}$. \
This is set of sets. \
\
The union of the sets $E_alpha$ is defined to be the set $S$ such that $x in S$ if and only if $x in E_alpha$ for at least on $alpha in A$. 
$
  S= union_(alpha in A) E_alpha
$
If $A$ consists of the integers $1,2, dots,n $ 
$
  S = union_(m=1)^n E_m = E_1 union E_2 union E_n
$
If $A$ is the set of all positive integers, 
$
  S = union_(m=1)^infinity E_m 
$

The intersection of the sets $E_alpha$ is the set $P$ such that $x in P$ if and only if $x in E_alpha$ for every $ alpha in A$. 
$
  P= inter_(alpha in A) E_alpha
$ or 
$
  P= inter_(m=1)^n E_m = E_1 inter E_2 inter dots inter E_m
$ or 
$
  P= inter_(m=1)^infinity E_m
$
If $A inter B$ is empty, we say that $A$ and $B$ are disjoint. 

#pagebreak()

*Example:*

Suppose $
          E_1 ={1,2,3}
        $ and 
        $
          E_2 = {2,3,4}
        $

1. What is $E_1 union E_2$?
2. What is $E_1 inter E_2$? 

#pagebreak()
*Example:*

Let $A$ be the set of real numbers $x$ such that $0 <x <= 1$. For every $x in A$, let $E_x$ be the set of real numbers $y$ such that $0<y<x$. Prove that 

1. $E_x subset E_z$ if and only if $0< x <= z <= 1$.
2. $union_(x in A)E_x = E_1$
3. $inter_(x in A) E_x$ is empty. 

