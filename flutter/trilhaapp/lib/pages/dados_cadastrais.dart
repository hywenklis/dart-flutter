import 'package:flutter/material.dart';

class DadosCadastraisPageMyWidget extends StatefulWidget {
  const DadosCadastraisPageMyWidget({super.key});

  @override
  State<DadosCadastraisPageMyWidget> createState() =>
      _DadosCadastraisPageMyWidgetState();
}

class _DadosCadastraisPageMyWidgetState
    extends State<DadosCadastraisPageMyWidget> {
  var nomeController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meus Dados"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Nome",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            TextField(
              controller: nomeController,
            ),
            TextButton(
                onPressed: () {
                  debugPrint(nomeController.text);
                },
                child: const Text("Salvar"))
          ],
        ),
      ),
    );
  }
}
