#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.

library(shiny)

# Define UI for application in which the user can choose any gene ID from TPM_table (file TPMs_table_100genes.csv)
fluidPage(

    # Application title
    titlePanel("Gene expression (TPM)"),

    # Sidebar panel with a dropdown menu to select a specific Gene ID
    sidebarLayout(
        sidebarPanel(
            selectInput("inputId",
                        "Choose a gene ID:",
                        choices = NULL)
        ),

        # Show generated plot for the chosen gene in the main panel
        mainPanel(
            plotOutput("TPMs_plot")
        )
    )
)
