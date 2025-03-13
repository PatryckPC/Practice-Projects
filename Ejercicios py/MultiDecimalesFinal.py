#programa que multiplica dos numeros

#Listas
sumafinal=[]
acarreofinal=[]
resultadofinaltemporal=[]


#------------- Pedimos los datos ----------------------#

numero1=input("Dame el entero del primer numero: ")

decimal1=input("Dame el decimal del primer numero: ")
longituddecimal1=len(decimal1)

numero2=input("Dame el entero del segundo numero: ")

decimal2=input("Dame el decimal del segundo numero: ")
longituddecimal2=len(decimal2)

longituddecimal = longituddecimal1+longituddecimal2

#------------- juntamos la parte decimal con la entera para hacer las operaciones con el numero--------#
#------------- completo y separarlos al final ---------------------------------------------------------#

numero1 = numero1+decimal1
longitudnumero1=len(numero1)

numero2 = numero2+decimal2
numero2=int(numero2)

c=0

#necesitamos que sean iguales en longitud

for i in range(1,(longitudnumero1)+1):
    
    #necesitamos sacar el primer par de digitos
    #de numero 1 sacamos el ultimo digito
    a=numero1[i*(-1)]
    a=int(a)
    b=0
    
#----------------Aqui se suman x cantidad de veces los digitos----------------#

    for j in range(0,numero2):
        b=b+a
        b=int(b)

    if (b+c)>9:
        resultado=b+c
        resultado=str(resultado)
        longitudresultado=len(resultado)

        r=resultado[1*(-1)]
        r=int(r)
        c=""

        for k in range((longitudresultado),1,-1):
            rs=resultado[-k*(1)]
            c=c+rs

        c=int(c)
        print("El acarreo es: ",c) 
        print("el resultante es: ",r)
        sumafinal.append(r)

    else:
        resultado=b+c
        c=0
        print("el resultante es: ",resultado)
        print("el acarreo es: ",c)
        sumafinal.append(resultado)
        
        
if (c>=1):
    
    acarreofinal.append(c)
    c=str(c)
    for i in range(1,len(c)+1):   
            c1=c[-i*(1)]
            c1=int(c1)
            sumafinal.append(c1)
            
    sumafinal.reverse()
    resultadofinaltemporal = sumafinal
            
            
else:
    
    sumafinal.reverse()
    resultadofinaltemporal = sumafinal
            
            
            
#------------------Esto imprime el resultado separando la parte decimal de la normal con un "."-----------------------#


for i in range(0,len(resultadofinaltemporal)-longituddecimal):
        print (resultadofinaltemporal[i],end="")
        
print (".",end="")
        
for i in range(len(resultadofinaltemporal)-longituddecimal,len(resultadofinaltemporal)):
        print (resultadofinaltemporal[i],end="")
        


