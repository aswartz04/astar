a.star <- function(start,end,area){
  closedS <- c();openS <- start
  cameFrom <- c()
  g.score <- 0
  f.score <- c()
  f.score[1] <- euc.distance(seattle.coord,start,end)
  while(length(openS) > 0){
    current <- openS[min(f.score)]
    if(current==end){
      break
    }
    openS <- openS[-(openS==current)]
    closedS <- c(closedS,current)
    for(i in 1:nrow(area)){
      if(is.element(colnames(area)[i],closedS)){
        next
      }
      tentative.g.score <- g.score + area[current,i]
      if(!is.na(area[i,current]) & !is.element(colnames(area)[i],openS)){
        openS <- c(openS,colnames(area[i]))
      }
      else if(tentative.g.score >= g.score){
        next
      }
      cameFrom <- c(cameFrom,current)
      g.score <- tentative.g.score
      f.score <- g.score + euc.distance(seattle.coord,colnames(area)[i],end)
    }
  }
  reconstruct_path(cameFrom,current)
}
reconstruct_path <- function(cameFrom,current){
  total.path <- current
  while(is.element(current,cameFrom)){
    current <- cameFrom[cameFrom==current]
    total.path <- c(total.path,current)
  }
  total.path
}