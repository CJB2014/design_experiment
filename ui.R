


shinyUI(fluidPage( useShinyjs(), 

  navbarPage(title = 'ABtester', 
    
    
    tabPanel('Experimentation design',
             sidebarLayout(
               sidebarPanel(width = 3,
                            h3('Define you parameters and click Go!'),
                            selectInput(inputId = 'type',label = 'What type of experiment is it?', choices = c('Email campaign','Direct mail campaign', 'DM + Email Follow up Campaign')),
                            checkboxInput(inputId = 'SL',label = 'Subject line', value = F),
                            checkboxInput(inputId = 'cre',label = 'Creative', value = F),
                            checkboxInput(inputId = 'cop',label = 'Copy', value = F),
                            checkboxInput(inputId = 'SD',label = 'Send day', value = F),
                            checkboxInput(inputId = 'ST',label = 'Send time', value = F),
                                             
                            actionButton(inputId = 'go2',label = 'Go!')),
               
               mainPanel(
                 div(class = 'title', 
                     'Design your testing framework'),
                 div(class = 'diagram', 
                     DiagrammeROutput(outputId = 'diag', width = '100%'),
                     verbatimTextOutput(outputId = 'lala')
                     
                     )
                 
                 )),
             div(class = "footer", "Developed with ", icon('heart')," in R and Rstudio - Powered by Shiny - Developped by CJB ", a(id = 'github', href = 'https://github.com/CJB2014', icon('github')))
    ),
    tabPanel('Sample Size calculator', tags$head(includeCSS('www/custom.css')),
             column(width = 6 , align = 'center',
                    div(class = 'top',
                        verticalLayout(
                          textInput(inputId = 'baseline', label = 'Baseline conversion rate:'),
                          textInput(inputId = 'effect', label = 'Minimum Detectable Effect:'),
                          selectInput(inputId = 'Variations', label = 'Variation:', choices = seq(2,20,1)),
                          br(),
                          actionButton(inputId = 'go', label = 'Submit!', style = "font-weight: bold; color:#FFF; background-color: #B73265; border-color: #B73265"))),
                          br(),
                          br(),
                          div(class = 'bottom',
                              HTML("<p>The minimum detectable effect is the smallest difference detected by the test. The effect will be deteted 80% of the time.</p>"))),
             column(width  = 6,  align = 'center',
                    br(),
                    br(),
                    div(class = 'answers_div',
                        textOutput(outputId = 'answer'))),
             div(class = "footer", "Developed with ", icon('heart')," in R and Rstudio - Powered by Shiny - Developped by CJB ", a(id = 'github', href = 'https://github.com/CJB2014', icon('github')))),
    
    tabPanel('Ab test interpretation',
             
             div(class = "footer", "Developed with ", icon('heart')," in R and Rstudio - Powered by Shiny - Developped by CJB ", a(id = 'github', href = 'https://github.com/CJB2014', icon('github')))),
    
    tabPanel('About',
             
             div(class = "footer", "Developed with ", icon('heart')," in R and Rstudio - Powered by Shiny - Developped by CJB ", a(id = 'github', href = 'https://github.com/CJB2014', icon('github'))))
  

)))
