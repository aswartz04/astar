##Adjacency matrix for the city of Seattle that will be used for finding routes.  
#For each city, adjacent nodes have a distance metric in miles.
##Includes latitude and longitude points for the cities.

cities <- c("Seattle","Mercer Island","Bellevue","Redmond","Renton","Newcastle",
            "Kent","Auburn","Tacoma","Fife","Artondale","Purdy","Bermerton",
            "Silverdale","Poulsbo","Mountainlake Terrace","Bothell","Lynwood",
            "Mill Creek","Everett","Duvall","Carnation","Fall City","Issaquah",
            "Snoqualmie","Tanner")
adj <- matrix(c(NA,7.1,9.8,15.3,11.7,NA,NA,28.5,NA,28.6,NA,NA,NA,NA,NA,13.5,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                7.1,NA,4.7,NA,NA,6.9,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,11.5,NA,NA,
                9.8,4.7,NA,7.9,NA,6.9,NA,NA,NA,NA,NA,NA,NA,NA,NA,18,12.1,NA,NA,NA,NA,NA,NA,11.7,NA,NA,
                15.3,NA,7.9,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,24.6,18.2,NA,NA,NA,10.2,NA,NA,NA,NA,NA,
                11.7,NA,NA,NA,NA,7.4,8.5,20.8,NA,20.9,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,6.9,6.9,NA,7.4,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,12.6,NA,NA,
                NA,NA,NA,NA,8.5,NA,NA,6.4,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                28.5,NA,NA,NA,20.8,NA,6.4,NA,NA,8.9,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,5.5,13.8,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                28.6,NA,NA,NA,20.9,NA,NA,8.9,5.5,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,13.8,NA,NA,7.7,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,7.7,NA,16.9,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,16.9,NA,8.8,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,8.8,NA,11.3,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,11.3,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                13.5,NA,18,24.6,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,3,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,12.1,18.2,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,10.1,11.8,NA,12.7,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,3,10.1,NA,8.1,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,11.8,8.1,NA,10.1,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,10.1,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,10.2,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,12.7,NA,NA,NA,NA,9,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,9,NA,6.2,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,6.2,NA,NA,5.1,NA,
                NA,11.5,11.7,NA,NA,12.6,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,12.5,16.6,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,5.1,12.5,NA,5.5,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,16.6,5.5,NA),ncol=26,byrow=T)
seattle <- adj
colnames(seattle) <- cities
rownames(seattle) <- cities

coord <- c(47.6062,-122.3321,47.5707,-122.2221,47.6104,-122.2007,47.674,-122.1215,47.4829,-122.2171,47.539,-122.1557,
           47.3809,-122.2348,47.3073,-122.2285,47.2529,-122.4443,47.2393,-122.3571,47.2995,-122.6207,47.389,-122.6254,
           47.5673,-122.6329,47.6445,-122.6949,47.7359,-122.6465,47.7882,-122.3087,47.7623,-122.2054,47.8209,-122.3151,
           47.8601,-122.2043,47.979,-122.2021,47.7423,-121.9857,47.6479,-121.914,47.5673,-121.8887,47.5301,-122.0326,
           47.5287,-121.8254,47.4754,-121.7462)

seattle.coord <- matrix(coord,ncol=2,byrow=T)
seattle.coord <- seattle.coord[,c(2,1)]
rownames(seattle.coord) <- cities
colnames(seattle.coord) <- c("lon","lat")
