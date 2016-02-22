# ui.R
shinyUI(navbarPage(
        "Food and agriculture data browser",
        tabPanel(
                "World Tops",
                sidebarLayout(
                        sidebarPanel(width=3,
                        selectInput("n",
                                     label = h4("Top countries number"), 
                                    choices = 1:50, selected = 10),
                        selectInput(
                                "item", label = h4("Item"),
                                choices = vnames$Item, selected = "Wheat"
                        ),
                selectInput(
                        "element", label = h4("Element"),
                        choices = vnames$Element[c(3,1)]
                ),
                selectInput(
                        "year", label = h4("Year"),
                        choices = vnames$Year, selected = "2013"
                )
                ),
                mainPanel(
                        tabsetPanel(
                                tabPanel("Pie",
                                         htmlOutput("piep")
                                         ),
                                         #),
                                tabPanel("Map",
                                         htmlOutput("map")
                                         )
                        )
                )

 

)
),
tabPanel("Country",
         fluidPage(selectInput("item2", label=NULL,
                               choices = vnames$Item, selected = "Wheat"),
                 htmlOutput("itemp")    
         )
)))
