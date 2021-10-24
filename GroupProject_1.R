bestHome <- read.csv(file = "BestHomePart1.csv", 
                     header = T, as.is = T)

indF <- which(bestHome$Class == "Furniture")

capF <- bestHome$Required_capacity[indF]

costF <- bestHome$Purchasing_cost[indF]

solution <- rep(3, each=length(indF))


monteCarlo <- function(costs, sol){
  nsim <- 1000
  totalSim <- c()
  simVec<- c()
  set.seed(0)
  
for (j in 1:nsim) {
  for (i in 1:length(costs)) {
    simVec[i] <- max(0,rnorm (n=1, mean=costs[i], sd=100))
  }
totalSim[j] <- sum(simVec*sol)
}
return(totalSim)
}

monteCarlo(costs = costF, sol = solution)
