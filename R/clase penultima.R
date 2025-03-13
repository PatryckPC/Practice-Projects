setwd("C:\\Users\\patry\\Desktop\\6to Semestre\\Taller")

library(xlsx)
data <- read.xlsx("sentimientos_dataset.xlsx",sheetName ="sentimientos")

library(tm)
library(SnowballC)

# crear el cuerpo (corpus)
corpus <- VCorpus(VectorSource(data$Textos))
# quitar las minusculas, eliminar signos de puntuacion y stopwords
corpus <- tm_map(corpus,content_transformer(tolower))
corpus <- tm_map(corpus,removePunctuation)
corpus <- tm_map(corpus,removeWords,stopwords("spanish"))
# encontrar la raiz de ciertas palabras
corpus <- tm_map(corpus,stemDocument)

# convertir el corpus en una matriz de terminos
dtm <- DocumentTermMatrix(corpus)
dtm

dtm_df <- as.data.frame(as.matrix(dtm))
dtm_df$Sentimientos <- data$Sentimientos #etiqueta (caracter)

### Paso 3. Separacion del dataset (70% entrenamient)
set.seed(321)
train_index <- sample(1:nrow(dtm_df),0.7*nrow(dtm_df))
train_data <- dtm_df[train_index,]
test_data <- dtm_df[-train_index,]

### Paso 4a. APRENDIZAJE Entrenar el Naive Bayes Classifier (Scratch)
# La meta del entrenamiento es obtener las probabilidades a priori y condicionales
# Calcular las pob CONDICIONALES
calcular_probabilidades = function(data,clase){
  total <- nrow(data)
  #Suavizacion de Laplace: nos ayuda a evitar la probabilidad de cero
  # Prob condicional (no se aplica todavia el log)
  probs <- colSums(data[data$Sentimientos == clase, -ncol(data)])+1
  probs <- probs / (sum(probs)+ncol(data)-1)
  return(probs)
  }

# obtener las prob CONDICIONAL
probs_felices <- calcular_probabilidades(train_data,"feliz")
probs_tristes <- calcular_probabilidades(train_data,"triste")

# calcular las probabilidades
priori_feliz <- sum(train_data$Sentimientos == "feliz")/nrow(train_data)
priori_triste <- sum(train_data$Sentimientos == "triste")/nrow(train_data)

### Paso 4b. CONSULTA Naive Bayes Clasifier (Scratch)
predicciones <- function(vector_binario,probs_felices,probs_tristes,priori_feliz,
                     priori_triste){
  #(1-vector_binario)*log(1-probs_felices)) Verificar la ausencia de 
  #ciertas palabras en dicha categoria
  log_prob_feliz <- log(priori_feliz) +sum(vector_binario*log(probs_felices)+
    (1-vector_binario)*log(1-probs_felices))
  log_prob_triste <- log(priori_triste) +sum(vector_binario*log(probs_tristes)+
      (1-vector_binario)*log(1-probs_tristes))
  inferencia <- ifelse(log_prob_feliz>log_prob_triste, "feliz","triste")
  return(inferencia)
}

# obtener predicciones
predicciones <- apply(test_data[,-ncol(test_data)],1,predicciones,probs_felices,probs_tristes,
                      priori_feliz, priori_triste)

# evaluar el NBC mediante la matriz de confusión
table(predicciones,test_data$Sentimientos)

### Paso 5. Calcular la presicion del modelo aprendido
rendimiento <- sum(predicciones==test_data$Sentimientos)/nrow(test_data)
rendimiento