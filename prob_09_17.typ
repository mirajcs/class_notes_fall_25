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



 
= Independence of Events 
== Independence of Events

 The situation where events provide no information about each other is called *Independence*.

#def(title: "Independence of three events")[
  Events $A$, $B$, and $C$ are said to be independent if all of the following equations hold:
  $
    P(A inter B) & = P(A)P(B)\
    P(A inter C) & = P(A)P(C)\
    P(B inter C) & = P(B)P(C)\
    P(A inter B inter C) & = P(A)P(B)P(C)
  $ 

]
#pagebreak()

  If the first three condition hold, we say that $A$, $B$, and $C$ are pairwise independent. Pairwise independence does not imply independence. 

  *Example:* Pairwise independence doesn't imply Independence.\

  Consider two fair, independent coin tosses, and let $A$ be the event that the first is Heads, $B$ is the event that the second is Heads, and $C$ is the event that both tosses have the same result. Calculate:
  $
  P(A inter B) & = 1/2 1/2 = 1/4 = P(A)P(B) \
    P(A inter C) & = 1/2 dot 1/2 = 1/4 = P(A) P(C) \
    P(B inter C) & = 1/2 dot 1/2 = 1/4 = P(B)P(C)\
    P(A inter B inter C) & =  P(A inter B) = 1/2 dot 1/2 = 1/4 != P(A) P(B) P(C) = 1/2 dot 1/2 dot 1/2 = 1/8 
  $ 

#def(title: "Independence of many events")[
For $n$ events $A_1, A_2, dots, A_n$ to be independent, we require any pair to satisfy $P(A_i inter A_j)=P(A_i)P(A_j)$ for $i !=j$, any triplet to satisfy $P(A_i inter A_j inter A_k)= P(A_i)P(A_j)P(A_k)$ for $i,j,k$ distinct, and similarly for all quadruplets, quintuplets, and so on. 
]

#def(title: "Conditional Independence")[
  Events $A$ and $B$ are said to be conditionally independent given $E$ if $P(A inter B |E) = P(A|E)P(B|E)$.
]

$P(A inter B)=P(A)P(B)$ does not imply $P(A,B|E)=P(A|E)P(B|E)$. 

#pagebreak()

*Example:* Conditional independence given $E$ vs. given $E^c$. 

Suppose there are two types of classes: good classes and bad classes. 

In good classes, if you work hard, you are very likely to get an $A$. 

In bad classes, the professor randomly assigns grades to students regardless of their effort. 

$G-$ the event that a class is good\
$W-$ the event that you work hard\
$A-$ event that you receive an $A$.\

$W$ and $A$ are conditionally independent given $G^c$. \
$W$ and $A$ are *not* conditionally independent given $G$.

#pagebreak()

*Example:* Conditional independence doesn't imply independence

Suppose we have chosen either a fair coin or a biased coin with probability $3/4$ of Heads, but we do not know which one we have chosen. \
We flip the coin a number of times. 

Conditional on choosing the fair coin, the coin tosses are independent, with each toss having probability $1/2$ of heads. 

Conditional on choosing the biased coin, the tosses are independent, each with probability $3/4$ of Heads. 

However, the coin tosses are not unconditionally independent, because if we don’t know which coin we’ve chosen, then observing the sequence of tosses gives us information about whether we have the fair coin or the biased coin in our hand. 

Let $F$ be the event that we’ve chosen the fair coin, and let $A_1$ and $A_2$ be the events that the first and second coin tosses land Heads. Conditional on $F$, $A_1$ and $A_2$ are independent, but $A_1$ and $A_2$ are not unconditionally independent because $A_1$ provides information about $A_2$.

*Example:* Independence doesn’t imply conditional independence

My friends Alice and Bob are the only two people who ever call me on the phone. Each day, they decide independently whether to call me that day. 

$A-$ Alice calls me next Friday\
$B-$ Bob calls me next Friday\
$C-$ the event that I receive exactly one call next Friday

Assume that $A$ and $B$ are unconditionally independent with $P(A)>0$ and $P(B)>0$. 

$P(B|C)>0$, while $P(B|A,C)=0 $. So $A$ and $B$ are not conditionally independent given $C$. 

#pagebreak()

*Example:* Why is the baby crying? A certain baby cries if and only if she is hungary, tired or both. 

$C-$the event that the baby is crying\
$H-$the event that she is hungry\
$T-$the event that she is tired.

Let $P(C)=c$, $P(H)=h$ and $P(T)=t$, where $c,h,t$ are not equal to 0 or 1. Let $H$ and $T$ independent. 

1. Find $c$, in terms of $h$ and $t$.
$
  c =P(C) & = P(H union T)\
  & = P(H) + P(T) - P(H inter T)\
  & = h + t - P(H)P(T) "(independence)"\
  & = h+t -h t \
  c & = h + t - h t 
$

#pagebreak()
2. Find $P(H|C)$, $P(T|C)$ and $P(H,T|C)$. 
$
  P(H |C) & = (P(C|H)P(H))/P(C) "by Bayes' rule"\
  & = h/c\
  P(T|C) & = (P(C|T)P(T))/P(C)\
  & = t/c\
  P(H,T|C) & = (P(C|H,T)P(H,T))/P(C)\
  & = (P(H)P(T))/P(C)\
  & = (h t)/c 
$

#pagebreak()
3. Are $H$ and $T$ conditionally independent given $C$? 

No, if the baby is crying but not hungry, she must be tired.

$
  P(H,T|C) = (h t)/c\
P(H|T)P(T|C) & = h/c dot h/c = (h t)/c^2\
P(H,T|C) != P(H|C)P(T|C)
$
