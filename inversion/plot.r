library(pheatmap)
argv <- commandArgs(TRUE)
data<-read.table(argv[1],header=F,row.names = 1)
png(file=paste(argv[1],".png",sep=""),height=400,width=1400)
pheatmap(data,cluster_rows = FALSE,show_rownames=FALSE,show_colnames=F,legend=FALSE,na_col=NA,border_color=NA)
dev.off()
