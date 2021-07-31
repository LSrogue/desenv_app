import 'package:flutter/material.dart';

class StackPilha extends StatefulWidget {
  @override
  State createState() => new StackState();
}

class StackState extends State<StackPilha> {
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
        body: new Stack(
          children: [
            // quarto elemento
            new Container(
              margin: EdgeInsets.only(top: 175),
              padding: EdgeInsets.all(10),
              width: 150,
              height: 250,
              color: Colors.redAccent,
              child: new Text("Quarto elemento - fogo"),
            ),

            // Terceiro elemento
            new Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                width: 300,
                height: 400,
                color: Colors.blueAccent,
                child: new Text(
                  "Tericeiro elemento - água",
                  style: new TextStyle(fontSize: 32),
                )),

            // Segundo elemento
            new Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                width: 250,
                height: 350,
                color: Colors.green,
                child: new Text("Segundo elemento - terra")),

            // Primeiro elemento
            new Container(
                margin: EdgeInsets.all(75),
                padding: EdgeInsets.all(10),
                width: 200,
                height: 300,
                color: Colors.purpleAccent,
                child: new Text("Primeiro elemento - ar"))
          ],
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
