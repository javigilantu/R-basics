# vectors
#3
x <-c()
values <- c(1,2,3,4)
for (i in 1:length(values))
  x[i]<- values[i]

#6
y <- sum(x)
z <- prod(x)
q <- mean(x)

#7
seven <- c(1, 2 , NaN, 4, NaN)
y_7 <- sum(seven, na.rm = TRUE)
z_7 <- prod(seven, na.rm=TRUE)
q_7 <- mean(seven, na.rm=TRUE)

#8
min <- min(x)
max <- max(x)

#9
up <- sort(x, decreasing = TRUE)
down <- sort(x, decreasing = FALSE)

#10
elem <- c(4)
for (i in 1:length(x))
  if (i == elem)
    b= TRUE

#12
last<- tail(x, n=1)

#13
l = length(x)
max_2<- sort(x, partial = l-1)[l-1]

#14
n <- c(2)
nth <- sort(x, TRUE)[n]

#16
a1 = c(1, 2, 3, 4, 5)
a2 = c(6, 7, 8, 9, 10)
a3 = c(11, 12, 13, 14, 15)
aframe = data.frame(a1, a2, a3)
avector <- aframe[,2]
class(avector)

#20
reverse <- rev(x)


#23
l_d<- dim(x) 
d_l <- length(x)