
shinyUI(pageWithSidebar(
  headerPanel('Motor Trends Cars Features k-means clustering'),
  sidebarPanel(
    selectInput('xcol', 'X Axis', names(mtcars), selected = names(mtcars)[[4]]),
    selectInput('ycol', 'Y Axis', names(mtcars), selected = names(mtcars)[[6]]),
    numericInput('clusters', 'Number of Clusters', 5, min = 1, max = 9),
    br(),
    h3('Instructions on how to use:'),
    br(),
    '- Choose any feature of mtcars dataset for X and Y axis.',
    br(),
    '- Choose the number of clusters your would like to fit on the plot.',
    br(),
    '- Notice that as you change the settings the plot will automatically update.'
  ),
  
  mainPanel(
    plotOutput('plot')
    
  )
))