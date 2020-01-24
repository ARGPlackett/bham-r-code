cats <- data.frame (coat = c("calico", "black", "tabby"),
                    weight = c(2.1, 5.0, 3.2),
                    likes_string = c(1, 0, 1))

write.csv(x = cats, file = "data/feline-data.csv", row.names = FALSE)

rm (cats)

cats <- read.csv(file = "data/feline-data.csv")

cats2 <- data.frame (coat = c("calico", "black", "tabby", "tabby"),
                    weight = c(2.1, 5.0, 3.2, "2.3 or 2.4"),
                    likes_string = c(1, 0, 1, 1))

write.csv(x = cats2, file = "data/feline-data_v2.csv", row.names = FALSE)

typeof(cats2$weight)

str(cats$weight)

quiz_vector <- c(2,6,'3')
str(quiz_vector)
typeof(quiz_vector)

coercion_vector <- c('a', TRUE)
typeof(coercion_vector)

another_coercion_vector <- c(0,TRUE)
another_coercion_vector
typeof(another_coercion_vector)
str(another_coercion_vector)

str(cats2$coat)
str(cats2$weight)
str(cats$weight)
str(cats2$likes_string)

str(cats$likes_string)
cats$likes_string <- as.logical(cats$likes_string)
str(cats$likes_string)

ab_vector <- c('a', 'b')
ab_vector
combine_example <- c(ab_vector, 'SWC')
combine_example

test_vector <- 1:26
test_vector <- test_vector * 2
test_vector
names(test_vector) <- LETTERS
test_vector

test_vector + 3

new_row <- list(coat="black", weight=4.1, likes_string=FALSE)
str(rbind(cats, new_row))
cats


matrix <- matrix(data = 1:50, nrow =10, ncol = 5)
matrix2 <- matrix(data = 1:50, nrow =10, ncol = 5,
                  byrow = TRUE,
                  dimnames = list(c("r1","r2","r3","r4","r5"),
                                  c("c1","c2","c3","c4")))
matrix2

dframe <- data.frame(x=c(1,4,7,8,9),
                     y=c("a","b","c","d","e"))
dframe
dframe[c(3,5),c(1,2)]
dframe[-4, ]

gapminder <- read.csv(file = "data/gapminder-FiveYearData.csv")
head(gapminder, n = 25)
dim(gapminder)
tail(gapminder)
str(gapminder)
nrow(gapminder)
ncol(gapminder)
?head

gapminder[sample(2:500,10),]
length(gapminder)
?sample()
sample(1:1700,10)

m <- matrix(1:18, nrow=3, ncol=6)
m
m[2, c(4,5)]
m[c(1,3),c(2,5)]
m[2,5]
m[2:3,6]

c(m[1,1],m[2,2],m[3,3])

x <- 1
if (x >= 10) {
  print ("x is greater than or equal to 10")
} else if (x > 5) {
  print ("x is smaller than 10, but bigger than 5")
} else {
  print ("x is smaller than 5")
}

gapminder[(gapminder$year == 2002),]
rows2002_number <- nrow(gapminder[(gapminder$year == 2002),])

if (nrow(gapminder[(gapminder$year == 2002),]) >=1){
  print("Record(s) for the year 2002 found.")
} else {
  print ("No records for the year 2002 found.")
}

if (nrow(gapminder[(gapminder$year == 2012),]) >=1){
  print("Record(s) for the year 2012 found.")
} else {
  print ("No records for the year 2012 found.")
}

if (any(gapminder$year == 2002)){
  print("Record(s) for the year 2002 found.")
} else {
  print ("No records for the year 2002 found.")
}

if (any(gapminder$year == 2002)){
  print("Record(s) for the year 2002 found.")
}

str(gapminder$continent)
levels(gapminder$continent)
unique(gapminder$continent)

continents <- unique(gapminder$continent)

for (continent in continents){
  logical_val <- gapminder$continent == continent
  lifeExp_sub <- gapminder$lifeExp[logical_val]
  mean_val <- mean(lifeExp_sub)
    if (mean_val >= 55) {
      cat ("Mean life expectancy is larger than 55 \n")
    } else {
      cat ("Mean life expectency is less than 50 \n")
    }
  }

library(ggplot2)

ggplot(data = gapminder, aes(x = year, y = lifeExp)) +
  geom_violin(aes(fill = continent))

               