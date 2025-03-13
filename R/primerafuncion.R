factorial = function(n){
  res = 1
  for (i in 1:n){
    res = res * i
  }
  return(res)
}

factorial(4)

# funcion de lanzamiento de un dado 
fndado = function(n){
  cara = sample(1:n,1)
  return(cara)
}
nlanzamientos = 5000
Res = rep(NA,nlanzamientos)
for (i in 1:nlanzamientos){
  Res[i] = fndado(6)
}
windows()
hist(Res)