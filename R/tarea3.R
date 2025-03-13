euclidiana = function(x1,y1,x2,y2){
  res = sqrt((x2 - x1)^2+(y2 - y1)^2)
    
  return(res)
}

euclidiana(2,1,5,4)

fibbonacci = function(n){
  p1=0
  p2=1
  print(p1)
  print(p2)
  for (i in 1:n){
    p3 = p2
    p2 = p1 + p2
    print(p2)
    p1 = p3
  }
}

fibbonacci(100)

factorial_recursivo <- function(n) {
  res = 1
  if (n == 0 || n == 1) {
    print(1)
  } else {
    for (i in 2:n){
      res = res * i
    }
    print(res)
    } 
}

factorial_recursivo(4)