##script for Data table for snps with p-value <0.05
##Namita,February 2016
##
#library(data.table)

pvalue <-read.table("p-value_0.01", sep="\t",header = T,fill = T,row.names = NULL)

#f <-read.table("p-value_0.05", sep="\t",header = T,fill = T)

shinyServer(function(input, output){
  
  output$table <- DT::renderDataTable(DT::datatable({
    data <- pvalue
    if(input$snps != "All"){
      data <- data[data$SNP == input$snps,]
    }
    if(input$empirical_pvalue != "All")
    {
      data <- data[data$prate_s.1 == input$empirical_pvalue,]
    }
    data    
  } ))
})