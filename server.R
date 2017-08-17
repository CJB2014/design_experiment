

shinyServer(function(input, output) {
  
  output$lala <- renderText({
    class(input$var)
    
  })
  
   observeEvent(input$go, { 
    output$answer <- renderText({
     s <- 16*((as.numeric(input$Variations)/100) + 1) * ((sqrt(( (as.numeric(input$baseline)/100)*(1- (as.numeric(input$baseline)/100))))) / ((as.numeric(input$baseline)/100)* (as.numeric(input$effect)/100)))^2
     print(paste("You will need at least", prettyNum(round(s,0), big.mark = ','), "subjects in each branch of your experiment.", ' ')) 
      })
    })
    
  
  observeEvent(input$go2, {
    if (input$SL == TRUE){
      output$diag <- renderDiagrammeR({
        mermaid(
          " graph TB
        
        A(Population)-->B[Control]
        A-->C[Subject Line 1]
        A-->D[Subject Line 2]")
        
      })
   
       
    }else if (input$SL == TRUE & input$cre == TRUE){
      output$diag <- renderDiagrammeR({
        mermaid(
          " graph TB
          
          A(Population)-->B[Control]
          A-->C[Subject Line 1]
          A-->D[Subject Line 2]
          C-->E[Creative 1]
          C-->F[Creative 2]
          C-->I[Control]
          D-->G[Creative 1]
          D-->H[Creative 2]
          D-->J[Control]
          B-->K[Control]")
        
      })
      
    }else if (input$SL == TRUE & input$cop == TRUE){
      output$diag <- renderDiagrammeR({
        mermaid(
          " graph TB
          
          A(Population)-->B[Control]
          A-->C[Subject Line 1]
          A-->D[Subject Line 2]
          C-->E[Copy 1]
          C-->F[Copy 2]
          C-->I[Control]
          D-->G[Copy 1]
          D-->H[Copy 2]
          D-->J[Control]
          B-->K[Control]")
        
      })
      
    }else if (input$SL == TRUE & input$SD == TRUE){
      output$diag <- renderDiagrammeR({
        mermaid(
          " graph TB
          
          A(Population)-->B[Control]
          A-->C[Subject Line 1]
          A-->D[Subject Line 2]
          C-->E[Send day 1]
          C-->F[Send day 2]
          C-->I[Control]
          D-->G[Send day 1]
          D-->H[Send day 2]
          D-->J[Control]
          B-->K[Control]")
        })
      
    }else if (input$SL == TRUE & input$ST == TRUE){
      output$diag <- renderDiagrammeR({
        mermaid(
          " graph TB
          
          A(Population)-->B[Control]
          A-->C[Subject Line 1]
          A-->D[Subject Line 2]
          C-->E[Send time 1]
          C-->F[Send time 2]
          C-->I[Control]
          D-->G[Send time 1]
          D-->H[Send time 2]
          D-->J[Control]
          B-->K[Control]")
      })
      
    }else if (input$SL == TRUE & input$cre== TRUE & input$cop == TRUE){
      output$diag <- renderDiagrammeR({
        mermaid(
          " graph LR
          
         A(Population)-->B[Control]
          A-->C[Subject Line 1]
          A-->D[Subject Line 2]
          C-->E[Creative 1]
          C-->F[Creative 2]
          C-->I[Control]
          D-->G[Creative 1]
          D-->H[Creative 2]
          D-->J[Control]
          B-->K[Control]
          E-->L[Copy 1]
          E-->M[Copy 2]
          E-->N[Control]
          F-->O[Copy 1]
          F-->P[Copy 2]
          F-->Q[Control]")
      })
      
      
    }else if (input$SL == TRUE & input$cre == TRUE & input$cop == TRUE & input$SD== TRUE){
      
    }else if (input$SL == TRUE & input$cre== TRUE & input$cop == TRUE & input$SD == TRUE & input$ST == TRUE){
      
    }else if(input$cre == TRUE){
      
    }else if(input$cop== TRUE){
      
    }else if(input$SD == TRUE){
      
    }else if(input$ST==TRUE) {
      
    }else if(input$cre == TRUE & input$cop == TRUE) {
      
    }else if(input$cre == TRUE & input$SD == TRUE) {
      
    }else if(input$cre == TRUE & input$ST == TRUE){
      
    }else if(input$cre == TRUE & input$cop == TRUE & input$SD == TRUE){
      
    }else if(input$cre == TRUE & input$cop == TRUE & input$SD == TRUE & input$ST== TRUE){
      
    }else if(input$cre == TRUE & input$cop == TRUE & input$ST == TRUE){
      
    }else if(input$cre == TRUE  & input$SD == TRUE & input$ST== TRUE){
      
    }else if( input$cop == TRUE & input$SD == TRUE & input$ST== TRUE) {
      
    }else if(input$SD == TRUE & input$ST== TRUE) {
      
    }else if( input$cop == TRUE & input$SD == TRUE ) {
      
    }else if( input$cop == TRUE  & input$ST== TRUE){
      
    }else if(input$SL == TRUE & input$cop == TRUE & input$SD == TRUE & input$ST == TRUE){
      
    }else if(input$SL == TRUE & input$SD == TRUE & input$ST == TRUE){
      
    }else if(input$SL == TRUE  & input$SD == TRUE ){
      
    }else if(input$SL == TRUE  & input$ST == TRUE){
      
    }
    
  })
  
  
    
  
   
 

})

