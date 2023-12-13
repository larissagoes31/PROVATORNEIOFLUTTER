//import 'package:prova_torneioflutter/model/usuario.dart';
//import 'package:prova_torneioflutter/model/Torneio.dart';
//import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:prova_torneioflutter/List_usuario.dart';
import 'package:prova_torneioflutter/model/usuario.dart';

import '../List_usuario.dart';
import '../model/FormTorneio.dart';
import '../model/Torneio.dart';
import '../model/usuario.dart';
import 'package:prova_torneioflutter/model/FormTorneio.dart';

class Conect_Spring {
Future<List<Torneio>> getAll() async {
  var url = Uri.http("192.168.0.106:8080", '/torneio');

  var http;
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    List<Torneio> result =
    (jsonResponse as List).map((i) => Torneio.fromJson(i)).toList();
    return result;
  } else {
    throw Exception('Falha na requisição: ${response.statusCode}');
  }
}

    Future<List<usuario>> usuario(int id) async {
  var url = Uri.http("192.168.0.106:8080", '/usuario/${id}');

  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    List<usuario> result =
    (jsonResponse as List).map((i) => usuario.fromJson(i)).toList();
    return result;
  } else {
    throw Exception('Falha na requisição: ${response.statusCode}');
  }
}

Future<void> setComp(CadTorneio torn) async {
  var url = Uri.http("192.168.0.106:8080", '/cadastrar');
  final headers = {"Content-type": "application/json"};
  String corpo = convert.jsonEncode(torn.toJson());

  var response = await http.post(url, headers: headers, body: corpo);

  if (response.statusCode == 200) {
    print('Resposta: ${response.body}');
  } else {
    print('Código de status: ${response.statusCode}');
  }
}
}

}