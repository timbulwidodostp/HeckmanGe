# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Generalized Heckman Model Use HeckmanGe With (In) R Software
install.packages("ssmodels")
library("ssmodels")
HeckmanGe = read.csv("https://raw.githubusercontent.com/timbulwidodostp/HeckmanGe/main/HeckmanGe/HeckmanGe.csv",sep = ";")
# Estimate Generalized Heckman Model Use HeckmanGe With (In) R Software
attach(HeckmanGe)
selectEq <- dambexp ~ age + female + educ + blhisp + totchr + ins + income
outcomeEq <- lnambx ~ age + female + educ + blhisp + totchr + ins
outcomeS <- cbind(age,female,totchr,ins)
outcomeC <- 1
HeckmanGe <- HeckmanGe(selectEq, outcomeEq,outcomeS, outcomeC, data = HeckmanGe)
summary(HeckmanGe)
# Generalized Heckman Model Use HeckmanGe With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished