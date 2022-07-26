
library(shiny)
library(magrittr)
library(ggplot2)

function(input, output, session) {
  
 
  
  output$ggplot_iris <- renderPlot({
    
    iris %>%
      ggplot(aes(x = .data[[input$x_attribute]],
                 y = .data[[input$y_attribute]])) +
      geom_point(colour = input$radio_colour) +
      ggtitle(input$plot_name)
    
  })

  
}
