#
#  vi: foldmarker={{{,}}} foldmethod=marker
#

ui <- fluidPage( # {{{

  titlePanel("HTML Elements"),

  sidebarLayout ( # {{{
  
    sidebarPanel( # {{{

      h1("H1 in sidebarPanel")

    ), # }}}

    mainPanel( # {{{

      h1("H1 in mainPanel"),

      div("A div with red letters", style="color:red")

    ) # }}}

  ) # }}}

); # }}}

server <- function(input, output) {};

shinyApp(ui, server)
