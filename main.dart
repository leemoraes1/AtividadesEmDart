import 'dart:io'; // Importa o pacote para ler a entrada do usuário do terminal

void main() {
  // Solicita ao usuário o comprimento do primeiro lado
  print("Digite o comprimento do primeiro lado:");
  double lado1 = double.parse(stdin.readLineSync()!); // Lê e converte a entrada para um número de ponto flutuante

  // Solicita ao usuário o comprimento do segundo lado
  print("Digite o comprimento do segundo lado:");
  double lado2 = double.parse(stdin.readLineSync()!); // Lê e converte a entrada para um número de ponto flutuante

  // Solicita ao usuário o comprimento do terceiro lado
  print("Digite o comprimento do terceiro lado:");
  double lado3 = double.parse(stdin.readLineSync()!); // Lê e converte a entrada para um número de ponto flutuante

  // Verifica se os lados formam um triângulo válido
  if (ehTrianguloValido(lado1, lado2, lado3)) {
    // Classifica o triângulo e armazena o resultado
    String tipo = classificarTriangulo(lado1, lado2, lado3);
    // Imprime o tipo do triângulo
    print("O triângulo é $tipo.");
  } else {
    // Informa que os lados não formam um triângulo válido
    print("Os lados informados não formam um triângulo válido.");
  }
}

// Função que verifica se os lados formam um triângulo válido
bool ehTrianguloValido(double a, double b, double c) {
  // Verifica a condição de validade do triângulo
  return (a + b > c) && (a + c > b) && (b + c > a);
}

// Função que classifica o triângulo com base nos lados
String classificarTriangulo(double a, double b, double c) {
  // Verifica se todos os lados são iguais
  if (a == b && b == c) {
    return "equilátero"; // Triângulo equilátero: todos os lados são iguais
  } 
  // Verifica se pelo menos dois lados são iguais
  else if (a == b || b == c || a == c) {
    return "isósceles"; // Triângulo isósceles: dois lados são iguais
  } 
  // Caso contrário, todos os lados são diferentes
  else {
    return "escaleno"; // Triângulo escaleno: todos os lados são diferentes
  }
}
