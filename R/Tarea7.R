setwd("C:\\Users\\patry\\Desktop\\6to Semestre\\Taller")
# Instalar y cargar los paquetes necesarios
install.packages("xlsx")
install.packages("ggplot2")
library(xlsx)
library(ggplot2)

windows()

# Establecer el directorio de trabajo
setwd("C:\\Users\\patry\\Desktop\\6to Semestre\\Taller")

# Leer el dataset
datos <- read.xlsx("./datasets/StockPrice.xlsx", sheetIndex = 1)

# Asegurarse de que el archivo se haya leído correctamente
head(datos)

# Convertir la columna Date a tipo Date si es necesario
datos$Date <- as.Date(datos$Date)

# Seleccionar las variables x e y
x <- datos$Date
y <- datos$META

epanechnikov_kernel <- function(u) {
  if (abs(u) <= 1) {
    return(3/4 * (1 - u^2))
  } else {
    return(0)
  }
}

nadaraya_watson_estimate <- function(x, y, x_points, h) {
  m <- numeric(length(x_points))
  for (i in 1:length(x_points)) {
    numer <- 0
    denom <- 0
    for (j in 1:length(x)) {
      u <- (x_points[i] - x[j]) / h
      k <- epanechnikov_kernel(u)
      numer <- numer + k * y[j]
      denom <- denom + k
    }
    if (denom != 0) {
      m[i] <- numer / denom
    } else {
      m[i] <- 0
    }
  }
  return(m)
}

# Generar un índice simple para los días
x_index <- 1:length(x)

# Definir el ancho de banda
h <- 10  # Ajusta el valor del ancho de banda según sea necesario

# Generar puntos para estimar la regresión
x_points <- seq(min(x_index), max(x_index), length.out = 100)

# Calcular la estimación de Nadaraya-Watson usando el kernel de Epanechnikov
m <- nadaraya_watson_estimate(x_index, y, x_points, h)

# Crear un data frame para ggplot
data_plot <- data.frame(x = x_points, m = m)

# Visualizar los datos originales y la estimación de Nadaraya-Watson
ggplot() +
  geom_point(aes(x = x_index, y = y), color = 'black') +
  geom_line(data = data_plot, aes(x = x, y = m), color = 'red') +
  labs(title = "Estimación de Nadaraya-Watson con kernel Epanechnikov",
       x = "Índice de Día",
       y = "Precio de META") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))


