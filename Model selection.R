
library(simts)
set.seed(1)
true_model = AR(phi = c(1.2, -0.9, 0.3), sigma2 = 1)
Xt = gen_gts(n = 500, model = true_model)
plot(auto_corr(Xt, pacf = TRUE))
######### select different model by aic bic ###########
best_model = select(AR(10), Xt, include.mean = FALSE) 
?select
best_model$coef

lynx_gts = gts(log(lynx), start = 1821, data_name = "Lynx Trappings", unit_time = "year", name_ts = "Trappings")
plot(lynx_gts)
corr_analysis(lynx_gts)
lynx_select = select(AR(16), lynx_gts, include.mean = TRUE)

############## EXTRA R for model seletion########
fit1<-arima(Xt,c(1,0,0))
fit2<-arima(Xt,c(2,0,0))
fit3<-arima(Xt,c(3,0,0))
fit4<-arima(Xt,c(4,0,0))
fit5<-arima(Xt,c(5,0,0))
fit5<-arima(Xt,c(5,0,0))
AIC(fit1, fit2, fit3,fit4, fit5)
BIC(fit1, fit2, fit3,fit4, fit5)
?HQ
