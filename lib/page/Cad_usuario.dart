import 'package:flutter/material.dart';
import 'package:prova_torneioflutter/API/Spring.dart';
import 'package:prova_torneioflutter/model/FormUsuario.dart';

class CadastroUsu extends StatefulWidget {
  const CadastroUsu({super.key});

  @override
  State<CadastroUsu> createState() => _CadastroUsuState();
}

class _CadastroUsuState extends State<CadastroUsu> {
  TextEditingController nome = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
              children: [Text("Cadastrar Competição")],
            )),
        body: Center(
            child: Column(children: [
              Container(
                  margin: EdgeInsets.all(10),
                  width: 350,
                  child: TextField(
                      controller: nome,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: "Nome da Competição",
                        labelStyle: const TextStyle(fontSize: 16),
                      ))),
              Column(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      salvarAtion();
                    },
                    icon: Icon(Icons.save),
                    label: Text('Salvar'),
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all<Size>(Size(300, 50))),
                  )
                ],
              )
            ])));
  }

  void salvarAtion() async {
    if (nome.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Por favor, preencha o campo."),
      ));
    } else {
      var Usu = CadUsuario(comTxNome: nome.text);
      await Conect_Spring().setComp(Usu);
      Navigator.pop(context);
    }
  }
}
