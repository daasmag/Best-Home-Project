bestHome <- read.csv(file = "BestHomePart1.csv", 
                     header = T, as.is = T)

margin <- c(bestHome$Selling_price-bestHome$Purchasing_cost)
margin