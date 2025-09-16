#import "@preview/slydst:0.1.4": *

#show: slides.with(
  title: "Differential Equations",
  subtitle: "Tougaloo College",
  date: none,
  authors: ("Miraj Samarakkody",),
  layout: "medium",
  ratio: 16/9,
  title-color: none,
)

//== Outline


// #outline()

= Modeling with First-Order Differential Equations 

Consider a pond that initially contains 10 million gallons of fresh water. Water containing an undesirable chemical flows into the pond at the rate of 5 million gallons per year, and the mixture in the pond flows out at the same rate. The concentration $gamma(t)$ of chemical in the incoming water varies periodically with the time according to the expression $gamma(t)= 2+sin(2t)$ g/gal. 

1. Construct a mathematical model of this flow process. 

$
  (d q(t))/(d t) +1/2 q(t) =10 + 5 sin (2t)  
$

#pagebreak()

2. Determine the amount of chemical in the pond at any time. 


#pagebreak()
3. Plot the solution and describe in words the effect of the variation in the incoming concentration.
#figure(image("images/fig_2.png", width: 28%))


Assumptions: 
1. the amount of water in the pond is controlled entirely by the rates of flow in and out, non is lost by evaporation or by seepage into the ground and none is gained by rainfalls. - The same is true of the chemical
2. the concentration of chemical in the pond is uniform throughout the pond.
etc...

#pagebreak()

*Example* Escape Velocity

A body of constant mass $m$ is projected away from the earth in a direction perpendicular to the earth's surface with an initial velocity $v_0$.

#figure(image("images/fig_03.png", width: 50%))

1. Assuming that there is no air resistance, but taking into account the variation of the earth gravitational field with distance, find and expression for the velocity during the ensuing motion. (The gravitational force acting on the body in inversely proportional to the square of the distance from the center of the earth). 

#pagebreak()

2. Find the initial velocity that is required to lift the body to given maximum altitude $A_"max"$ above the surface of the earth.


#pagebreak()

3. Find the least initial velocity for which the body will not return to the earth. (escape velocity). 





Assumptions: 
1. neglects the effect of air resistance
etc...