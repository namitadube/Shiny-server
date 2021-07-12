##script for Data table for snps with p-value <0.05
##Namita,February 2016
##

library(shiny)
#require(ggplot2)
#library(data.table)
#y <-read.table("mastersheet", sep="\t",header = T,fill = T)
#read raw file
pvalue <-read.table("p-value_0.01", sep="\t",header = T,fill = T,row.names = NULL)
shinyUI(fluidPage(
  titlePanel("SNPs P-value"),
  fluidRow(
    column(4,
      #sliderInput("n", "N:", min = 10, max = 1000, value = 200,
      #            step = 10),
      
      selectInput("snps","SNP list",c("All",unique(as.character(pvalue$SNP))))
      ),
    column(4,
           selectInput("empirical_pvalue","p-values",c("All",unique(as.character(pvalue$prate_s.1))))
           ),
      #selectInput("var", "Climate Variable", c("PrecipitationRate_Summer","PrecipitationRate_Winter","SurfaceAirTemp_Summer","SurfaceAirTemp_Winter","NetShortwaveRadiationFlux_Summer","NetShortwaveRadiationFlux_Winter","RelativeHumidity_Summer","RelativeHumidity_Winter","DownwardSolarRadiation_Summer","DownwardSolarRadiation_Winter","Latitude","Longitude","Altitute")),
    column(4,  
    sliderInput("inputId",label = ("P-value"),min = 0, max = 0.01, value = c(0.005,0.002))
    )
      #textInput("text1", label = ("Enter Gene"),value = "eg:ACRG"),
     # numericInput("num",label = ("climate variables associated with a single SNP"),value = 0),
     
    
         ),
  fluidRow(
    DT::dataTableOutput("table")
    )
      )
  )

