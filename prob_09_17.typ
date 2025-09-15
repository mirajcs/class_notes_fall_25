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
  Events $A$. $B$, and $C$ are said to be independent if all of the following equations hold:
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
  P(A inter B) & = \
    P(A inter C) & = \
    P(B inter C) & = \
    P(A inter B inter C) & = 
  $ 

#def(title: "Independence of many events")[
For $n$ events $A_1, A_2, dots, A_n$ to be independent, we require any pair to satisfy $P(A_i inter A_j)=P(A_i)P(A_j)$ for $i !=j$, any triplet to satisfy $P(A_i inter A_j inter A_k)= P(A_i)P(A_j)P(A_k)$ for $i,j,k$ distinct, and similarly for all quadruplets, quintuplets, and so on. 
]

#def(title: "Conditional Independence")[

]


