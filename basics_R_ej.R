# Basics
#3
first <- c(20:50)
second <- c(20:60)
third<- c(51:91)
m <- mean(second)
s <- sum(third)

#4
random <- sample(-50:50, 10, replace=TRUE)

#5
recurse_fibonacci <- function(n) {
  if(n <= 1) {
    return(n)
  } else {
    return(recurse_fibonacci(n-1) + recurse_fibonacci(n-2))
  }
}

#7
fourth <- c(1:100)
for(i in 1:length(fourth)){
  if (i%%3 ==0)
    {print("Fizz")}
  if (i%%5 ==0)
    {print("Buzz")}
  if (i%%3 ==0 & i%%5 ==0 )
    {print("FizzBuzz")}
}
#9
print_factors = function(n) {
  for(i in 1:n) {
    if((n %% i) == 0) {
      print(i)
    }
  }
}

#10
max_min <- function(n){
  print(max(n))
  print(min(n))
}

max_min(fourth)

#13
n = floor(rnorm(1000, 50, 100))
t = table(n)


#15
a <- c(1:5)
b <- c("Red", "green", "Blue")
c <- c(TRUE, FALSE, TRUE, FALSE)
print(typeof(a))
print(typeof(b))
print(typeof(c))

#22
n = floor(rnorm(1000, 50, 100))
t = table(n)
barplot(t)

#25
Employees = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)

#26
summary(Employees)

