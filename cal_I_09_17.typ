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

#pagebreak()

*Example:* If 
$
  f(x) = cases(sqrt(x-4) & "if" x>4\ 8-2x & "if" x<4)
$ determine whether $lim_(x->4) f(x)$ exists. 

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
*Example:* Show that $lim_(x->0)x^2 sin(1/x) =0$

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

#pagebreak()

*Example:* Prove that $lim_(x->3)x^2=9$. 


