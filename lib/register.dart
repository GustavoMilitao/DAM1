import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _mostrarSenha = false;
  String _generoSelecionado = '';
  bool _notificacoesEmail = false;
  bool _notificacoesTelefone = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromRGBO(143, 148, 251, 1),
                          ),
                        ),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.name,
                        maxLength: 100, // Limite de caracteres
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          counterText: "",
                          hintText: "Nome",
                          hintStyle: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromRGBO(143, 148, 251, 1),
                          ),
                        ),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Data de Nascimento",
                          hintStyle: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromRGBO(143, 148, 251, 1),
                          ),
                        ),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        maxLength: 11, // Limite de caracteres
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          counterText: "",
                          hintText: "Telefone",
                          hintStyle: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromRGBO(143, 148, 251, 1),
                          ),
                        ),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "E-mail",
                          hintStyle: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromRGBO(143, 148, 251, 1),
                          ),
                        ),
                      ),
                      child: TextField(
                        obscureText: !_mostrarSenha,
                        maxLength: 20, // Limite de caracteres
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          counterText: "",
                          hintText: "Senha",
                          hintStyle: TextStyle(color: Colors.grey[700]),
                          suffixIcon: IconButton(
                            icon: Icon(_mostrarSenha
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _mostrarSenha = !_mostrarSenha;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Gênero',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Radio(
                        value: 'Masculino',
                        groupValue: _generoSelecionado,
                        onChanged: (value) {
                          setState(() {
                            _generoSelecionado = value.toString();
                          });
                        },
                      ),
                      Text('Masculino'),
                      Radio(
                        value: 'Feminino',
                        groupValue: _generoSelecionado,
                        onChanged: (value) {
                          setState(() {
                            _generoSelecionado = value.toString();
                          });
                        },
                      ),
                      Text('Feminino'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Switch(
                    value: _notificacoesEmail,
                    onChanged: (value) {
                      setState(() {
                        _notificacoesEmail = value;
                      });
                    },
                  ),
                  const Text('Ativar Notificações via E-mail'),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Switch(
                    value: _notificacoesTelefone,
                    onChanged: (value) {
                      setState(() {
                        _notificacoesTelefone = value;
                      });
                    },
                  ),
                  const Text('Ativar Notificações via Telefone'),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Center(
                  child: TextButton(
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size.fromHeight(50)),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(143, 148, 251, 1)),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Cadastrar",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
