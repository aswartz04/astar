# astar

Hello, and welcome to **AStar** using **R**!  There are many components required to successfully running this algorithm, and I will walk you through both how to use my example and to use it for one of your own.  First, a little explanation on what the purpose of AStar actually is.  

**Overview.** Say you want to get from point A to point B, but you want to make sure you're taking the fatest, most cost-effective route possible.  Anyone would say to follow the euclidean distance, but realistically it isn't that easy.  Instead you must travel through a series of nodes until you get there.  There is always some kind of cost jumping from node to node, typically measured in distance, until you reach your destination.  AStar keeps track of this cost simultaneously considering a jump's relation to the end goal.  These two values determine the most effective route.  

My implementation uses cities on a map, one of the more obvious uses for AStar.  Nodes are reached by the roads that connect them.  I chose to use the Seattle area, with most major cities in the area included.  In the future I may decide to add more.

**Using AStar.** For use in R, there are several user-defined functions that need to be run before finding routes between cities.  At the very least, run the entirety of **astar.R**, **hdistance.R**, and **seattle_area_adjmatrix.R**.  Once all of that is processed, the only UDF you need to worry about is ``a.star(start,end,area)``, a function that takes three arguments.  The input for *start* and *end* are simply the city of origin and the destination, but *area* refers to the adjacency matrix that includes all of the cities that I have accounted for so far.  The last argument will always be filled in with **seattle**.  One example is below.

```
a.star("Seattle","Bothell",seattle)
```

There is a visual component available alongisde simply having the best route shown to you.  First, run **route_visual.R**.  Make sure you have the package **ggmap** installed.  The UDF in this case is `mapped_route(coordinates,route,city,zoom)`.  The argument "coordinates" needs a matrix of longitude and latitude values which have been provided.  Simply enter *seattle.coord* here.  You should assign the previous astar function as a variable, and include that for "route."  The "city" is recommended to be "Seattle," and the "zoom" is best at 9.  One example is below.

```
one.path <- a.star("Seattle","Bothell",seattle)
mapped_route(seattle.coord,one.path,"Seattle",9)
```

**Other Uses for AStar.**  So you want to use your own network of cities, do you?  Not a problem!  With a few slight modifications to the files, you can be well on your way to finding routes in your own area.

You will need to create your own file of content that will replace the entirety of **seattle_area_adjmatrix.R**.  Contained in this file should be an adjacency matrix with rows and columns as the city names, along with a table of geolocations for these cities.  This table needs to arranged particularly, with longitute as the first column and latitude as the second, along with the row names as the cities.  For the purpose of demonstration, let's say that your adjecency matrix is defined as *mycity* and your geolocations are *mycoords*.  

With this complete, you are almost ready to go using AStar to find your routes.  Wherever you may see *seattle.coord*, replace this with *mycoords*.  Once that's taken care of, you may now use the function itself, but where previously the argument had been *seattle*, you will now want to use *mycity*.  The first two arguments will be your origin and destination of choice.

Including the plotted map is also possible, with you passing *mycoords*, the vector of the route as determined by AStar, along with the city to center in and the zoom.  This function in particular is where the order of columns for *mycoords* is important.

If you want to further customize the procedure, you can also adjust the heuristic used to compute the weight of moving from one city to the next.  I currently have in place euclidean distance.  This works well enough, but natural obstacles like water, mountains, or deserts are not taken into account.  It would be better to add more weight to travelling across water, for instance and since this is based on roads, a car would not find this possible!  You would need to define a new function to replace the one in **hdistance.R**.  From there would go back to **astar.R** and switch out *euc.distance* instance for your own.
