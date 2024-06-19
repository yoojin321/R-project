
worker<-matrix(c(10.0, 23.5, 1.6, 2.0, 9.3, 18.6, 34.5, 11.6,14.8,22.6,
                 34.1,26.8,36.7,36.9,38.1,18.1,8.9,24.7,26.9,16.0,
                 19.2, 6.3, 25.4, 19.4, 14.0),ncol=5)
dimnames(worker)<-list("industry"=c('Agriculture','manufacturing','construction','retail business','warehousing'),"income"=c('0','1','2','3','4'))
worker

addmargins(prop.table(addmargins(worker,2),2),1)
addmargins(worker)
barplot(worker, ylim = c(0,150), las=1,
        col=c("red","orange","yellow","green","blue"),
        ylab="worker",main="worker of industry")
worker.prop<-prop.table(worker,2)
barplot(worker.prop*100, las=1,col=c("red","orange","yellow","green","blue"),
        ylab="worker",main="worker of industry")