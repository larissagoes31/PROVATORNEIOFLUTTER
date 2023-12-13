import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

import "Cad_Torneio.dart";
import "MyHomePage.dart";

class MyApp extends StatelessWidget {
  static const HOME = '/';
  static const CAD_TORNEIO = 'Cad_Torneio';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        HOME: (context) => MyHomePage(),
        CAD_TORNEIO: (context) => CadastroTorn(),
      },
    );
  }
}