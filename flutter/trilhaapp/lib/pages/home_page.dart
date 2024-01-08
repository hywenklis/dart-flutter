import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/services/gerador_numero_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final Text title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int numero = 0;
  int quantidadeCliques = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: widget.title,
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Foi clicado $quantidadeCliques vezes",
              style: GoogleFonts.notoSerifGrantha(fontSize: 20),
            ),
            Text(
              "O número gerado foi: $numero",
              style: GoogleFonts.notoSerifGrantha(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  color: Colors.blue,
                  child: Text(
                    "10",
                    style: GoogleFonts.acme(fontSize: 20),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  color: Colors.amber,
                  child: Text(
                    "20",
                    style: GoogleFonts.acme(fontSize: 20),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  color: Colors.green,
                  child: Text(
                    "30",
                    style: GoogleFonts.acme(fontSize: 20),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              quantidadeCliques = quantidadeCliques + 1;
              numero = GeradorNumero.aleatorio(1000);
            });
          },
          child: const Icon(Icons.add_box)),
    );
  }
}
