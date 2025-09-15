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

== Limit Laws

Suppose that $c$ is a constant and the limits $ lim_(x->a) f(x) " and " lim_(x->a) g(x) $ exist. Then 
1. $lim_(x->a) [f(x)+g(x)]=lim_(x->a)f(x)+lim_(x->a)g(x)$ 
2. $lim_(x->a)[f(x)-g(x)]=lim_(x->a)f(x)-lim_(x->a)g(x)$
3. $lim_(x->a)[c f(x)]=c lim_(x->a)[f(x)]$
4. $lim_(x->a)[f(x)g(x)]=lim_(x->a)f(x) dot lim_(x->a)g(x)$
5. $lim_(x->a)[(f(x))/(g(x))]=(lim_(x->a)f(x))/(lim_(x->a)g(x))$



6. *Power Law*

$ lim_(x->a) [f(x)]^n = [lim_(x->a)f(x)]^n, $ where $n$ is a positive number. 

7. *Root Law*

$ lim_(x->a) root(n,f(x)) = root(n, lim_(x->a)f(x)), $ where $n$ is a positive integer. If $n$ is even we assume that $f(x)>0$. 

8. $lim_(x->a) c=c$
9. $lim_(x->a) x=a$
10. $lim_(x->a)x^n=a^n$, where $n$ is a positive integer. 
11. $lim_(x->a)root(n,x) = root(n,a)$, where $n$ is a positive integer. 

#pagebreak()



2. $lim_(x->-2) (x^3 +2x^2 - 1)/(5-3x)$
$
  lim_(x->-2)(x^3 +2 x^2 -1)/(5-3x) & = (lim_(x->-2)x^3+2x^2-1)/(lim_(x->-2)(5-3x)) "by law (5)"\
  & = (lim_(x->-2)x^3 + lim_(x->-2)2x^2-lim_(x->-2)1)/(lim_(x->-2)5 -lim_(x->-2)3x) "by laws (1) and (2)"\
  & = (lim_(x->-2)x^3 + lim_(x->-2)2x^2 -1)/(5-lim_(x->-2) 3x) "by law (8)"\
  & = (lim_(x->-2)x^3 + 2lim_(x->-2)x^2 -1)/(5-3lim_(x->-2)x) "by law (3)"\
  & = ((-2)^3+2(-2)^2-1)/(5-3(-2))\
  & = (-8+8-1)/(5+6) = -1/11
$

#pagebreak()

== Evaluating Limits by Direct Substitution
=== Direct Substitution Property

If $f$ is a polynomial or a rational function and $a$ is in the domain $f$, then $ lim_(x->a) f(x) =f(a) $

*Example:* Find $lim_(x->1)(x^2-1)/(x-1)$. \
You cannot just substitute the value $x=1$.

For $x !=1$. $
               lim_(x ->1) ((x+1)cancel((x-1)))/cancel(x-1) & = lim_(x->1)(x+1)= 2
             $ 
#pagebreak()

If $f(x)=g(x)$ when $x!= a$, then $lim_(x->a)f(x)=lim_(x->a)g(x)$, provided that the limits exists. 


*Example:* Find $lim_(x->1)g(x),$ where $ g(x) = cases(x+1 & "if" x!= 1 \ pi & "if" x=1) $

Define a function $f(x)=x+1$. Then $f(x)=g(x)$ when $x!=1$. 

Then $
       lim_(x->1)g(x) = lim_(x->1)f(x) = lim_(x->1)x+1=2 
     $


#pagebreak()

*Example* Evaluate $lim_(h->0) ((3+h)^2-9)/h$.
$
  lim_(h->0) ((3+h)^2-9)/(h) & = lim_(h->0)(cancel(9)+6cancel(h)+h^cancel(2)-cancel(9))/(cancel(h))\
  & = lim_(h ->0) 6 +h \
 & = 6
$ 

#pagebreak()

*Example:*
Find $lim_(t->0)(sqrt(t^2+9)-3)/t^2$.

$
  lim_(t ->0)(sqrt(t^2+9)-3)/(t^2) dot (sqrt(t^2 +9)+3)/(sqrt(t^2+9)+3) & = lim_(t->0) (t^2+9  - 9)/(t^2 sqrt(t^2 +9)+3t^2)\
  & = lim_(t->0) (1)/(sqrt(t^2+9)+3)\
  & = 1/(sqrt(9)+3) = 1/6
$

#pagebreak()
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






