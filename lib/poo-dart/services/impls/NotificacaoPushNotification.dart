import 'package:fundamentos_da_linguagem_dart/poo-dart/services/NotificacaoInterface.dart';

import '../../classes/pessoa_abstract.dart';

class NotificacaoPushNotification implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando Push para: ${pessoa.getNome()}");
  }
}