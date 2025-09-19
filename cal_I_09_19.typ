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


= Limits and Derivatives


== The Precise Definition of a Limit

#def()[
  $
    lim_(x ->a)f(x) =L 
  $ if for every number $epsilon >0$ there is a number $delta>0$ such that if $0<|x -a |< delta$ then $ |f(x) -L| < epsilon$. 
]


#pagebreak()

*Example:* Prove that $lim_(x->3)x^2=9$. 


== one-Sided Limits

#def(title: "Precise Definition of Left-Hand Limit")[
  $
    lim_(x->a^-) f(x) =L 
  $ if for every number $epsilon>0$ there is a number $delta>0$ such that\
   if $a-delta < x <a$ then $|f(x) -L|< epsilon$. 
]


#def(title: "Precise Definition of Right-Had limit")[
  if for every number $epsilon>0$ there is a number $delta >0$ such that \
  if $a < x < a+ delta$ then $|f(x) -L |< epsilon$. 
]

*Example:* Use definition to prove that $lim_(x->0^+) sqrt(x)=0$.

#pagebreak()
== The limit Laws

=== The sum Laws
If $lim_(x ->a) f(x)=L$ and $lim_(x->a) g(x)=M$ both exists, then 
$
  lim_(x->a) [f(x)+g(x)] =L +M 
$

*Proof:*

