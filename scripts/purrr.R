library(tidyverse)

vec <- 1:5

#increase each value by 1
for (i in seq_along(vec)) {
  vec[i] <- vec[i] + 1
}
vec

#introducing purrr
#map functions
#map always returns a list

vec <- 1:5
map(vec, ~ .x + 1)

#map_dbl always returns a double vector

vec <- 1:5
map_dbl(vec, ~ .x + 1)

1:5 %>% 
  map_dbl(~ .x + 1)

#reading in files
all.files <- list.files("data-raw", full.names = TRUE) %>% 
  set_names(.) %>% 
  map(read_csv) %>% 
  bind_rows(.id = "file")

mtcars %>% 
  map_chr(typeof)

mtcars %>% 
  map_dbl(mean)

mtcars %>% 
  map_dbl(max)

iris_unique <- iris %>% 
  map(unique) %>% 
  map_dbl(length)
iris_unique

rnorm

list1 <- rnorm(10, mean = -10)
list2 <- rnorm(10, mean = 0)
list3 <- rnorm(10, mean = 10)
list4 <- rnorm(10, mean = 100)

means <- c(-10, 0, 10, 100)

means %>% 
  map(rnorm, n = 10) %>% 
  map(mean)

means %>% 
  map(~ rnorm(n = 10, mean = .x))

map(means, rnorm, n = 10, mean = 0)

x <- sqrt(2) ^ 2
x
x == 2
x - 2
all.equal(x, 2, 1)
??equal
