

shinyServer(function(input, output) {
    

   observeEvent(input$go, { 
    output$answer <- renderText({
     s <- 16*((as.numeric(input$Variations)/100) + 1) * ((sqrt(( (as.numeric(input$baseline)/100)*(1- (as.numeric(input$baseline)/100))))) / ((as.numeric(input$baseline)/100)* (as.numeric(input$effect)/100)))^2
     print(paste("You will need at least", prettyNum(round(s,0), big.mark = ','), "subjects in each branch of your experiment.", ' ')) 
      })
    })
    
  observeEvent(input$go2, {
    
    if (input$type == 'Email campaign'){
      
      
      
      
    } else if (input$type == 'Direct mail campaign'){
      
    }
    
                 
               })
  
  
})

