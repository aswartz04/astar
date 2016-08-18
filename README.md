# astar

Hello, and welcome to **AStar** using **R**!  There are many components required to successfully running this algorithm, and I will walk you through both how to use my example and to use it for one of your own.  First, a little explanation on what the purpose of AStar actually is.  

**Overview.** Say you want to get from point A to point B, but you want to make sure you're taking the fatest, most cost-effective route possible.  Anyone would say to follow the euclidean distance, but realistically it isn't that easy.  Instead you must travel through a series of nodes until you get there.  There is always some kind of cost jumping from node to node, typically measured in distance, until you reach your destination.  AStar keeps track of this cost simultaneously considering a jump's relation to the end goal.  These two values determine the most effective route.  

My implementation uses cities on a map, one of the more obvious uses for AStar.  I chose to use the Seattle area, with most major cities in the area included.  In the future I may decide to add more.

**Using AStar.** For use in R, there are several user-defined functions that need to be run before finding routes between cities.  At the very least, run the entirety of **astar.R**, **hdistance.R**, and **seattle_area_adjmatrix.R**.  Once all of that is processed, the only UDF you need to worry about is ``astar(start,end,area)``, a function that takes three arguments.  The input for *start* and *end* are simply the city of origin and the destination, but *area* refers to the adjacency matrix that includes all of the cities that I have accounted for so far.  The last argument will always be filled in with **seattle**.  One example is below.

```
astar("Seattle","Bothell",seattle)
```

There is a visual component available alongisde simply having the best route shown to you.  First, run **route_visual.R**.  Make sure you have the package **ggmap** installed.  The UDF in this case is `mapped_route(coordinate,route,city,zoom)`.  The argument "coordinates" needs a matrix of longitude and latitude values which have been provided.  Simply enter *seattle.coord* here.  You should assign the previous astar function as a variable, and include that for "route."  The "city" is recommended to be "Seattle," and the "zoom" is best at 9.  One example is below.

```
one.path <- astar("Seattle","Bothell",seattle)
mapped_route(seattle.coord,one.path,"Seattle",9)
```

**Other Uses for AStar.**  This section will provide information on how to use AStar for your own personal cities.
