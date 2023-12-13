import 'package:flutter/material.dart';

import 'MyHomePage.dart';

class PrincipalPage extends StatefulWidget{
  PrincipalPage();
  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}
class _PrincipalPageState extends State<PrincipalPage>{
  String cep = "";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(child: Text("Entrar"),
                onPressed: _entrar),
          ),
          Text(cep)
        ],
      ),
    );
  }

  _entrar() {
    //Navigator.of(context).pop();
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => MyHomePage(title: "OK"),)
    ).then((value) {
      setState(() {
        cep = value;
      });
    });
  }
}