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
Let $
  tilde(P)(A) = P(A|E) = (P(A inter E))/P(E) 
$ It is clear that $(P(A inter E))/P(E)>=0$ for $P(E)>0$. Also, $P(A inter E) <= P(E)$, $(P(A inter E))/P(E) <=1$ 


#pagebreak()

2. $P(S|E)= 1$, $P(emptyset|E)=0$

$
  tilde(P)(S) =P(S|E) = (P(S inter E))/(P(E)) = (P(E))/(P(E))=1
$
$
  tilde(P)(emptyset)= P(emptyset|E)= (P(emptyset inter E))/(P(E)) = (P(emptyset))/(P(E)) = 0
$

#pagebreak()

3. If $A_1, A_2, dots$ are disjoint, then $P(union_(j=1)^infinity A_j|E)=sum_(j=1)^infinity P(A_j|E)$
$
  tilde(P)(union_(j=1)^infinity A_j)= P(union_(j=1)^infinity A_j |E) = (P((union_(j=1)^infinity A_j) inter E))/(P(E))= (P((A_1 inter E)union (A_2 inter E)union dots))/(P(E)) 
$ Numerator is a union of disjoint sets. 
$
  tilde(P)(union_(j=1)^infinity A_j) = (sum_(j=1)^infinity P(A_j inter E))/(P(E)) = sum_(j=1)^infinity (P(A_j inter E))/(P(E)) = sum_(j=1)^infinity P(A_j | E)
$


#pagebreak()

4. $P(A^c|E)=1-P(A|E)$
We know that $P(S|E)=1$. 
$
  P(S|E) = P(A union A^c|E) = P(A|E) +P(A^c|E) "by 3. "\
  1 = P(A|E) + P(A^c|E)\
  P(A^c|E) = 1 - P(A|E)
$
#pagebreak()

5. Inclusion-exclusion: $P(A union B|E) = P(A|E)+P(B|E)-P(A inter B|E)$

H.W.
 
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

- $A$ and $B$ are independent if learning that $B$ occurred gives us no information that would change our probabilities for $A$ occurring. 
- Independence is a symmetric relation: if $A$ is independent of $B$, then $B$ is independent of $A$. 

- Independence is completely different from disjointness. If $A$ and $B$ are disjoint, then $P(A inter B ) =0$, so disjoint events can be independent if $P(A)=0$ or $P(B)=0$. 

#prop()[
  If $A$ and $B$ are independent, then $A$ and $B^c$ are independent, $A^c$ and $B$ are independent, and $A^c$ and $B^c$ are independent. 
]
 *Proof:*
Let $A$ and $B$ are independent. 
If $P(A)=0$, then $P(A inter B)= 0 $ and $P(B)=0$. $P(A inter B^c)=0$. That is trivial. 

Assume that $P(A) != 0$. \
$
  P(B^c|A) = 1- P(B|A) = 1- P(B) = P(B^c) 
$ $A$ and $B^c$ are independent. 

In the similar manner, you can prove the others. 


