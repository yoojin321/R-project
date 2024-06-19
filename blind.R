
#블라인드채용 전후 대학등급별 채용자
employed<-matrix(c(8.0,33.2,43.7,15.1,6.1,29.0,49.7,15.2),ncol=2)
dimnames(employed)<-list("level"=c("sky","capital","provinces","etc"),
                         "blind"=c("No","Yes"))
employed
addmargins(employed)
addmargins(prop.table(addmargins(employed,2),2),1)
chisq.test(employed)



#블라인드채용 전후 평균 남녀 채용수
employed_sex<-matrix(c(25.6,13.2,32.2,20.3),ncol=2)
dimnames(employed_sex)<-list("sex"=c("male","female"),
                             "blind"=c("No","Yes"))
employed_sex
addmargins(employed_sex)
addmargins(prop.table(addmargins(employed_sex,2),2),1)
chisq.test(employed_sex)