//Universidad Tecnologica Metropolitana
//Desarrollo Movil Multiplataforma
//Maestro: Joel Ivan Chuc Uc
//Actividad 2 - Ejercicio 2
//Alumno: Jonathan Missael Sabido Reynoso
//5 C Parcial 1

import "dart:io";

void main() {

  
  try{
    int decimal;
    var answer;
    String binario;

    print("Ingrese el numero decimal: ");
    answer = stdin.readLineSync();
    decimal = int.parse(answer);

    binario = calcularBinario(decimal);

    print('Núero binario: $binario');
  }
  catch(e){
    print(e);
    print('Ingrese un número válido');
  }

}

String calcularBinario(int decimal){

    int mod;
    String binario = '';

    while (decimal != 0) {
      mod = decimal % 2;
      decimal = (decimal / 2).toInt();
      binario = '$mod' + binario;
    }

    return binario;

}