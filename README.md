# astar

Hello, and welcome to *AStar* using *R*!  There are many components required to successfully running this algorithm, and I will walk you through both how to use my example and to use it for one of your own.  First, a little explanation on what the purpose of AStar actually is.  
*Overview.* Say you want to get from point A to point B, but you want to make sure you're taking the fatest, most cost-effective route possible.  Anyone would say to follow the euclidean distance, but realistically it isn't that easy.  Instead you must travel through a series of nodes until you get there.  There is always some kind of cost jumping from node to node, typically measured in distance, until you reach your destination.  AStar keeps track of this cost simultaneously considering a jump's relation to the end goal.  These two values determine the most effective route.  

My implementation uses cities on a map, one of the more obvious uses for AStar.  I chose to use the Seattle area, with most major cities in the area included.  In the future I may decide to add more.

*Using AStar.* For use in R, there are several user-defined functions that need to be ran before finding routes between cities.  At the very least, run the entirety of *astar.R*, *hdistance.R*, and *seattle_area_adjmatrix.R*.  

More to come later.
