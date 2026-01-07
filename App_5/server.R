# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.


library(shiny)
library(ggplot2)
library(tidyr)
library(readr)

function(input, output, session) {
  
  #Loading data
  TPMs_data <- read_csv("TPMs_table_100genes.csv")
  #Extracting vector of geneId values(they are in the 1st column of our dataset)
  gene_values <- TPMs_data[[1]]
  #Updating list of values user can choose from
  updateSelectInput(session, "inputId", label = NULL, choices = gene_values, selected = NULL)
  #Rendering the plot
  output$TPMs_plot <- renderPlot({    
      # Filtering data for the selected gene and pivoting to long format(excluding the GeneID column)   
      TPMs_data_long <- TPMs_data %>% 
        filter(TPMs_data[[1]] == input$inputId) %>%
        pivot_longer(cols = -1, names_to = "Sample", values_to = "TPMs")
      #Generating simple bar plot of our data filled by Sample and with dynamic title
      ggplot(TPMs_data_long, aes(x = Sample, y = TPMs, fill = Sample)) +
        geom_bar(stat = "identity") +
        theme_minimal() +
        labs(title = paste("Expression of", input$inputId),
             y = "TPM",
             x = "Sample Name")
       
    })

}
