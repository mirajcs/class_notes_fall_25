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


= Conditional Probabilities are Probabilities

== Conditional Probabilities are Probabilities

Conditional probability satisfies all the properties of probability. 

1. Conditional Probabilities are between 0 and 1. 
2. $P(S|E)= 1$, $P(emptyset|E)=0$
3. If $A_1, A_2, dots$ are disjoint, then $P(union_(j=1)^infinity A_j|E)=sum_(j=1)^infinity P(A_j|E)$
4. $P(A^c|E)=1-P(A|E)$
5. Inclusion-exclusion: $P(A union B|E) = P(A|E)+P(B|E)-P(A inter B)$

*Proof:*

1. Conditional Probabilities are between 0 and 1.

#pagebreak()

2. $P(S|E)= 1$, $P(emptyset|E)=0$

#pagebreak()

3. If $A_1, A_2, dots$ are disjoint, then $P(union_(j=1)^infinity A_j|E)=sum_(j=1)^infinity P(A_j|E)$

#pagebreak()

4. $P(A^c|E)=1-P(A|E)$

#pagebreak()

5. Inclusion-exclusion: $P(A union B|E) = P(A|E)+P(B|E)-P(A inter B)$
 
= Independence of Events 
== Independence of Events

 The situation where events provide no information about each other is called *Independence*.

#def(title: "Independence of two events")[
  Events $A$ and $B$ are independent if 
  $
    P(A inter B) = P(A)P(B)
  $
  If $P(A)>0$ and $P(B)$, then this is equivalent to 
  $
    P(A|B) = P(A)
  $ and also equivalent to 
  $
  P(B|A) =P(B)
  $
]

- $A$ and $B$ are independent if learning that $B$ occured gives us no information that would change our probabilities for $A$ occuring. 
- Independence is a symmetric relation: if $A$ is independent of $B$, then $B$ is independent of $A$. 

- Independence is completely different from disjointness. If $A$ and $B$ are disjoint, then $P(A inter B ) =0$, so disjoint events can be independent if $P(A)=0$ or $P(B)=0$. 

#prop()[
  If $A$ and $B$ are independent, then $A$ and $B^c$ are independent, $A^c$ and $B$ are independent, and $A^c$ and $B^c$ are independent. 
]

*Proof:*


