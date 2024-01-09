import 'package:flutter/material.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key, required this.title});

  final Text title;

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  Expanded(
                    flex: 8,
                    child: Image.network(
                        "https://hermes.digitalinnovation.one/assets/diome/logo.png"),
                  ),
                  Expanded(child: Container())
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Ja tem cadastro?",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              const Text(
                "Faça seu login e make the change._",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Text(
                          "Informe seu email:",
                          style: TextStyle(color: Colors.white),
                        )),
                    Expanded(
                        flex: 3,
                        child: Text(
                          "Email",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Text(
                          "Informe a senha:",
                          style: TextStyle(color: Colors.white),
                        )),
                    Expanded(
                        flex: 3,
                        child: Text("Senha",
                            style: TextStyle(color: Colors.white))),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.center,
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepPurple)),
                    child: const Text(
                      "ENTRAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: const Text(
                  "Esqueci minha senha",
                  style: TextStyle(
                      color: Colors.yellow, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: const Text(
                  "Criar conta",
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
