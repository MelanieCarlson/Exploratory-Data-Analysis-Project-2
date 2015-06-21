## Download File
setwd("C:/Users/Melanie/Desktop/R Code Class/Data Analysis Poject 2")
if(!exists("data")){
  data <- readRDS("C:/Users/Melanie/Desktop/R Code Class/Data Analysis Poject 2/summarySCC_PM25.rds")
}
if(!exists("SCC")){
  SCC <- readRDS("C:/Users/Melanie/Desktop/R Code Class/Data Analysis Poject 2/Source_Classification_Code.rds")
}
# Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
# Using the base plotting system, make a plot showing the total PM2.5 emission from all sources 
# for each of the years 1999, 2002, 2005, and 2008.

aggregatedByYear <- aggregate(Emissions ~ year, data, sum)

png('plot1.png')
barplot(height=aggregatedByYear$Emissions, names.arg=aggregatedByYear$year, xlab="years", ylab=expression('total PM'[2.5]*' emission'),main=expression('Total PM'[2.5]*' emissions at various years'))
dev.off()
