import 'package:flutter/material.dart';

class Validacao extends StatefulWidget {
  @override
  State createState() => new ValidacaoState();
}

class ValidacaoState extends State<Validacao> {
  final chave = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // barra título
        appBar: AppBar(title: new Text("Stack Pilha")),

        // menu lateral
        drawer: new Drawer(
            // list view "itens do menu"
            ),

        // corpo do app
        body: new Form(
          key: chave,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new TextFormField(validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Por favor preencha os campos";
                }

                return null;
              }),
              new Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: new ElevatedButton(
                  child: new Text("Enviar"),
                  onPressed: () {
                    // verifica se o retorno do formulário é válido
                    if (chave.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Processando o pedido")));
                    }
                  },
                ),
              )
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: [
            // Ícone Home
            BottomNavigationBarItem(label: "Home", icon: new Icon(Icons.home)),

            // Ícone Sair
            BottomNavigationBarItem(label: "Sair", icon: new Icon(Icons.logout))
          ],
        ),
      ),
    );
  }
}
