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

#def()[Consider two sets $A$ and $B$ and suppose that with each element $x$ of $A$ there is associated an element of $B$, which we denoted by $f(x)$. Then $f$ is said to be a function from $A$ to $B$. 
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


#def()[
  If there exists a 1-1 mapping of $A$ onto $B$, we say that $A$ and $B$ can be put in  1-1 correspondence, or that $A$ and $B$ have the same cardinal number, or that $A$ and $B$ are equivalent, and we write $A tilde B$.    
]

#def(title: "Equivalent Relation")[
  Equivalent relation has the following properties:
  1. Reflexive: $A tilde A$
  2. Symmetric: If $A tilde B$, then $B tilde A$. 
  3. Transitive: If $A tilde B$ and $B tilde C$, then $A tilde C$. 

  Any relation with these properties is called an *equivalence relation*. 
]

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

*Example: * Let $A$ be the set of all integers. Prove that $A$ is countable. 
 
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

