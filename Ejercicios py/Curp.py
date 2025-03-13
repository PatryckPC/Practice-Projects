#Patryck Yael Poumian Camacho#
#Codigo que imprime curp a partir de ciertos datos del usuario#
import random

# Lista de la curp #
CURP = []

# Pedimos los datos #
print("POR FAVOR ESCRIBA TODO EN MAYUSCULAS Y SIN ACENTOS")
nombre = input("INSERTE NOMBRE(S): ")
apellido1 = input("INSERTE PRIMER APELLIDO: ")
apellido2 = input("INSERTE SEGUNDO APELLIDO: ")
dia = input("INSERTE DIA DE NACIMIENTO: ")
mes = input("INSERTE MES DE NACIMIENTO: ")
año = input("INSERTE AÑO DE NACIMIENTO: ")
sexo = input("INSERTE SEXO: ")
estado = input("INSERTE ESTADO: ")

#Primeros 2 digitos#
CURP.append(apellido1[0])
vocales = "AEIOU"
i = 0
while (apellido1[i] not in vocales):
    i = i+1
CURP.append(apellido1[i])

#Digitos de segundo apellido y nombre#
CURP.append(apellido2[0])
CURP.append(nombre[0])

#Fecha de nacimiento (6 digitos)#
CURP.append(año[-2])
CURP.append(año[-1])
CURP.append(mes[-2])
CURP.append(mes[-1])
CURP.append(dia[-2])
CURP.append(dia[-1])

#Sexo#
CURP.append(sexo[0])

#Estado#
if (estado == "AGUSCALIENTES"):
    estado = "AS"
if (estado == "BAJA CALIFORNIA"):
    estado = "BC"
if (estado == "BAJA CALIFORNIA SUR"):
    estado = "BS"
if (estado == "CAMPECHE"):
    estado = "CC"
if (estado == "CHIAPAS"):
    estado = "CS"
if (estado == "CHIHUAHUA"):
    estado = "CH"
if (estado == "CIUDAD DE MEXICO"):
    estado = "DF"
if (estado == "COAHUILA"):
    estado = "CL"
if (estado == "COLIMA"):
    estado = "CM"
if (estado == "DURANGO"):
    estado = "DG"
if (estado == "GUANAJUATO"):
    estado = "GT"
if (estado == "GUERRERO"):
    estado = "GR"
if (estado == "HIDALGO"):
    estado = "HG"
if (estado == "JALISCO"):
    estado = "JC"
if (estado == "ESTADO DE MÉXICO"):
    estado = "MC"
if (estado == "MICHOACAN"):
    estado = "MN"
if (estado == "MORELOS"):
    estado = "MS"
if (estado == "NAYARIT"):
    estado = "NT"
if (estado == "NUEVO LEON"):
    estado = "NL"
if (estado == "OAXACA"):
    estado = "OC"
if (estado == "PUEBLA"):
    estado = "PL"
if (estado == "QUERETARO"):
    estado = "QO"
if (estado == "QUINTANA ROO"):
    estado = "QR"
if (estado == "SAN LUIS POTOSI"):
    estado = "SP"
if (estado == "SINALOA"):
    estado = "SL"
if (estado == "SONORA"):
    estado = "SR"
if (estado == "TABASCO"):
    estado = "TC"
if (estado == "TAMAULIPAS"):
    estado = "TS"
if (estado == "TLAXCALA"):
    estado = "TL"
if (estado == "VERACRUZ"):
    estado = "VZ"
if (estado == "YUCATAN"):
    estado = "YN"
if (estado == "ZACATECAS"):
    estado = "ZS"
CURP.append(estado)

#Penultimos 3 digitos#
consonantes = "BCDFGHJKLMNÑPQRSTVWXYZ"
i = 1
while (apellido1[i] not in consonantes):
    i = i+1
CURP.append(apellido1[i])

i = 1
while (apellido2[i] not in consonantes):
    i = i+1
CURP.append(apellido2[i])

i = 1
while (nombre[i] not in consonantes):
    i = i+1
CURP.append(nombre[i])

#Ultimos dos digitos aleatorios#

letras= ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","Ñ","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
random1 = letras [random.randint(0,26)]
random2 = random.randint(0,9)

CURP.append(random1)
CURP.append(random2)


print(CURP)