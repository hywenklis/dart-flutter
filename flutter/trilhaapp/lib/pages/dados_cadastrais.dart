import 'package:flutter/material.dart';

class DadosCadastraisPageMyWidget extends StatelessWidget {
  final String text;
  const DadosCadastraisPageMyWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
      ),
      body: const Center(
        child: Text("Dados Cadastrais"),
      ),
    );
  }
}
