library(tidyverse)
vec <- 1:10

output <- vector(mode = "double", length = 10)

for (i in vec) {
  output[i] <- vec[i]
}

output2 <- vector(mode = "double", length = 0)

for (i in vec) {
  #output2[i] <- vec[i]
  output2 <- c(output2, vec[i])
}
output2

vec2 <- 5:14
output3 <- vector(mode = "double", length = 10)

for (i in vec2) {
  output3[i] <- vec2[i]
}
output3

#don't do this
for (i in 1:length(vec2))

  #because:
  vec3 <- vector("numeric", length = 0)
1:length(vec3)

#instead:
seq_along(vec3)
output4 <- vector("numeric", length = 10)
for (i in seq_along(vec2)) {
  output4[i] <- vec[i]
}
output4

seq_along(letters)

all.files <- list.files("data-raw", pattern = ".csv", 
                        full.names = TRUE, ignore.case = TRUE)
list.data <- list()
for (i in seq_along(all.files)) {
  list.data[[i]] <- read_csv(all.files[i])
}
list.data

#list indexing example
example_list <- list(c(1,5,7), "some words", mtcars)
example_list[1]
example_list[[1]]

read_csv("data-raw/ST50PKT0N1VF.csv")

nested_list <- list(c(1,5), list(c(3,2,6), "some words"))
nested_list[[2]][[1]]
