# vi: foldmarker={{{,}}} foldmethod=marker
#
# https://github.com/rstudio/shiny-examples/tree/master/052-navbar-example
#

function(input, output, session) {

  output$plot <- renderPlot({ # {{{
    plot(cars, type=input$plotType)
  }); # }}}

  output$summary <- renderPrint({ # {{{
    summary(cars)
  }); # }}}

  output$table <- DT::renderDataTable({ # {{{
    DT::datatable(cars)
  }); # }}}

}
