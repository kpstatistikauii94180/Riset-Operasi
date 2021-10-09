install.packages("boot")
library(boot)

#membuat fungsi tujuan
f.tujuan <- c(2,3)

#membuat fungsi batasan
#membuat matriks untuk koefisien batasan berdasarkan baris
cons1 <- c(2,1)
cons2 <- c(1,3)
cons3 <- c(1,1)

#final value
z <- simplex(a = f.tujuan, A1 = cons1, b1 = 26,
             A2 = cons2, b2 = 30, A3 = cons3, b3 = 20, maxi = FALSE)
z

