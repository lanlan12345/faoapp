#http://landing.shinyapps.io/food_agriclutre

library(shiny)
library(dplyr)
library(tidyr)
library(googleVis)

source('./tops.R')
source('./countries.R')



shinyServer(
        
        function(input, output) {
                output$piep <- renderGvis({gvisPieChart(tops(item = input$item,
                             n=input$n,element = input$element,year = input$year),
                        options =list(width = 600,height = 400, pieHole=0.5)
                )})
                
                output$map <- renderGvis(
                        {
                                gvisGeoChart(head(tops(item = input$item,n=input$n,
                                                       element = input$element,year = input$year),input$n),
                                             locationvar="Country", 
                                             colorvar= input$element,
                                             options=list(width = 600,height = 400,
                                                          projection="kavrayskiy-vii"))
                        }
                )
                
                output$itemp <- renderGvis(
                        {gvisMotionChart(countries(item = input$item2),
                                         "Country","Year",options = list(width = 800,height = 500))})        

        })
