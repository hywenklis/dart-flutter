import 'package:flutter/material.dart';
import 'package:trilhaapp/repositories/nivel_repository.dart';
import 'package:trilhaapp/shared/widgets/text_label.dart';

class DadosCadastraisPageMyWidget extends StatefulWidget {
  const DadosCadastraisPageMyWidget({super.key});

  @override
  State<DadosCadastraisPageMyWidget> createState() =>
      _DadosCadastraisPageMyWidgetState();
}

class _DadosCadastraisPageMyWidgetState
    extends State<DadosCadastraisPageMyWidget> {
  var nomeController = TextEditingController(text: "");
  var dataNascimentoController = TextEditingController(text: "");
  DateTime? dataNascimento;
  var nivelRepository = NivelRepository();
  var niveis = [];
  var nivelSelecionado = "";

  @override
  void initState() {
    niveis = nivelRepository.retornaNiveis();
    super.initState();
  }

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
            const TextLabelMyWidget(text: "Nome"),
            TextField(
              controller: nomeController,
            ),
            const TextLabelMyWidget(text: "Data de Nascimento"),
            TextField(
              controller: dataNascimentoController,
              readOnly: true,
              onTap: () async {
                var data = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now());

                if (data != null) {
                  dataNascimentoController.text = data.toString();
                  dataNascimento = data;
                }
              },
            ),
            const TextLabelMyWidget(text: "Nivel de Experiência"),
            Column(
              children: niveis
                  .map((nivel) => RadioListTile(
                      dense: true,
                      title: Text(nivel.toString()),
                      value: nivel.toString(),
                      selected: nivelSelecionado == nivel.toString(),
                      groupValue: nivelSelecionado,
                      onChanged: (value) {
                        setState(() {
                          nivelSelecionado = value.toString();
                        });
                      }))
                  .toList(),
            ),
            TextButton(
                onPressed: () {
                  debugPrint(nomeController.text);
                },
                child: const Text("Salvar")),
          ],
        ),
      ),
    );
  }
}
