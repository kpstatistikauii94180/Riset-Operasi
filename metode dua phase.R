#install packages
install.packages("lpSolve")

#import lpsolve packages
library(lpSolve)

#membuat koefisien fungsi tujuan
f.obj <- c(40000,30000,60000)

#membuat matriks yang berkoresponden dengan fungsi batasan
f.cons <- matrix(c(3,1,3,2,2,3), nrow = 2, byrow = TRUE)

#menambahkan tanda
f.dir <- c("<=", "<=")

#menambahkan RHS
f.rhs <- c(300, 400)

#final value
z <- lp(direction = "max", objective.in = f.obj, const.mat = f.cons,
        const.dir = f.dir, const.rhs = f.rhs, compute.sens = TRUE)
z

#banyaknya produk untuk memperoleh keuntungan maksimal
z$solution

#rentang perubahan tujuan
z$sens.coef.from
z$sens.coef.to

#rentang perubahan rhs
z$duals.from
z.duals.to

link :
  http://web.ipb.ac.id/~tepfteta/ekotek/Minggu_14/M14B1.htm#:~:text=ANALISIS%20SENSITIVITAS.%20%28SENSITIVITY%20ANALYSIS%29%20Analisis%20sensitivitasmerupakan%20analisis%20yang,%20%20yang%20mungkin%20terjadi%20dari%20perubahan-perubahan%20