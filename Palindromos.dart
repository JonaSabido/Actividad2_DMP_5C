//Universidad Tecnologica Metropolitana
//Desarrollo Movil Multiplataforma
//MNaestro: Joel Ivan Chuc Uc
//Actividad 2 - Ejercicio 4
//Alumno: Jonathan Missael Sabido Reynoso
//5 C Parcial 1

import "dart:io";

main() {
  var frase;
  String frase_sin_espacios = '';
  String frase_inversa = '';
  int num_palabras;

  print("Frase: ");
  frase = stdin.readLineSync();
  frase = frase.toLowerCase();

  for (int x = 0; x <= (frase.length - 1); x++) {
    if (frase[x] != ' ') {
      frase_sin_espacios = frase_sin_espacios + frase[x];
    }
  }

  for (int x = (frase.length - 1); x >= 0; x--) {
    if (frase[x] != ' ') {
      frase_inversa = frase_inversa + frase[x];
    }
  }

  
  if (comprobarPalindromo(frase_sin_espacios, frase_inversa) == true) {

    print('Si es palindromo');

    num_palabras = contarPalabras(frase);

    print('Numero de palabras: $num_palabras');
  } else {
    print('No es palindromo');
  }

}

bool comprobarPalindromo(String frase, String frase_inversa){
    bool palindromo = true;

    for (int x = 0; x <= (frase.length - 1); x++) {
    if (frase[x] == frase_inversa[x]) {
      palindromo = true;
    } else {
      palindromo = false;
      break;
    }
  }

  return palindromo;
}

int contarPalabras(String frase){

  int num_palabras = 0;
  String caracter = ' ';

  for (int x = 0; x <= (frase.length - 1); x++) {
      if (x < (frase.length - 1)) {
        if (frase[x] == ' ' && frase[x - 1] != ' ' && frase[x + 1] != ' ') {
            num_palabras = num_palabras + 1;
        }

        
      }
      if(frase[x] != ' '){
        caracter = frase[x];
      }
      if(x == (frase.length-1) && caracter != ' '){
          num_palabras = num_palabras+1;
        }

    }

  return num_palabras;
}
