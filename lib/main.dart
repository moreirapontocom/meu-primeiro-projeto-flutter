import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Frases do dia",
    home: FrasesDoDia(),
  ));
}

class FrasesDoDia extends StatefulWidget {
  @override
  _FrasesDoDiaState createState() => _FrasesDoDiaState();
}

class _FrasesDoDiaState extends State<FrasesDoDia> {

  var _fraseAtual = "Clique no botão para gerar uma frase";

  List<String> _frases = [
    "Frase 1",
    "Segunda frase",
    "Minha terceira frase"
  ];

  void _gerarFrase() {

    int _numeroAleatorio = Random().nextInt( _frases.length );

    setState(() {
      print("Clicou no botão");
      _fraseAtual = _frases[_numeroAleatorio];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Frases do Dia"),
      ),
      body: Container(
        width: double.infinity, // 100% da largura da tela. Ou usar o widget Center(Container())
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
              _fraseAtual,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.normal
              ),
            ),
            RaisedButton(
              onPressed: _gerarFrase,
              color: Colors.green,
              child: Text(
                "Nova Frase",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}