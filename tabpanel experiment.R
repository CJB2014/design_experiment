

tabPanel('Experimentation design',
         sidebarLayout(
           sidebarPanel(width = 3,
                        h3('Define you parameters and click Go!'),
                        selectInput(inputId = 'type',label = 'What type of experiment is it?', choices = c('Email campaign','Direct mail campaign', 'DM + Email Follow up Campaign')),
                        conditionalPanel(condition = "input.type=='Email campaign'", 
                                         checkboxInput(inputId = 'SL', label= 'Subject Line', value = F),
                                         checkboxInput(inputId = 'cre', label= 'Creative', value = F),
                                         checkboxInput(inputId = 'cop', label= 'Copy', value = F),
                                         checkboxInput(inputId = 'SD', label= 'Send day', value = F),
                                         checkboxInput(inputId = 'ST', label= 'Send time', value = F)),
                        
                        conditionalPanel(condition = "input.SL==true", 
                                         selectInput(inputId = 'SLnum',label = 'Number of Subject Line variance', choices = seq(2,3,1))),
                        conditionalPanel(condition = "input.cre==true", 
                                         selectInput(inputId = 'crenum',label = 'Number of creative variance', choices = seq(2,3,1))),
                        conditionalPanel(condition = "input.cop==true", 
                                         selectInput(inputId = 'copnum',label = 'Number of copy variance', choices = seq(2,3,1))),
                        conditionalPanel(condition = "input.SD==true", 
                                         selectInput(inputId = 'SDnum',label = 'Number of send days', choices = seq(2,3,1))),
                        conditionalPanel(condition = "input.ST==true", 
                                         selectInput(inputId = 'STnum',label = 'Number of send times', choices = seq(2,3,1))),
                        
                        
                        conditionalPanel(condition = "input.type == 'Direct mail campaign'", 
                                         checkboxInput(inputId = 'SL2', label= 'Subject Line', value = F),
                                         checkboxInput(inputId = 'cre2', label= 'Creative', value = F),
                                         checkboxInput(inputId = 'cop2', label= 'Copy', value = F),
                                         checkboxInput(inputId = 'SD2', label= 'Send day', value = F)),
                        
                        
                        conditionalPanel(condition = "input.SL2==true", 
                                         selectInput(inputId = 'SLnum2',label = 'Number of Subject Line variance', choices = seq(2,3,1))),
                        conditionalPanel(condition = "input.cre2==true", 
                                         selectInput(inputId = 'crenum2',label = 'Number of creative variance', choices = seq(2,3,1))),
                        conditionalPanel(condition = "input.cop2==true", 
                                         selectInput(inputId = 'copnum2',label = 'Number of copy variance', choices = seq(2,3,1))),
                        conditionalPanel(condition = "input.SD2==true", 
                                         selectInput(inputId = 'SDnum2',label = 'Number of send days', choices = seq(2,3,1))),
                        
                        
                        actionButton(inputId = 'go2',label = 'Go!')),
           
           mainPanel(
             div(class = 'title', 
                 'Design your testing framework'),
             div(class = 'diagram', 
                 
                 plotOutput(outputId = 'diag')
                 
             )
             
           )),
         div(class = "footer", "Developed with ", icon('heart')," in R and Rstudio - Powered by Shiny - Developped by CJB ", a(id = 'github', href = 'https://github.com/CJB2014', icon('github')))
)