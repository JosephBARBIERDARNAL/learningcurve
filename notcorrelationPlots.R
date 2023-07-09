library(ggplot2)



plot1 = function(){
  rm(list=ls())
  n=200

  successful <- data.frame(
    Sport = rnorm(n, mean = 10),
    Time_reading = rnorm(n, mean = 7),
    Category = "Successful")
  
  unsuccessful <- data.frame(
    Sport = rnorm(n, mean = 5),
    Time_reading = rnorm(n, mean = 2),
    Category = "Unsuccessful")
  
  data = rbind(successful, unsuccessful)
  
  plot = ggplot(data, aes(x = Sport, y = Time_reading, color = Category)) +
    geom_point(size=3) +
    scale_color_manual(values = c("Successful" = "red", "Unsuccessful" = "blue")) +
    theme_minimal() +
    theme(
      panel.background = element_rect(fill = "beige"),
      plot.background = element_rect(fill = "beige"))
  plot
}
plot1()

plot2 = function(){
  rm(list=ls())
  n = 200
  
  df = data.frame(
    Sport = rnorm(n, mean = 10),
    Time_reading = rnorm(n, mean = 7),
    Category = "Successful")

  plot = ggplot(df, aes(x = Sport, y = Time_reading, color=Category)) +
    geom_point(size=3) +
    scale_color_manual(values = c("Successful" = "red")) +
    theme_minimal() +
    theme(
      panel.background = element_rect(fill = "beige"),
      plot.background = element_rect(fill = "beige"))
  plot
}
plot2()

plot3 = function(n=20){
  rm(list=ls())
  
  successful <- data.frame(
    Sport = rnorm(n, mean = 7),
    Time_reading = rnorm(n, mean = 4),
    Category = "Successful")

  unsuccessful <- data.frame(
    Sport = rnorm(n, mean = 7),
    Time_reading = rnorm(n, mean = 4),
    Category = "Unsuccessful")

  data = rbind(successful, unsuccessful)
  
  plot = ggplot(data, aes(x = Sport, y = Time_reading, color = Category)) +
    geom_point(size=3) +
    scale_color_manual(values = c("Successful" = "red", "Unsuccessful" = "blue")) +
    theme_minimal() +
    theme(
      panel.background = element_rect(fill = "beige"),
      plot.background = element_rect(fill = "beige"))
  plot
}
plot3()

