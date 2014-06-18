by_soil <- function(data){
    ggplot(data, aes(x=date, y=value,col=TAXSUSDA,group=loc))+geom_line()+facet_wrap(~altitude)
}

at_altitude <- function(data,alt){
    data = subset(data, altitude==alt)
    ggplot(data, aes(x=date, y=value, col=TAXSUSDA, group=loc))+geom_line()
}

by_soil_grouped <- function(data){
    ggplot(data,
           aes(x=date,y=value,group=loc:factor(altitude),col=factor(altitude))
           )+
           geom_line()+geom_point(col="black",cex=1) + facet_wrap(~TAXSUSDA)
}
