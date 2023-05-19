generate = function(sample_size){
  x = rnorm(n=sample_size, sd=15)
  y = 1.001*x + rnorm(n=sample_size, sd=30)
  plot(x,y)
  r = cor.test(x,y)
  p = r$p.value
  rP = r$estimate
  return(p)
}
generate(100)

a = list()
b = list()
for (i in rep(10:500)){
  b = append(b, generate(i))
  a = append(a, i)
}
plot(a, b, pch=2)

