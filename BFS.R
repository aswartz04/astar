##Breadth-First-Search

BFS.queue <- function(start,end,area){
  ##queue and visited nodes initialized
  Q <- c();visited <- c()
  Q <- c(Q,start)
  while(length(Q)>0){
    ##first in the queue is taken out
    dequeue <- Q[length(Q)]
    Q <- Q[-length(Q)]
    ##keep track of the route
    visited <- c(visited,dequeue)
    ##if end node reached, stop
    if(dequeue==end){
      break
    }
    ##new queue formed
    queue <- c()
    for(i in 1:ncol(area)){
      ##only nodes not yet visited are checked before adding to the queue
      if(!is.na(area[i,dequeue]) & !is.element(colnames(area)[i],c(visited,Q))){
        Q <- c(colnames(area)[i],Q)
      }
    }
  }
  visited
}