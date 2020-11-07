import 'package:flutter/material.dart';

void main() {
  runApp(TapiaApp());
}

class TapiaApp extends StatelessWidget {
  const TapiaApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "MiguelApp", home: Inicio());
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("MAGIC - MIGUEL", style: TextStyle(color: Colors.yellow)),
      ),
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
      color: Colors.lime,
      child: Column(
        children: [
          foto(),
          SizedBox(
            height: 10,
          ),
          button(),
          SizedBox(
            height: 10,
          ),
          suerte(),
        ],
      ));
}

Widget foto() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    child: Image.network(
        "https://c.files.bbci.co.uk/8E6D/production/_103916463_gettyimages-162257694.jpg"),
  );
}

Widget button() {
  return FlatButton(
    onPressed: () {},
    child: Text("Lucky"),
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
  );
}

Widget suerte() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Column(
        children: <Widget>[
          TextField(
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.white70),
            decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70),
                ),
                fillColor: Colors.white,
                filled: true),
          )
        ],
      ));
}
