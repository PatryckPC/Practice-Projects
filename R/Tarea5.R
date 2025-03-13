setwd("C:\\Users\\patry\\Desktop\\6to Semestre\\Taller")
datos <- read.xlsx("./datasets/StockPrice.xlsx", sheetIndex = 1)
windows()
ggpairs(datos, lower = list(continuous = "smooth"),
        diag = list(continuous = "barDiag"), axisLabels = "none")

# Separar o dividir el dataset en conjunto de entrenamiento y prueba
set.seed(2)  # Establecer semilla para reproducibilidad
nsample <- nrow(datos)  # Número de observaciones
idx <- sample(1:nsample, 0.7 * nsample)  # Índices para el conjunto de entrenamiento
datos_train <- datos[idx, ]  # Conjunto de entrenamiento
datos_test <- datos[-idx, ]  # Conjunto de prueba

# Definir las tres variables con mayor correlación
selected_vars <- c("TOYOTA", "Google", "TESLA")  # Reemplaza con las variables deseadas


# Etapa de aprendizaje
# Construir la matriz X y calcular los coeficientes
X_train <- data.frame(unos = rep(1, nrow(datos_train)),
                      TOYOTA = datos_train$TOYOTA,
                      Google = datos_train$Google,
                      TESLA = datos_train$TESLA)
X_train <- as.matrix(X_train)

print(datos_train$medv)

# Variable dependiente
Y_train <- as.matrix(datos_train$medv)

# Calcular los coeficientes
B <- solve(t(X_train) %*% X_train) %*% t(X_train) %*% Y_train



# Visualizar los puntos de aprendizaje y el plano aprendido
scatterplot3d(datos_train[, selected_vars], color = "blue", pch = 16, main = "Puntos de aprendizaje")
planes3d(B, add = TRUE)

# Etapa de consulta
# Construir la matriz X para el conjunto de prueba
X_test <- data.frame(unos = rep(1, nrow(datos_test)), datos_test[, selected_vars])

# Predecir los valores de la variable de respuesta
Y_pred <- as.matrix(X_test) %*% B
Y_test <- datos_test$medv  # Valores reales de la variable de respuesta

# Visualizar los puntos de prueba y el plano aprendido
scatterplot3d(datos_test[, selected_vars], color = "red", pch = 16, main = "Puntos de prueba")
planes3d(B, add = TRUE)

# Evaluar el modelo - Mostrar tabla de rendimientos obtenidos
error <- Y_pred - Y_test
p2 <- cor(Y_pred, Y_test)^2  # Coeficiente de determinación
rmse <- sqrt(sum(error^2) / length(Y_test))  # RMSE
mape <- (100 / length(Y_test)) * sum(abs(Y_test - Y_pred) / Y_pred)

metricas <- data.frame(coefDet = p2, rmse = rmse, mape = mape)
metricas