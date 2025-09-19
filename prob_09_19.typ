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
  S= {H H, T T, T H, T T}. 
$

Here are some random variables on this space. 

- Let $X$ be the number of Heads.

- Let $Y$ be the number of Tails. 

- Let $I$ be 1 if the first toss lands Heads and 0 otherwise. (This is called and indicator random variable.)

We can also encode the sample space as ${(1,1), (1,0), (0,1), (0,0)}$, where 1 is the code for Heads and 0 is the code for Tails. 

#pagebreak()

== Distributions and Probability Mass Functions

There are two main types of random variables:
1. Discrete random variables
2. Continuous random variables.

#def(title: "Discrete Random Variable")[
  A random variable $X$ is said to be *discrete* is there is a finite list of values $a_1, a_2, dots , a_n$ or an infinite list of values $a_1, a_2, dots$ such that $P(X=a_j " for some "j)=1$. \
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

- $Y-$ number of Tails

- $I-$ the indicator of the first toss landing Heads. 

#figure(image("images/fig_08.png", width: 60%))

#pagebreak()

*Example:* Sum of die rolls

We roll two fair dice. Let $T=X+Y$ be the total of the two tolls, where $X$ and $Y$ are the individual rolls. 
$
  S={(1,1), (1,2), dots , (6,5), (6,6)}
$

Since the dice are fair, the PMF of $X$ is 
$
  P(X=j)=1/6
$ for $j =1, dots, 6$ and $P(X=j)=1$ otherwise.

We say that $X$ has a *Discrete Uniform Distribution* on $1,2, dots, 6$. Similarly, $Y$ is also Discrete Uniform on $1,2, dots, 6$. \

Note that $Y$ also has the same distribution as $X$ but is not the same random variable as $x$. However, 
$
  P(X=Y) =6/36 =1/6 \
  P(X=7-X) = 1/6\
  P(X=7-Y) = 1/6
$
You can think as, for a standard die, $7-X$ is the value on the bottom if $X$ is the value on the top. 