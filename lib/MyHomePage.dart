import "package:flutter/material.dart";
import "package:prova_torneioflutter/API/Spring.dart";
import "package:prova_torneioflutter/List_usuario.dart";
import "package:prova_torneioflutter/MyApp.dart";
import "package:prova_torneioflutter/model/Torneio.dart";

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Torneio> list_Comp = [];

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => carregar_API());
  }

  void carregar_API() async {
    list_Comp = await Conect_Spring().getAll();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Torneio"),
        ),
        floatingActionButton: SizedBox(
          height: 80.0,
          width: 80.0,
          child: FittedBox(
            child: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                Navigator.pushNamed(context, MyApp.CAD_TORNEIO);
              },
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: list_Comp.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
                  onTap: () => {torneio(list_Comp[index])},
                  title: Text(list_Comp[index].comTxNome),
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

  torneio(Torneio torn) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => usuario(torneio: torn)));
  }
}
