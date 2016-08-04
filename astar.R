a.star <- function(start,end,area){
  closedS <- c();openS <- start
  cameFrom <- c()
  g.score <- c()
  g.score[1] <- 0
  f.score <- c()
  f.score[1] <- 0
  while(length(openS) > 0){
    current <- min(openS)
    if(current==end){
      reconstruct_path(cameFrom,current)
    }
    #remove current from openset
    #add current to closed set
    #loop for each neighboring node for current
      #ignore neighbor that is already evaulated in closed set
      #otherwise make a tentative gscore for the neighbors
      #if the neighbor is not in the openset then add it
      #otherwise if the tentative score is greater than the gscore, skip it
      #now camefrom is set to current, gscore is the tentative score, fscore is this distance plus the heuristic
  }
  #visited
  reconstruct_path <- function(cameFrom,current){
    total.path <- current
    while(current in cameFrom){
      current <- cameFrom[cameFrom==current]
      total.path <- c(total.path,current)
    }
    total.path
  }
}