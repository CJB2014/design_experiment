
library(DiagrammeR)

grViz("
digraph dot {

graph [layout = neato]

node [shape = circle,
      style = filled,
      color = grey,
      label = '']

node [fillcolor = red]
a

node [fillcolor = green]
b c d

node [fillcolor = orange]

edge [color = grey]
a -> {b c d}
b -> {e f g h i j}
c -> {k l m n o p}
d -> {q r s t u v}
}")


mermaid(
 " graph TB
  
  A(Population)-->B[Control]
  A-->C[Subject Line 1]
  A-->D[Subject Line 2]
  B-->E
  C-->F
  C-->G
  C-->H
  D-->I
  D-->J
  D-->K
  ")


