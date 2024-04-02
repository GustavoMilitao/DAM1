import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'register.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color.fromRGBO(52, 62, 255, 1)),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color:
                                            Color.fromRGBO(143, 148, 251, 1)))),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Login",
                                  hintStyle:
                                      TextStyle(color: Colors.grey[700])),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              obscureText: true,
                              onChanged: (value) => {},
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Senha",
                                  hintStyle:
                                      TextStyle(color: Colors.grey[700])),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 50,
                      child: Center(
                        child: TextButton(
                          style: const ButtonStyle(
                              minimumSize:
                                  MaterialStatePropertyAll(Size.fromHeight(50)),
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromRGBO(143, 148, 251, 1))),
                          onPressed: () {},
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Esqueceu sua senha?',
                              style: const TextStyle(
                                  color: Color.fromRGBO(143, 148, 251, 1)),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Não possui uma conta? ',
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: 'Cadastre-se',
                              style: const TextStyle(
                                  color: Color.fromRGBO(143, 148, 251, 1)),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Cadastro()), // Navega para a tela de cadastro
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
