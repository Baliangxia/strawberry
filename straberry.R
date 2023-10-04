straberry<-read.csv("C:/Users/SamXi/Desktop/CS/R/strawberry/strawberry_oct4.csv",header = TRUE)

straberry_census<- straberry[straberry$Program=='CENSUS',]
## straberry_census<- straberry |> filter(straberry$Program == 'CENSUS')

straberry_survey<- straberry[straberry$Program=='SURVEY',]

vals<-straberry_census$Value

vals[1:20]

vals<-na_if(vals,'(D)')
vals1<-str_replace_all(vals,'[,]','')
## vals2<-as.numeric(gsub(",","",vals))
vals2<-as.numeric(vals1)
