def multiplicacion(numero1,numero2,decimalesnumero1,decimalesnumero2):
    partedecimal=[]
    parteentera=[]

    #numero1=input("dame el primer numero: ")
    numero1=int(numero1)
    #numero2=input("dame el segundo numero: ")
    numero2=int(numero2)

    resultado=0

    for i in range(numero2):
        resultado=resultado+numero1
        
    print("El resultado es: ",resultado)

    resultado=str(resultado)
    longitudresultado=len(resultado)

    #decimalesnumero1=input("cuantos decimales tiene el primer numero: ")
    decimalesnumero1=int(decimalesnumero1)
    #decimalesnumero2=input("cuantos decimales tiene el primer numero: ")
    decimalesnumero2=int(decimalesnumero2)

    decimalfinal=decimalesnumero1+decimalesnumero2

    if decimalfinal==0:
        for j in range(0,longitudresultado):
            digitoentero=resultado[(j+1)*-1]
            parteentera.append(digitoentero)
        partedecimal.append("0")

    while decimalfinal>longitudresultado:
        resultado="0"+resultado
        longitudresultado=longitudresultado+1
        

    for i in range(1,decimalfinal+1):
        digitodecimal=resultado[i*-1]
        partedecimal.append(digitodecimal)
        
    for j in range(i,longitudresultado):
        digitoentero=resultado[(j+1)*-1]
        parteentera.append(digitoentero)

    parteentera.reverse()
    partedecimal.reverse()

    if parteentera==[]:
        parteentera.append("0")
    print("El resultado es: ",parteentera," . ",partedecimal)
    return parteentera,partedecimal

    #falta la parte entera


        


        
        

