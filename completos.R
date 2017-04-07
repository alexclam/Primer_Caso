#Segundo caso........................................................

completos<-function(directorio,id){
    setwd(directorio)
    x<-list.files()
    minimo<-min(id)
    maximo<-max(id)
    id<-c()
    nobs<-c()
    for(n in minimo:maximo){
        nombrearchivo<-x[n]
        archivo<-read.csv(nombrearchivo,header = TRUE,sep = ",")
        ##as.numeric(TRUE)
        ##as.numeric(FALSE)
        o<-is.na.data.frame(archivo)
        d<-archivo[rowSums(o)==0,]
        renglones<-nrow(d)
        id<-c(id,n)
        nobs<-c(nobs,renglones)
    }    
    final<-cbind(id,nobs)
    final
    class(final)
    final2<-as.data.frame(final)
    print(final2)
}    

#Como escribirlo...
#completos("C:/Users/Alejandro/Desktop/specdata/specdata",1:2)
