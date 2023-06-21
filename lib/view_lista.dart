import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_teste/lista_canais.dart';
import 'package:video_teste/video_view.dart';

class ViewLista extends StatefulWidget {
  const ViewLista({super.key});

  @override
  State<ViewLista> createState() => _ViewListaState();
}

class _ViewListaState extends State<ViewLista> {
  var lista = ValueNotifier(<ListaCanais>[]);

  inistLista() {
    final data = ListaCanais.listaCanais;
    final resp = data.map((e) => ListaCanais.fromMap(e)).toList();

    lista.value = List.from(resp);
  }

  @override
  void initState() {
    super.initState();
    inistLista();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<List<ListaCanais>>(
        valueListenable: lista,
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.length,
            itemBuilder: (context, index) {
              var item = value[index];
              return ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPlayerApp(
                          link: item.link,
                          name: item.nome,
                        ),
                      )).then((value) {
                    setState(() {
                      SystemChrome.setPreferredOrientations([
                        DeviceOrientation.portraitUp,
                        DeviceOrientation.portraitDown,
                      ]);
                    });
                  });
                },
                title: Text(item.nome),
              );
            },
          );
        },
      ),
    );
  }
}
