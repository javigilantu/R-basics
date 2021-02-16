#DataFrame
#1
df <- data.frame()

#2
a1 <- c(1, 2,3,4)
a2<- c(1, 2,3,4)
a3<- c(1, 2,3,4)
a4<- c(1, 2,3,4)
df_1 <- data.frame(a1,a2,a3,a4)

#3
strc <- str(df_1)

#4
summ <- summary(df_1)

#5
exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)

result <- data.frame(exam_data$name, exam_data$score)

#6
rows <- exam_data[1:2,]


#7
rows_2 =  exam_data[c(3,5),c(1,3)]

#8
a5 <- c(5,6,7,8)

df_1$a5 <- a5

#9
a6 <- c(9,10,11,12)

df_1 <- rbind(df_1, a6)

#10
df_1<- subset(df_1, select= -c(a5))

#11
df_1 <-df_1[-c(4,4,4,4),]

#12
exam_data <- exam_data[with(exam_data, order(name, qualify)),]

#13
a7<- c(3,2,1)
a8<- c(6,5,4)
a9<- c(9,8,7)

df_2<- data.frame(a7, a8, a9)
left <- merge(df_1, df_2, by ="numid", all.x= TRUE)
right <- merge(df_1, df_2, by ="numid", all.y= TRUE)
out <- merge(df_1, df_2, by ="numid", all= TRUE)
cross <- merge(df_1, df_2, by ="numid", all= NULL)

#14
exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(NA, NA, 2, 3, NA, 3, NA, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')

exam_data[is.na(exam_data)] = 3

#15
colnames(exam_data)[which(names(exam_data) == "score")] = "puntuation"

#16
colnames(exam_data)[which(names(exam_data) == "name")] = "student_name"
colnames(exam_data)[which(names(exam_data) == "score")] = "avg_score"

#17
exam_data[sample(nrow(exam_data),3),]

#18
exam_data <- exam_data[c("name", "attempts", "score", "qualify")]

#19
#rows that are not defined
setdiff(df_1,df_2)

df_90 = data.frame(
  "item" = c("item1", "item2", "item3"),
  "Jan_sale" = c(12, 14, 12),
  "Feb_sale" = c(11, 12, 15),
  "Mar_sale" = c(12, 14, 15)
)
df_91 = data.frame(
  "item" = c("item1", "item2", "item3"),
  "Jan_sale" = c(12, 14, 12),
  "Feb_sale" = c(11, 12, 15),
  "Mar_sale" = c(12, 15, 18)
)
print("Original Dataframes:")
print(df_90)
print(df_91)
print("Row(s) in first data frame that are not present in second data frame:")
print(setdiff(df_90,df_91))

#20
#different values
a<- c(11, 12, 15)
b<- c(12, 15, 18)  
result = intersect(a, b)

#21
#common values
common <-  union(a,b)

#22
#save dataframe
save(exam_data,file="data.rda")
load("data.rda")
file.info("data.rda")

#23
#count nan values
sum(is.na(exam_data$attempts))

#24
# duplicated values
a<- c(11, 12, 15)
b<- c(12, 15, 18)
df_3 <- data.frame(a,b)
duplicated(a,b)
unique(a,b)

#25
#get data
data = airquality
result = data[order(data[,1]),]

#26
# take out nulls
data[,c("Solar.R")]=NULL
data[,c("Wind")]=NULL
