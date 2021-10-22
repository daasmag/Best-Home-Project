bestHome <- read.csv(file = "BestHomePart1.csv", 
                     header = T, as.is = T)

margin <- c(bestHome$Selling_price-bestHome$Purchasing_cost)
bestHome$gross_margin <- margin
bestHome

profitability <- c(bestHome$gross_margin/bestHome$Required_capacity)
max(profitability)
