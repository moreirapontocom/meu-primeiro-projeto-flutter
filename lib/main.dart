import 'package:flutter/material.dart';

void main() {

  runApp(MaterialApp(
    title: "Hello World",
    home: MyHomeStatefull()
  ));

}

class MyHomeStatefull extends StatefulWidget {
  @override
  _MyHomeStatefullState createState() => _MyHomeStatefullState();
}

class _MyHomeStatefullState extends State<MyHomeStatefull> {

  var _nome = "World";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            Text("Hello $_nome"),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _nome = "Lucas";
                });
              },
              child: Text("Clique aqui"),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amberAccent,
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("1"),
              Text("2"),
              Text("3"),
            ],
          ),
        ),
      ),
    );
  }
}


class MyHomeStatless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Text("Conteúdo principal stateless"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amberAccent,
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("1"),
              Text("2"),
              Text("3"),
            ],
          ),
        ),
      ),
    );
  }
}