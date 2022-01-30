//Universidad Tecnologica Metropolitana
//Desarrollo Movil Multiplataforma
//Maestro: Joel Ivan Chuc Uc
//Actividad 2 - Ejercicio 3
//Alumno: Jonathan Missael Sabido Reynoso
//5 C Parcial 1

import "dart:io";

void main() {
  double altura;
  double peso;

  double imc;
  var answer;

  try{
    print("Ingrese la altura");
    answer = stdin.readLineSync();
    altura = double.parse(answer);

    print("Ingrese el peso");
    answer = stdin.readLineSync();
    peso = double.parse(answer);

    imc = calcularIMC(altura, peso);

    if (imc < 18.5) {
      print("IMC de $imc, Peso inferior al normal");
    }
    if (imc >= 18.5 && imc < 25) {
      print("IMC de $imc, Peso normal");
    }
    if (imc >= 25 && imc < 30) {
      print("IMC de $imc, Peso superior al normal");
    }
    if (imc >= 30) {
      print("IMC de $imc, Obesidad");
    }
  }
  catch(e){
    print(e);
    print('Ingrese datos válidos');
  }
}

double calcularIMC(double altura, double peso){

    double metros;
    double imc;
    metros = altura / 100;
    imc = peso / (metros * metros);

    return imc;
}
