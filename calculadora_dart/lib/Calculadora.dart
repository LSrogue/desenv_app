import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //nada deve ser adicionado depois do return, pois não será lido.
      appBar: new AppBar(
        title: new Text(":: Calculadora Simples ::"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Resultado do cálculo
            new Text(
              "Resultado: $resultado",
              style: new TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),

            // Campo de texto do valor 1 - input
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 1"),
              controller: t1,
            ),

            // Campo de texto do valor 2 - input
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 2"),
              controller: t2,
              // controler t2
            ),

            new Padding(padding: const EdgeInsets.only(top: 20)),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "+",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: somar,
                )
              ],
            ),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("-"),
                  color: Colors.blueAccent,
                  onPressed: subtrair,
                )
              ],
            ),

            // espaçamento depois dos botões
            new Padding(padding: const EdgeInsets.only(top: 20)),

            // botão limpar
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                    child: new Text("Limpar"),
                    color: Colors.grey,
                    onPressed: limpar)
              ],
            )
          ],
        ),
      ),
    );
  } // build

  // Atributos
  var num1;
  var num2;
  var resultado = 0;

  TextEditingController t1 = TextEditingController(text: "");
  TextEditingController t2 = TextEditingController(text: "");

  // Métodos
  void somar() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 + num2;
    });
  }

  void subtrair() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
    });
  }

  void limpar() {
    setState(() {
      t1.text = "";
      t2.text = "";
      resultado = 0;
    });
  }
}
