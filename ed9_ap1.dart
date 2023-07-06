import 'dart:async';

Future<String> consultarAPI(String codigoRastreamento) async {
  await Future.delayed(Duration(seconds: 2));

  // Simulacao de consulta a API com codigo de rastreamento
  if (codigoRastreamento == 'ABC123') {
    return 'Em transito';
  } else if (codigoRastreamento == 'XYZ789') {
    return 'Entregue';
  } else if (codigoRastreamento == 'DEF456') {
    return 'Atrasado';
  } else {
    return 'Codigo de rastreamento invalido';
  }
}

Future<String> verificarStatusEntrega(String codigoRastreamento) async {
  String status = await consultarAPI(codigoRastreamento);
  return 'Status de entrega do pacote $codigoRastreamento: $status';
}

Future<void> main() async {
  print('Início');
  print(await verificarStatusEntrega('ABC123'));
  print(await verificarStatusEntrega('XYZ789'));
  print(await verificarStatusEntrega('DEF456'));
  print('Fim');
}
