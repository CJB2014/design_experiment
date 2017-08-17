
library(shiny)
library(shinyjs)
library(highcharter)
library(DiagrammeR)


var_to_test <- c('Subject line',
                 'Creative',
                 'Copy',
                 'Send day & time')

names_nodes <- function(SL ,CRE ,COP ,SD , ST ){
  a <- vector()
  b <- vector()
  c <- vector()
  d <- vector()
  e <- vector()

  for (i in 1:SL){
    a <- append(a ,paste(rep('SL', SL), i , sep =' '))
    a <- append(a, paste('control', i, sep =' '))
    a <- append(a, 'Control')
  }
  
  for (i in 1:CRE){
    b <- append(b ,paste(rep('CRE', CRE), i , sep =' '))
    b <- append(b, paste('control', i+SL, sep =' '))
    b <- append(b, 'Control')
  }
  
  for (i in 1:COP){
    c <- append(c ,paste(rep('COP',COP), i , sep =' '))
    c <- append(c, paste('control', i+SL+CRE, sep =' '))
    c <- append(c, 'Control')
  }
  
  for (i in 1:SD){
    d <- append(d ,paste(rep('SD', SD), i , sep =' '))
    d <- append(d, paste('control', i+SL+CRE+COP, sep =' '))
    d <- append(d, 'Control')
  }
  
  for (i in 1:ST){
    e <- append(e ,paste(rep('ST', ST), i , sep =' '))
    e <- append(e, paste('control', i+SL+CRE+COP+SD, sep =' '))
    e <- append(e, 'Control')
  }
  all <- c(a,b,c,d,e)
  return(all)
}

bb <- names_nodes(2,3,4,2,3)
nn <- create_node_df(n = length(bb), type = 'lower', label = bb, shape = rep('rectangle', length(bb)))

render_graph(create_graph( nodes_df = nn) )

nn


