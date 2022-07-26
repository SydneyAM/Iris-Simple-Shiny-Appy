
library(shiny)
library(dplyr)
library(ggplot2)
iris_categories <- colnames(dplyr::select(iris, -Species))

fluidPage(
  titlePanel("Iris Data"),
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "x_attribute", 
                  label   = "X Axis", 
                  choices = iris_categories),
      selectInput(inputId  = "y_attribute", 
                  label    = "Y Axis",
                  choices  = iris_categories, 
                  selected = iris_categories[2]),
      radioButtons(inputId = "radio_colour", 
                   label   = "select point colour",
                   choices = c("blue", "red", "black"))
    ),
    mainPanel(
          plotOutput(outputId = "ggplot_iris", width = "400px")
    
      
    )
  )
)