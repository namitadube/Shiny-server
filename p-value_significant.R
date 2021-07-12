##mastersheet for p-value_0.01 and genes
##January,2016
##Namita 
setwd("~/Research/pawan_backup/bay/bay_avg")
#cat("enter your file name:")

#head(y)
z <-subset(y,prate_s.1 <= 0.01 | prate_w.1 <= 0.01 | air_s.1  <= 0.01 | air_w.1 <= 0.01 | nswrs_s.1 <= 0.01 | nswrs_w.1 <= 0.01 | rhum_s.1 <= 0.01 | rhum_w.1 <= 0.01 | dswrf_s.1 <= 0.01 | dswrf_w.1 <= 0.01 | Latitude.1 <= 0.01 | Longitude.1 <= 0.01 | altitude.1 <= 0.01)
don <-subset(z, select=c("SNP","prate_s.1","prate_w.1","air_s.1","air_w.1","nswrs_s.1","nswrs_w.1","rhum_s.1","rhum_w.1","dswrf_s.1","dswrf_w.1","Latitude.1","Longitude.1","altitude.1","HumanOmniExpress.12v1.1_B.Illumina.","UCSC.10up.downstream.genes.","UCSC.50up.downstream.genes."))
b <-subset(y,prate_s.1 <= 0.05 | prate_w.1 <= 0.05 | air_s.1  <= 0.05 | air_w.1 <= 0.05 | nswrs_s.1 <= 0.05 | nswrs_w.1 <= 0.05 | rhum_s.1 <= 0.05 | rhum_w.1 <= 0.05 | dswrf_s.1 <= 0.05 | dswrf_w.1 <= 0.05 | Latitude.1 <= 0.05 | Longitude.1 <= 0.05 | altitude.1 <= 0.05)
don_1 <-subset(z, select=c("SNP","prate_s.1","prate_w.1","air_s.1","air_w.1","nswrs_s.1","nswrs_w.1","rhum_s.1","rhum_w.1","dswrf_s.1","dswrf_w.1","Latitude.1","Longitude.1","altitude.1","HumanOmniExpress.12v1.1_B.Illumina.","UCSC.10up.downstream.genes.","UCSC.50up.downstream.genes."))
final_1 <-replace(don_1,don_1 > 0.05,NA)
write.table(final_1,"p-value_0.05",sep="\t",row.names = F,quote = FALSE)
final <-replace(don,don > 0.01,NA)
write.table(final,"p-value_0.01",sep="\t",row.names = F,quote = FALSE)
