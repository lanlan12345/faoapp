library(slidify)
setwd("~/Desktop/Coursera/Fao/presentation/")
􏰡􏰔􏰈􏰐􏰖􏰎􏰧􏰬􏰑􏰜􏰎􏰥􏰈􏱋􏰒􏰗􏰇􏰂􏰬􏰮
author("FAO App")

publish(title = 'FAOAPP', 'index.html', host = 'rpubs')

devtools:::install_github('ramnathv/slidify@onefile')

publish(user = "lanlan12345", repo = "faoapp")
