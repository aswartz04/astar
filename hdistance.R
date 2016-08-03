##For AStar, a G score and a heuristic score are used to find the F score.  The heuristic score used
#in this variation of AStar will be the absolute distance between each node and the end node.  Latitude
#and Longitude are required for the cities which are then used to find this distance between them
#and then converted to approximate miles.

euc.distance <- function(coordinates,origin,dest){
  distance <- sqrt((coordinates[origin,"lat"]-coordinates[dest,"lat"])^2+
                     (coordinates[origin,"lon"]-coordinates[dest,"lon"])^2)
  distance*69
}
