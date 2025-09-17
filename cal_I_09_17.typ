#import "@preview/slydst:0.1.4": *

#show: slides.with(
  title: "Calculus I",
  subtitle: "Tougaloo College",
  date: none,
  authors: ("Miraj Samarakkody",),
  layout: "medium",
  ratio: 16/9,
  title-color: none,
)
== Outline

// #outline()


= Calculating Limits Using the Limit Laws


== Using one-sided limits

#thm()[$
         lim_(x ->a) f(x) =L "if and only if " lim_(x ->a^-)f(x) = lim_(x->a^+) f(x) =L 
       $]

*Example:* Show that $lim_(x->0)|x|=0$. 

#figure(image("images/fig_04.png", width: 30%))

$
  |x| = cases(
    x "if " x>=0\
    -x "if " x<0
  )
$Take $lim_(x->0^-)|x|=lim_(x->0)(-x)=0$. Then $lim_(x->0^+)|x|=lim_(x->0^+)x=0$. Then limit is exist and and 0. 

#pagebreak()

*Example:* Prove that $lim_(x->0) (|x|)/x$ does not exist. 

#figure(image("images/fig_05.png", width: 35%))

$
  (|x|)/x = cases( x/x = 1 &"if " x>0\ -x/x=-1 &"if " x<0) 
$

$
  lim_(x->0^-)(|x|)/x = lim_(x->0^-) -1 = -1 \
  lim_(x->0^+) (|x|)/x = lim_(x->0^+) 1 = 1
$
Limit does not exist, bcause $lim_(x->0^-) (|x|)/x != lim_(x->0^+) (|x|)/x$. 


#pagebreak()

*Example:* If 
$
  f(x) = cases(sqrt(x-4) & "if" x>4\ 8-2x & "if" x<4)
$ determine whether $lim_(x->4) f(x)$ exists.

$
  lim_(x->4^-)f(x)= lim_(x->4^-) 8-2x = 8-2(4) = 8-8=0\
  lim_(x-> 4^+) f(x) = lim_(x->4^+) sqrt(x-4) = sqrt(4-4)=0
$

We can see that $lim_(x->4^-) f(x)=lim_(x->4^+)f(x)=0$. Therefore $lim_(x->4) f(x)$ is exists. 

#pagebreak()

== The Squeeze Theorem 

#thm()[
  If $f(x) <= g(x)$ when $x$ is near $a$ (except possibly at $a$) and the limits of $f$ and $g$ both exist as $x$ approaches $a$, then 
  $
    lim_(x->a) f(x) <= lim_(x->a)g(x)
  $ 
]

#thm(title: "The Squeeze Theorem")[
  If $f(x) <= g(x) <=h(x)$ when $x$ is near $a$ (except possibly at $a$) and 
  $
    lim_(x->a)f(x) = lim_(x->a)h(x) =L
  $
  then 
  $
    lim_(x->a) g(x) = L
  $
  #figure(image("images/fig_06.png", width: 30%))
]

#pagebreak()
*Example:* Show that $lim_(x->0)x^2 sin(1/x) =0$\


We know that $lim_(x->0) sin(1/x)$ does not exist.
However 
$
  -1 <= sin(1/x) <= 1\
  -x^2 <= x^2 sin(1/x) <= x^2
$
Note that 
$
  lim_(x->0)-x^2 =lim_(x->0)x^2 =0
$By the Squeeze theorem, 
$
  lim_(x->0) x^2 sin(1/x) = 0
$

#pagebreak()

== Precise Definition of Limit

#def()[
  $
    lim_(x ->a)f(x) =L 
  $ if for every number $epsilon >0$ there is a number $delta>0$ such that if $0<|x -a |< delta$ then $ |f(x) -L| < epsilon$. 
]

#figure(image("images/fig_07.png", width: 30%))

#pagebreak()

*Example:* Prove that $lim_(x->3)(4x-5)=7$. 

Choose $epsilon>0$ such that $|(4x-5)-7|<epsilon$. 
Note that $
            |(4x-5)-7| & = |4x-12|\
            & = 4|x-3|< epsilon\
            |x-3| & < epsilon/4
          $
Then we can choose $delta = epsilon/4$. For every $epsilon>0$ we have if $0<|x-3|<epsilon/4$, then $|(4x-5)-7|<epsilon$. 
#pagebreak()

*Example:* Prove that $lim_(x->3)x^2=9$. 


