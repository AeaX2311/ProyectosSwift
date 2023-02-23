import Foundation

//OPERADORES

//Ejercicio 1
let edadSparky = 42
let edadHumanoSparky = edadSparky / 7
print("Edad Sparky: ", edadSparky)
print("Edad Humano: ", edadHumanoSparky)

//Ejercicio 2
let manzanasTotales = 17
let naranjasIntercambio = manzanasTotales / 5 * 3
let manzanasRestantes = manzanasTotales % 5

print("Naranjas obtenidas: ", naranjasIntercambio)
print("Manzanas restantes: ", manzanasRestantes)

//Ejercicio 3
let valorX = 5.0
let valorX3 = valorX * valorX * valorX
let valorX2 = valorX * valorX
let parte1 = 4 * valorX3
let parte2 = 2 * valorX2
let parte3 = 6 * valorX
let valorY = parte1 + parte2 + parte3 - 5

print("Y = 4(", valorX, ")^3+2(",valorX,")^2+6(",valorX,")-5")
print("Y = 4(", valorX3, ")+2(",valorX2,")+",parte3,"-5")
print("Y = ", parte1, "+",parte2,"+",parte3,"-5")
print("Y = ", valorY)

//Ejercicio 4
let valorA = 2.0
let valorB = 3.0
let resultado = pow(valorA + valorB, 2) / 3

print("Resultado:", Int(resultado))

//Ejercicio 5
let ancho = 8, alto = 4, x = 2, y = 2
let xx = ancho - x, yy = alto - y
let perimetroFigura = ancho + alto + x + y + xx + yy
let areaFigura = (ancho * y) + (x * yy)

print("Perimetro:", perimetroFigura)
print("Area:", areaFigura)

//Ejercicio 6
let cilRadio = 7.0, cilAlt = 14.0, pi = Double.pi
let volumen = pi * pow(cilRadio, 2) * cilAlt

print("Volumen:", Double(round(100 * volumen) / 100))
