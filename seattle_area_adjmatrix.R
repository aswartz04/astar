##Adjacency matrix for the city of Seattle that will be used for finding routes.  
#For each city, adjacent nodes have a distance metric in miles.

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

