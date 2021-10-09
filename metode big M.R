install.packages("boot")
library(boot)

#set coefficient of the objective function
f.obj<-c(40000, 30000, 60000)

#set matrix corresponding to coefficients of constrain by rows
#do not consider the non negative constraint ; it is actually assumtion
f.con <- matrix(c(3,1,3,2,2,3), nrow = 2, byrow = TRUE)

#set right hand side coefficients
f.rhs = c(300, 400)

#final Value (z)
z = simplex(a = f.obj, A1 = f.con, b1 = f.rhs, maxi = TRUE)
z

simplex()

# Highlight optimum solution in plot
p <- p + geom_point(aes(x = solution[1], y = solution[2]), color = "red", size = 4)
