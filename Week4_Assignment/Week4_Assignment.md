Week4_Assignment
========================================================
author: "Sven"
date: "6 Oktober 2018"
autosize: true

Assignment content
========================================================

- Build a shiny web application
- Publish it on a R server
- Build a Pitch presentation


App content
========================================================


The Shiny web application build is  used to add a smoothing line to the output of the Airpassengers dataset, which is built in in R. You can access it with "AirPassengers". It contains the monthly Airline Passenger Numbers from 1949-1960. 

![plot of chunk unnamed-chunk-1](Week4_Assignment-figure/unnamed-chunk-1-1.png)

Feature in App
========================================================

By adjusting the slider in the app for the smoothing parameter the smoothing line in the plot, colored in red, will change accordingly. The lower the value the more reactive the smoothing is.

![plot of chunk unnamed-chunk-2](Week4_Assignment-figure/unnamed-chunk-2-1.png)

Source Code
========================================================



```r
 plot(AirPassengers)
 lines(smooth.spline(AirPassengers, spar = .5), col = "red")
```

![plot of chunk unnamed-chunk-3](Week4_Assignment-figure/unnamed-chunk-3-1.png)
