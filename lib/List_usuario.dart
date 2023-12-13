import 'package:flutter/material.dart';
import 'package:prova_torneioflutter/API/Spring.dart';
import 'package:prova_torneioflutter/model/usuario.dart';
import 'package:prova_torneioflutter/model/Torneio.dart';

class usuario extends StatefulWidget {
  Torneio torneio;
  usuario({required this.torneio});

  @override
  State<usuario> createState() => _usuarioState();
}

class _usuarioState extends State<usuario> {
  List<usuario> list_Atletas = [];

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => carregar_API());
  }

  void carregar_API() async {
    var list_usuario = await Conect_Spring().usuario(widget.torneio.comNrId);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var list_usuario;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Lista de Usuário"),
        ),
        floatingActionButton: SizedBox(
          height: 80.0,
          width: 80.0,
          child: FittedBox(
            child: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {},
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: list_usuario.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
                  onTap: null,
                  title: Text(list_usuario[index].atlTxNome),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [],
                    ),
                  ),
                ));
          },
        ));
  }
}
