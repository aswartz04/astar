mapped_route <- function(coordinates,route,city,zoom){
  coord <- c()
  for(i in route){
    coord <- rbind(coord,coordinates[i,])
  }
  coord <- as.data.frame(coord)
  map <- get_map(location=city,zoom=zoom)
  plotting <- ggmap(map)+geom_point(data=coord,aes(x=lon,y=lat),color="black",size=4)
  plotting+geom_path(data=coord,aes(x=lon,y=lat),color="blue",size=2)
}