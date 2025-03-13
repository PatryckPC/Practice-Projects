df <- data.frame(x = 1:4, y = 5:8, z = 9:12)

media_filas <- apply(df, 1, mean)

df_ordenado <- apply(df, 2, sort)

resultado <- apply(df, 1, function(x) 1/x)

resultado <- apply(df, 1, function(x) {
  1/x
})

resultado_redondeado <- round(resultado, 2)

rango_columnas <- apply(df, 2, function(x) diff(range(x)))

# Parte 2 - lapply

carros = mtcars
minimos_mtcars <- lapply(mtcars, min)

cadena <- "Hola"
n = 3
repeticiones <- lapply(1:n, function(x) paste(rep(cadena, x), collapse = ""))
print(repeticiones)

matrices <- list(matrix(1:4, ncol = 2), matrix(5:8, ncol = 3), matrix(9:12, ncol = 4))
segunda_columna <- lapply(matrices, function(x) x[, 2])
print(segunda_columna)

lista_numeros <- list(1, 4, 9, 16, 25)
raiz_cuadrada <- lapply(lista_numeros, function(x) sqrt(x))
print(raiz_cuadrada)