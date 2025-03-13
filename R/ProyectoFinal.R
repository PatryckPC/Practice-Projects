# Cargar los paquetes necesarios
library(MASS)
library(GGally)

# Cargar el dataset Cars93
DF <- Cars93

# Eliminar columnas categóricas de alta cardinalidad
DF <- DF[, sapply(DF, is.numeric) | sapply(DF, function(col) length(unique(col)) <= 15)]

#DF <- DF[complete.cases(DF), ]
#DF$Cylinders <- as.numeric(as.character(DF$Cylinders))

# Revisar los datos sin las columnas de alta cardinalidad
#windows()
#ggpairs(DF, lower = list(continuous = "smooth"), 
#diag = list(continuous = "barDiag"), axisLabels = "none")


# Seleccionar solo las variables de interés y el precio
#variables_interes <- c("Cylinders", "EngineSize", "Horsepower", "Fuel.tank.capacity", 
#"Rev.per.mile", "Length", "Width", "MPG.highway", "Price")
#DF <- DF[, variables_interes]

# Análisis de correlación
#correlation_matrix <- cor(DF)
#print(correlation_matrix)

# Graficar la matriz de correlación solo con las variables seleccionadas
#windows()
#ggpairs(DF, lower = list(continuous = "smooth"), 
#diag = list(continuous = "barDiag"), axisLabels = "none")

# Separar o dividir el dataset en entrenamiento y prueba
set.seed(2) # Por repetibilidad
nsample <- nrow(DF) # Número de mediciones (filas)
idx <- sample(1:nsample, 0.7 * nsample)
DFtrain <- DF[idx, ] # Dataset de entrenamiento
DFtest <- DF[-idx, ] # Dataset de prueba

### Etapa de aprendizaje ###
# Convertir todas las columnas a numéricas y eliminar NAs
DFtrain <- DFtrain[complete.cases(DFtrain), ]
DFtrain$Cylinders <- as.numeric(as.character(DFtrain$Cylinders))

### Análisis estadístico ###
# Resumen estadístico
summary_stats <- summary(DF)
summary_stats

# Construir la matriz X (matriz de coeficientes)
X <- data.frame(unos = rep(1, nrow(DFtrain)), 
                Cylinders = DFtrain$Cylinders,
                EngineSize = DFtrain$EngineSize, 
                Horsepower = DFtrain$Horsepower,
                Fuel.tank.capacity = DFtrain$Fuel.tank.capacity,
                Rev.per.mile = DFtrain$`Rev.per.mile`,
                Length = DFtrain$Length, 
                Width = DFtrain$Width,
                MPG.highway = DFtrain$MPG.highway
)

X <- as.matrix(X) # DataFrame a matriz

# La variable dependiente es Price
Y <- as.matrix(DFtrain$Price)

# Calcular los coeficientes
B <- solve(t(X) %*% X) %*% t(X) %*% Y
### FIN DEL APRENDIZAJE ###

### Etapa de consulta ###
# Convertir todas las columnas a numéricas y eliminar NAs en DFtest
DFtest <- DFtest[complete.cases(DFtest), ]
DFtest$Cylinders <- as.numeric(as.character(DFtest$Cylinders))

# Construir la matriz Xtest (matriz de coeficientes para prueba)
Xtest <- data.frame(unos = rep(1, nrow(DFtest)), 
                    Cylinders = DFtest$Cylinders,
                    EngineSize = DFtest$EngineSize, 
                    Horsepower = DFtest$Horsepower, 
                    Fuel.tank.capacity = DFtest$Fuel.tank.capacity,
                    Rev.per.mile = DFtest$`Rev.per.mile`,
                    Length = DFtest$Length, 
                    Width = DFtest$Width,
                    MPG.highway = DFtest$MPG.highway
)
Xtest <- as.matrix(Xtest) # DataFrame a matriz

# La variable dependiente es Price
Ytest <- DFtest$Price # Precio real

# Encontrar los valores predichos
Ypred <- as.matrix(Xtest) %*% B

# Encontrar los errores
error <- Ypred - Ytest

# Comparar lo real vs estimado
comp <- data.frame(real = Ytest, est = Ypred)
print(comp) # Imprimir los valores reales y predichos

# Métricas de evaluación (cuantitativa)
p2 <- cor(Ypred, Ytest)^2 # Coeficiente de determinación
rmse <- sqrt(sum(error^2) / length(Ytest)) # RMSE
mape <- (100 / length(Ytest)) * sum(abs(Ytest - Ypred) / Ytest)

metricas <- data.frame(coefDet = p2, rmse = rmse, mape = mape)
print(metricas)

# Análisis residual (cualitativa)
windows()
par(mfrow = c(1, 2))
plot(error, main = "Residuals", ylab = "Error", xlab = "Index")
hist(error, breaks = 20, main = "Histogram of Residuals", xlab = "Error")
