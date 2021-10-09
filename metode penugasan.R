#Metode Penugasan

#mengimport package lpSolve
library(lpSolve)

#membuat matriks biaya
cost.mat= matrix(c(5,7,4,3,6,5,2,3,4),
                 nrow = 3, byrow = TRUE)
cost.mat

#membuat/mencari final value
met.penugasan=lp.assign(cost.mat, direction = "min")

#melihat solusi optimum
cost.mat
met.penugasan$solution
met.penugasan$objval

