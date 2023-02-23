import Foundation

//CONDICIONALES

//Ejercicio 1
let aa = 21.0, bb = 3.0
if Double(Int(aa/bb)) == aa/bb {
  print("Divisible")
} else {
  print("No divisible")
}

//Ejercicio 2
let diasBlanquillos = 25, diasTocino = 6

if diasBlanquillos >= 21 {
  if diasTocino >= 7 { print("Debe desechar ambos")
 } else { print("Deb  desechar los blanquillos")  }
} else if diasTocino >= 7 {
  print("Debe desechar el tocino")
} else {
  print("Ambos se pueden cocinar")
}

//Ejercicio 3
let numeroX = 7, numeroY = 23

if numeroX == numeroY {
  print("X es igual a Y. Res:", numeroX * numeroY)
} else if numeroX > numeroY {
  print("X es mayor que Y. Res:", numeroX - numeroY)
} else {
  print("X es menor que Y. Res:", numeroX + numeroY)
}

//Ejercicio 4
let anioNacimiento = 2024

if(anioNacimiento % 4 == 0) {
  print("Es bisiesto")
} else {
  print("No es bisiesto")
}

//Ejercicio 5
let a = 4, b = 3 , c = 3

if(a == b && b == c) {
  print("Todas las variables son iguales")
} else if(a == b || b == c || c == a) {
  print("Al menos dos variables son iguales")
} else {
  print("Todas las variables son diferentes")
}

//Ejercicio 6
let minutos = 2
var costoTotal = (minutos <= 3) 
  ? 5 
  : 5 + (minutos - 3) * 3

print("Costo total: $", costoTotal)

//Ejercicio 7
let num1 = 1, num2 = 2, num3 = 3, num4 = 4, num5 = 5
var suma = num1 + num2 + num3 + num4 + num5
var mayor = num1
var menor = num1

if num2 > mayor { mayor = num2 } else if num2 < menor { menor = num2 }
if num3 > mayor { mayor = num3 } else if num3 < menor { menor = num3 }
if num4 > mayor { mayor = num4 } else if num4 < menor { menor = num4 }
if num5 > mayor { mayor = num5 } else if num5 < menor { menor = num5 }

let promedio = Double(suma - mayor - menor) / 3.0

print("Mayor:", mayor)
print("Menor:", menor)
print("Promedio:", promedio)
