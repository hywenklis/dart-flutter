import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:trilhaapp/repositories/linguagens_repository.dart';
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
  var linguagemRepository = LinguagemRepository();
  var niveis = [];
  var linguagens = [];
  var nivelSelecionado = "";
  var linguagemSelecionadas = [];
  double salarioEscolhido = 0;
  int tempoExperiencia = 1;
  bool salvando = false;

  @override
  void initState() {
    niveis = nivelRepository.retornaNiveis();
    linguagens = linguagemRepository.retornaLinguagensPreferidas();
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
        child: salvando
            ? const Center(child: CircularProgressIndicator())
            : ListView(
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
                  const TextLabelMyWidget(text: "Linguagens Preferidas"),
                  Column(
                    children: linguagens
                        .map((linguagem) => CheckboxListTile(
                            dense: true,
                            title: Text(linguagem.toString()),
                            value: linguagemSelecionadas.contains(linguagem),
                            onChanged: (value) {
                              value!
                                  ? setState(() =>
                                      linguagemSelecionadas.add(linguagem))
                                  : setState(() =>
                                      linguagemSelecionadas.remove(linguagem));
                            }))
                        .toList(),
                  ),
                  const TextLabelMyWidget(text: "Tempo de Experiência"),
                  DropdownButton(
                      value: tempoExperiencia,
                      isExpanded: true,
                      items: const [
                        DropdownMenuItem(value: 1, child: Text("1")),
                        DropdownMenuItem(value: 2, child: Text("2")),
                        DropdownMenuItem(value: 3, child: Text("3"))
                      ],
                      onChanged: (value) {
                        setState(() {
                          tempoExperiencia = value!.toInt();
                        });
                      }),
                  TextLabelMyWidget(
                      text:
                          "Preferência Salarial. R\$ ${salarioEscolhido.round().toString()}"),
                  Slider(
                      min: 0,
                      max: 10000,
                      value: salarioEscolhido,
                      onChanged: (value) {
                        setState(() {
                          salarioEscolhido = value;
                        });
                      }),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          salvando = false;
                        });

                        debugPrint("nome=${nomeController.text}");
                        debugPrint(
                            "dataNascimento=${dataNascimentoController.text}");
                        debugPrint("nivel=$nivelSelecionado");
                        debugPrint("linguagens=$linguagemSelecionadas");
                        debugPrint("tempoExperiencia=$tempoExperiencia");
                        debugPrint("salario=$salarioEscolhido");

                        setState(() {
                          salvando = true;
                        });

                        Future.delayed(const Duration(seconds: 3), () {
                          setState(() {
                            salvando = false;
                          });
                        });
                      },
                      child: const Text("Salvar")),
                ],
              ),
      ),
    );
  }
}
