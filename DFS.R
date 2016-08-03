##Depth-First-Search

DFS.stack <- function(start,end,area){
  ##stack and visited nodes initialized
  S <- c();visited <- c()
  S <- c(S,start)
  while(length(S)>0){
    ##last item in is first popped out of stack
    pop <- S[1]
    S <- S[-1]
    ##if end node reached then stop
    if(pop==end){
      visited <- c(visited,pop)
      break
    }
    else if(is.element(pop,visited)){
      next
    }
    else{
      visited <- c(visited,pop)
    }
    ##initialize new push for all nodes visited
    push <- c()
    for(i in 1:ncol(area)){
      if(!is.na(area[i,pop])){
        push <- c(rownames(area)[i],push)
      }
      ##push to stack
      S <- c(push,S)
    }
  }
  visited
}		  
