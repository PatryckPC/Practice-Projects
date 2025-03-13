u = round(runif(4, min = 2, max = 25), 2)
v = round(runif(4, min = 2, max = 25), 2)
w = round(runif(4, min = 2, max = 25), 2)

A = cbind(u, v, w)

B = rbind(u, v, w)

M = A %*% B
P = B %*% A

#inv_M = solve(M)
inv_P = solve(P)

M_cuadrado <- M %*% M

M_cubo <- M %*% M %*% M

M_sexta <- M ^ 6

rownames(M) <- paste0("F", 1:4)
colnames(M) <- paste0("C", 1:4)

columnas_seleccionadas <- M[, c("C3", "C4")]