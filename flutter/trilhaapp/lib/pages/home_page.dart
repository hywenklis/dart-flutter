import 'package:flutter/material.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
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
                onTap: () {},
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
    );
  }
}
