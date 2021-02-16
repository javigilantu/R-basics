#List
#1
list_1 <- list("Abc", 2, 5 , TRUE, "False")

#8
list_2 <- list( "def", 4, 6, NULL, "True")
list_3<- do.call(c, list(list_1, list_2))

#10
list_data <- list(c("Red","Green","Black"), matrix(c(1,3,5,7,9,11), nrow = 2),list("Python", "PHP", "Java"))
length(list_data)

#11
length(list_3)

#12
exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)

new_list = split(exam_data, seq(nrow(exam_data)))

#14
list_1[2] = list(NULL)
