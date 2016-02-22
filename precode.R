library(slidify)
library(slidifyLibraries)
library(slidifyUI)
setwd("~/Desktop/Coursera/Fao/presentation/FAO APP")
rm􏰡􏰔􏰈􏰐􏰖􏰎􏰧􏰬􏰑􏰜􏰎􏰥􏰈􏱋􏰒􏰗􏰇􏰂􏰬􏰮
author("FAO App")

publish(title = 'FAOAPP', 'index.html', host = 'rpubs')

devtools:::install_github('ramnathv/slidify@onefile')

publish(user = "lanlan12345", repo = "faoapp")
