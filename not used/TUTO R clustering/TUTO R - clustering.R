# START SESSION ----

rm(list=ls())
setwd("~/Desktop/ARTICLES")
library(clustMixType)
library(ggeffects)
library(dplyr)
library(ggplot2)

# GET DATA ----

data = read.csv('insurance.csv', header=TRUE, sep=',')

str(data)
data$sex = as.factor(data$sex)
data$smoker = as.factor(data$smoker)
data$region = as.factor(data$region)

# DETERMINE K ----

#calculate cost
tot_cost = c()
for (i in 1:10) {
  
  kprot = kproto(x = data,
                 k = i,
                 nstart = 25)
  
  tot_cost[i] = kprot$tot.withinss
}

#plot cost
tibble(k = 1:length(tot_cost),
       total_error = tot_cost
      ) %>%
  ggplot(aes(x=k, y=total_error)) +
  geom_point(size=2) + geom_line() + theme_bw() +
  labs(x = 'Numbers of clusters', y = 'Total cost')

# CREATE THE MODEL CHOOSE ----

k4prot = kproto(x = data,
                k = 4,
                nstart = 25)

#plot the results for each variable
clprofiles(object = k4prot,
           x = data)

#create the clusters column
data = mutate(data,
              clusters = k4prot$cluster)
data$clusters = as.factor(data$clusters)



