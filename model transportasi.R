#import lpsolve package
library(lpSolve)

#set up cost matrix
costs <-matrix(c(8,9,14,
                 6,12,9,
                 10,13,16,
                 9,7,5), 
               nrow = 3)

#set up constraint sign and RHS
row.signs <- rep("<=",3)
row.rhs <- c(35,50,40)
col.signs<-rep(">=",4)
col.rhs <-c(45,20,30,30)

#final value(lptrans)
lptrans <- lp.transport(cost.mat = costs, direction = "min",
                        row.signs = row.signs, row.rhs = row.rhs,
                        col.signs = col.signs, col.rhs = col.rhs)

#variabel final value
lptrans$objval
lptrans$solution
