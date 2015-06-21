## Download File
setwd("C:/Users/Melanie/Desktop/R Code Class/Data Analysis Poject 2")
if(!exists("data")){
  data <- readRDS("C:/Users/Melanie/Desktop/R Code Class/Data Analysis Poject 2/summarySCC_PM25.rds")
}
if(!exists("SCC")){
  SCC <- readRDS("C:/Users/Melanie/Desktop/R Code Class/Data Analysis Poject 2/Source_Classification_Code.rds")
}
# Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? 
# Use the base plotting system to make a plot answering this question.

subsetdata  <- data[data$fips=="24510", ]

aggregatedByYear <- aggregate(Emissions ~ year, subsetdata, sum)

png('plot2.png')
barplot(height=aggregatedByYear$Emissions, names.arg=aggregatedByYear$year, xlab="years", ylab=expression('total PM'[2.5]*' emission'),main=expression('Total PM'[2.5]*' in the Baltimore City, MD emissions at various years'))
dev.off()
