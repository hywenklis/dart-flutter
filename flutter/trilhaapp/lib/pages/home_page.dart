import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/Pagina1.dart';
import 'package:trilhaapp/pages/Pagina2.dart';
import 'package:trilhaapp/pages/Pagina3.dart';
import 'package:trilhaapp/pages/dados_cadastrais.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  var pageController = PageController(initialPage: 0);
  var posicaoPagina = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu App", style: TextStyle(color: Colors.white)),
      ),
      drawer: Drawer(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              width: double.infinity,
              child: InkWell(
                child: const Text("Dados cadastrais"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const DadosCadastraisPageMyWidget(
                                text: "Cadastro",
                              )));
                },
              ),
            ),
            const Divider(),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              width: double.infinity,
              child: InkWell(
                child: const Text("Termos de uso e privacidade"),
                onTap: () {},
              ),
            ),
            const Divider(),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              width: double.infinity,
              child: InkWell(
                child: const Text("Configurações"),
                onTap: () {},
              ),
            ),
          ],
        ),
      )),
      body: Column(
        children: [
          Expanded(
            child: PageView(
                controller: pageController,
                onPageChanged: (value) => setState(() {
                      posicaoPagina = value;
                    }),
                children: const [
                  Pagina1MyWidget(),
                  Pagina2MyWidget(),
                  Pagina3MyWidget()
                ]),
          ),
          BottomNavigationBar(
              onTap: (value) => pageController.jumpToPage(value),
              currentIndex: posicaoPagina,
              items: const [
                BottomNavigationBarItem(label: "Pag1", icon: Icon(Icons.home)),
                BottomNavigationBarItem(label: "Pag1", icon: Icon(Icons.add)),
                BottomNavigationBarItem(
                    label: "Pag1", icon: Icon(Icons.person)),
              ])
        ],
      ),
    );
  }
}
