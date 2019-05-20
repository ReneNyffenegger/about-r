# vi: foldmarker={{{,}}} foldmethod=marker
#
# https://github.com/rstudio/shiny-examples/tree/master/052-navbar-example
#

library(markdown)

navbarPage('Navigation', # {{{

  tabPanel('Plot', # {{{

    sidebarLayout( # {{{

      sidebarPanel( # {{{

        radioButtons( # {{{
            'plotType' ,
            'Plot type',
             c('Scatter'='p',
               'Line'   ='l'
              )
        ) # }}}

      ), # }}}

      mainPanel(plotOutput('plot'))
    ) # }}}

  ), # }}}

  tabPanel('Summary', # {{{
    verbatimTextOutput('summary') # value assigned by call to renderPrint()
  ), # }}}

  navbarMenu('More', # {{{

    tabPanel('Table', # {{{
      DT::dataTableOutput('table') # value assigned by call to DT::renderDataTable()
    ), # }}}

    tabPanel('About', # {{{
 
      fluidRow ( # {{{ Column widths are based on the Bootstrap 12-wide grid system, so the columns-widths should add up to 12

        column(6, # {{{
          includeMarkdown('about.md')
        ), # }}}

        column(6, # {{{ changed from 3 to 6

          img(class='img-polaroid', src=paste0('http://upload.wikimedia.org/', 'wikipedia/commons/9/92/', '1919_Ford_Model_T_Highboy_Coupe.jpg')),

          tags$small(
            'Source: Photographed at the Bay State Antique ',
            "Automobile Club's July 10, 2005 show at the ",
            'Endicott Estate in Dedham, MA by ',
            a(href='http://commons.wikimedia.org/wiki/User:Sfoskett', 'User:Sfoskett')
          )

        ) # }}}

      ) # }}}

    ) # }}}

  ) # }}}

); # }}}
