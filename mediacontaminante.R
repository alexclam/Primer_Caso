#Primer caso----------------------------------------------------------

mediacontaminante<- function(directorio, contaminante,id){
    setwd(directorio)
    x<-list.files()
    v<-c()
    for(n in id){
        nombrearchivo<-x[n]
        archivo<-read.csv(nombrearchivo,header = TRUE,sep = ",")
        sn<-archivo[,2:3]
        if(contaminante=="sulfate"){
            xx<-sn[,1]
            v<-c(v,xx)
        } else if(contaminante=="nitrate"){
            xx<-sn[,2]
            v<-c(v,xx)
        }
    }    
    i<-mean(v,na.rm = T)
    print(i)
}        

#Ejemplo:
# mediacontaminante("C:/Users/Alejandro/Desktop/specdata/specdata","sulfate",1:2)
