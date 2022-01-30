//Universidad Tecnologica Metropolitana
//Desarrollo Movil Multiplataforma
//Maestro: Joel Ivan Chuc Uc
//Actividad 2 - Ejercicio 1
//Alumno: Jonathan Missael Sabido Reynoso
//5 C Parcial 1

import "dart:io";

void main() {

  var answer;
  double horas;
  double total;

  print("Ingrese las horas de trabajo");
  answer = stdin.readLineSync();
  horas = double.parse(answer);

  total = calcularSalario(horas);

  print('El salario es de: $total');

  if (horas < 27) {
    print('Se levantará un acta administrativa por falta de horas');
  }
}

double calcularSalario(double horas){

  double horas_extra;
  double salario_neto = 0;
  double salario_hora = 0;
  double salario_extra = 0;

  if (horas <= 40) {
    salario_neto = horas * 120;
  } else {
    salario_hora = 40 * 120;
    horas_extra = horas - 40;
    salario_extra = horas_extra * 175;
    salario_neto = salario_hora + salario_extra;
  }

  return salario_neto;
}
