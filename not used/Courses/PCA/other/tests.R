data('iris')
iris
library(dplyr)

iris = iris %>%
  mutate(x1 = scale(Sepal.Length),
         x2 = scale(Sepal.Width),
         x3 = scale(Petal.Length),
         x4 = scale(Petal.Width))

iris = iris[, 6:9]
iris = as.matrix(iris)
N = as.matrix(1/nrow(iris) * diag(nrow(iris)))

t(iris) %*% N %*% iris
cor(iris)

cor(iris$Petal.Width, iris$Petal.Length)


rez = PCA