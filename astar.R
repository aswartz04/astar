a.star <- function(start,end,area){
  closedS <- c();openS <- start
  cameFrom <- rep(NA,ncol(area))
  names(cameFrom) <- colnames(area)
  g.score <- rep(0,ncol(area))
  names(g.score) <- colnames(area)
  f.score <- rep(0,ncol(area))
  names(f.score) <- colnames(area)
  f.score[start] <- euc.distance(seattle.coord,start,end)
  while(length(openS) > 0){
    current <- names(f.score[f.score==min(f.score[names(f.score)%in%openS])])
    if(current==end){
      break
    }
    openS <- openS[!openS%in%current]
    closedS <- c(closedS,current)
    for(i in 1:nrow(area)){
      if(is.na(area[i,current]) || is.element(colnames(area)[i],closedS)){
        next
      }
      tentative.g.score <- g.score[current] + area[current,i]
      if(!is.na(area[i,current]) & !is.element(colnames(area)[i],openS)){
        openS <- c(openS,colnames(area)[i])
      }
      else if(tentative.g.score >= g.score[i]){
        next
      }
      cameFrom[i] <- current
      g.score[i] <- tentative.g.score
      f.score[i] <- g.score[i] + euc.distance(seattle.coord,colnames(area)[i],end)
    }
  }
  reconstruct_path(cameFrom,current)
}
reconstruct_path <- function(cameFrom,current){
  total.path <- current
  while(is.element(current,names(cameFrom))){
    current <- cameFrom[current]
    if(!is.na(current)){
      total.path <- c(current[[1]],total.path) 
    }
  }
  total.path
}

a.star("Seattle","Bothell",seattle)