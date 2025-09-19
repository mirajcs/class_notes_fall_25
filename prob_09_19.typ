#import "@preview/slydst:0.1.4": *

#show: slides.with(
  title: "Introduction to Probability Theory",
  subtitle: "Tougaloo College",
  date: none,
  authors: ("Miraj Samarakkody",),
  layout: "medium",
  ratio: 16/9,
  title-color: none,
)



 
= Random Variables and Their Distributions
== Random Variables

#def(title: "Random Variable")[
  Given an experiment with sample space $S$, a random variable is a function from the sample space $S$ to the real number $bb(R)$. 
]

A random variable $X$ assigns a numerical value $X(s)$ to each possible outcome $s$ of the experiment. 

*Example:* Coin Tosses\

Consider an experiment where we toss a fair coin twice. The sample space consists of four possible outcomes:
$
  S= {H H, H T, T H, T T}. 
$

Here are some random variables on this space. 

- Let $X$ be the number of Heads.\
  $X(H H) = 2 quad X(H T) = 1 quad X(T H) =1 quad X(T T) = 0$
- Let $Y$ be the number of Tails. \
  In terms of $Y$, we have $Y = 2-X$.\
  $Y(s) = 2- X(s)$.\
  $Y(H H) = 0 = 2-2 = 2 - X(H H)$
  
  $Y(H T) =1 = 2-1= 2- X( H T)$\
  $Y(T H) =1 = 2-1 = 2- X( T H)$\
  $Y(T T) = 2 = 2-0= 2 - X(T T)$

- Let $I$ be 1 if the first toss lands Heads and 0 otherwise. (This is called and indicator random variable.)

$
  I(H H ) = 1\
  I(H T) = 1\
  I (T H) = 0\
  I(T T) =0
$


We can also encode the sample space as ${(1,1), (1,0), (0,1), (0,0)}$, where 1 is the code for Heads and 0 is the code for Tails. 
$
  X((s_1,s_2)) & = s_1 + s_2\
  Y((s_1,s_2)) & = 2- s_1 -s_2\
  I((s_1,s_2)) & = s_1
$
#pagebreak()

== Distributions and Probability Mass Functions

There are two main types of random variables:
1. Discrete random variables
2. Continuous random variables.

#def(title: "Discrete Random Variable")[
  A random variable $X$ is said to be *discrete* if there is a finite list of values $a_1, a_2, dots , a_n$ or an infinite list of values $a_1, a_2, dots$ such that $P(X=a_j " for some "j)=1$. \
  If $X$ is a discrete random variable, then the finite or countable infinite set of values $x$ such that\ $P(X=x)>0$ is called the *support* of $X$. 
]

#def(title: "Probability Mass Function")[
  The probability mass function (PMF) of a discrete random variable $X$ is the function $p_X (x) =P(X=x)$.\
  This is positive if $x$ is in the support of $X$, and 0 otherwise. 
]
#pagebreak()
*Example* 
$
  {H H, H T, T H, T T}
$
- $X-$ the number of Heads

$
  p_X (0) = P(X=0) = 1/4 -> {T T}\
  p_X (1) = P(X=1) = 1/2 ->{H T, T H}\
  p_X (2) = P(X=2) = 1/4 -> {H H}
$
$
  p_X (0) + p_X (1) + p_X (2) = 1/4 + 1/2+1/4 =1
$

- $Y-$ number of Tails
  $
    Y= 2-X\
    p_Y (y) = P(Y=y) = P(2-X =y) = P(X=2-y) = p_X (2-y)\
    p_Y (0) = P(Y=0) = p_X (2-0) =p_X (2) =1/4\
    p_Y (1) = p_X (2-1) =1/2\
    p_Y (2) = 1/4 
  $


- $I-$ the indicator of the first toss landing Heads.
$
  p_I (0) = P(I=0) = 1/2 -> {T H,  T T}\
  p_I (1) = P(I=1) = 1/2 -> {H H, H T}
$ 

#figure(image("images/fig_08.png", width: 60%))

#pagebreak()

*Example:* Sum of die rolls

We roll two fair dice. Let $T=X+Y$ be the total of the two rolls, where $X$ and $Y$ are the individual rolls. 
$
  S={(1,1), (1,2), dots , (6,5), (6,6)}
$

Since the dice are fair, the PMF of $X$ is 
$
  P(X=j)=1/6
$ for $j =1, dots, 6$ and $P(X=j)=0$ otherwise.

We say that $X$ has a *Discrete Uniform Distribution* on $1,2, dots, 6$. Similarly, $Y$ is also Discrete Uniform on $1,2, dots, 6$. \

Note that $Y$ also has the same distribution as $X$ but is not the same random variable as $x$. However, 
$
  P(X=Y) =6/36 =1/6 \
  P(X=7-X) = 1/6\
  P(X=7-Y) = 1/6
$
You can think as, for a standard die, $7-X$ is the value on the bottom if $X$ is the value on the top. 