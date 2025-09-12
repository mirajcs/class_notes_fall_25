#import "@preview/diatypst:0.7.0": *


#show: slides.with(
  title: "Introduction to Probability", // Required
  subtitle: "Tougaloo College",
  date: "",
  authors: ("Miraj Samarakkody"),
   // Optional Styling (for more / explanation see in the typst universe)
  ratio: 16/9,
  layout: "medium",
  title-color: blue.darken(60%),
  toc: true,
  count: none,
  first-slide: true,
  footer-title: "Miraj Samarakkody",
  footer-subtitle: "Probability"
)

= Bayes' rule and the law of total probability

== Example

*Six-fingered man* 

A crime has been committed in a certain country. The perpetrator is one (and only one) of the $n$ men who live in the country. Initially, these $n$ men are all deemed equally likely to be the perpetrator. An eyewitness then reports that the crime was committed by a man with six fingers on his right hand. 

Let $p_0$ be the probability that an innocent man has six fingers on his right hand, and $p_1$ be the probability that the perpetrator has six fingers on his right hand, with $p_0< p_1<1$ (We can't 100% trust the eyewitness). 

Let $a= p_0/p_1$ and $b=(1-p_1)/(1-p_0)$. 

Rugen lives in the country. He is found to have six fingers on his right hand. 

#pagebreak()

Given this information, what is the probability that Rugen is perpetrator?

$R-$ Rugen is guilty \
$M-$ Rugen has six fingers on his right hand  
$ P(R|M) = ? $ 

#pagebreak()

Now suppose that all $n$ men who live in the country have their hands checked, and Rugen is the only one with six fingers on his right hand. Given this information, what is the probabiltiy that Rugen is the prepetrator? 

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
 