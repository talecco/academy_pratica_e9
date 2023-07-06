import 'dart:io';

Future<void> buscarDados() async {
  print('Iniciando a busca de dados...');
  final nome = File('nomes.txt');
  final numeros = File('numeros.txt');
  try {
    // Simulação de uma busca de dados assíncrona
    await Future.delayed(Duration(seconds: 2));

    print('Busca em andamento...');

    // Simulação de uma busca de dados assíncrona
    await Future.delayed(Duration(seconds: 2));

    print('Busca concluída. Dados encontrados.');
    nome.readAsString().then((value) => print(value));
    numeros.readAsString().then((value) => print(value));
    // Simulação de uma operação com os dados encontrados
    await Future.delayed(Duration(seconds: 2));

    print('Operação concluída.');
  } catch (e) {
    print('Erro durante a busca de dados: $e');
  }
}

void main() {
  buscarDados();
}
