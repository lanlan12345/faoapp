top <- function (item="Grapes",n=10, year=2013,element="Production(tonnes)") {
        n <- as.numeric(n)
        FAO <- readRDS("FAO.rds")
        country <- FAO[c(1:3,which(names(FAO)==element))]%>%
                filter(Item ==item, Year==year)
        
        other <- country[which(country$Country=="World"),]
        country <- country[-which(country$Country=="World"),]
        country <- country[order(country[[element]],decreasing = T)[1:n],]
        other[[element]] <- other[[element]]-sum(country[[element]])
        other$Country <- "Others"
        
        rbind(country, other)[,c(1,4)]
}
