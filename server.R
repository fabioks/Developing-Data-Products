
shinyServer(function(input, output, session) {

  data <- reactive({
    mtcars[, c(input$xcol, input$ycol)]
  })
  
  clusters <- reactive({
    kmeans(data(), input$clusters)
  })
  
  output$plot <- renderPlot({
    par(mar = c(5.1, 4.1, 0, 1))
    plot(data(), col = clusters()$cluster, pch = 20, cex = 3)
    points(clusters()$centers, pch = 8, cex = 3, lwd = 3)
  })
  
})

