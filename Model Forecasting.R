library(simts)
N=500
Xt = gen_gts(N, AR(phi = c(0.75,0.2), sigma2 = 1))
 
mod=estimate(AR(2), Xt,
             method = "mle")
 
A<-predict(mod, n.ahead = 30)
A$pred
A$se
A$CI0.5
A$CI0.95
 