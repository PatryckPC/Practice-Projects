datos <- data.frame(
  Variable1 = rnorm(10),
  Variable2 = rnorm(10),
  Variable3 = rnorm(10),
  Variable4 = rnorm(10)
)

summary_datos <- summary(datos)
print("Resumen estadístico del data.frame 'datos':")
print(summary_datos)

A <- datos$Variable1

B <- datos[1:2, ]

datos$NuevaColumna <- rnorm(10)

nueva_fila <- data.frame(Variable1 = rnorm(1), Variable2 = rnorm(1), Variable3 = rnorm(1), Variable4 = rnorm(1), NuevaColumna = rnorm(1))
datos <- rbind(datos, nueva_fila)

datos_ordenados <- datos[order(datos$Variable1, datos$Variable2), ]

filas_aleatorias <- datos[sample(nrow(datos), 3), ]

data(airquality)
if (is.data.frame(airquality)) {
  airquality_ordenado <- airquality[order(airquality$Ozone), ]
}

aqmod <- subset(airquality, select = -c(Month, Day))